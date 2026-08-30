# syntax=docker/dockerfile:1

# ---- Stage 1: build ----
FROM node:22-alpine AS builder

WORKDIR /app

# Instala dependências primeiro para aproveitar cache de camadas
COPY package.json package-lock.json ./
RUN npm ci

# Copia o restante do código e gera o build de produção
COPY . .
RUN npm run build

# ---- Stage 2: runtime ----
FROM nginx:1.27-alpine-slim AS runtime

# Remove config default e usa a nossa (SPA fallback + gzip)
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1:80/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
