<script setup lang="ts">
import { ref } from 'vue'

const mobileMenuOpen = ref(false)
</script>

<template>
  <header class="site-header">
    <div class="container header-inner">
      <a href="#" class="logo" aria-label="ementa - início">
        <span class="logo-mark">E</span>
        <span class="logo-text">ementa</span>
      </a>
      <button
        class="menu-toggle"
        aria-label="Abrir menu"
        @click="mobileMenuOpen = !mobileMenuOpen"
      >
        <svg
          v-if="!mobileMenuOpen"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          aria-hidden="true"
        >
          <line x1="3" y1="6" x2="21" y2="6" />
          <line x1="3" y1="12" x2="21" y2="12" />
          <line x1="3" y1="18" x2="21" y2="18" />
        </svg>
        <svg
          v-else
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          aria-hidden="true"
        >
          <line x1="18" y1="6" x2="6" y2="18" />
          <line x1="6" y1="6" x2="18" y2="18" />
        </svg>
      </button>
      <nav class="main-nav" :class="{ open: mobileMenuOpen }">
        <a href="#home" @click="mobileMenuOpen = false">Home</a>
        <a href="#beneficios" @click="mobileMenuOpen = false">Benefícios</a>
        <a href="#preco" @click="mobileMenuOpen = false">Preço</a>
        <a href="#faq" @click="mobileMenuOpen = false">FAQ</a>
        <div class="nav-actions">
          <a href="#" class="btn btn-tertiary">Login</a>
          <a href="#preco" class="btn btn-primary">Começar</a>
        </div>
      </nav>
    </div>
  </header>

  <main>
    <section id="home" class="hero">
      <div class="container hero-inner">
        <span class="eyebrow">A IA com base em tribunais</span>
        <h1 class="hero-title">
          A IA Jurídica Definitiva para Advogados Exigentes.
        </h1>
        <p class="hero-subtitle">
          Elabore e revise petições com nossa memória contextual, consulte as
          principais fontes jurisprudenciais e crie documentos jurídicos com
          precisão. Tudo em um só ambiente, sem alternar entre aplicações.
        </p>
        <div class="hero-cta">
          <a href="#preco" class="btn btn-primary btn-lg">COMECE GRÁTIS</a>
          <a href="#" class="btn btn-secondary btn-lg">Ver demonstração</a>
        </div>
        <div class="sources">
          <span class="sources-label">Fontes de dados tributários e judiciais</span>
          <ul class="sources-list">
            <li>STF</li>
            <li>STJ</li>
            <li>TSE</li>
            <li>CNJ</li>
            <li>Jurisprudência</li>
          </ul>
        </div>
      </div>
    </section>

    <section id="beneficios" class="section agents">
      <div class="container section-header">
        <h2 class="section-title">Agentes Especializados</h2>
        <p class="section-subtitle">
          Atuamos sobre as diversas áreas do Direito. Selecione o agente ideal
          para cada caso e obtenha respostas fundamentadas com nossa memória
          processual e legislativa.
        </p>
      </div>
      <div class="container cards-grid agents-grid">
        <article class="card agent-card">
          <span class="tag">Oficial</span>
          <h3>Direito Civil e Geral</h3>
          <p>
            Contratos, responsabilidade civil, direito das pessoas e muito
            mais. Respostas precisas e fundamentadas.
          </p>
          <a href="#" class="link-arrow">Meu Agente →</a>
        </article>
        <article class="card agent-card">
          <span class="tag">Contencioso</span>
          <h3>Direito do Consumidor</h3>
          <p>
            Defenda os direitos do consumidor com análise de relações de
            consumo, resoluções de conflitos e ações.
          </p>
          <a href="#" class="link-arrow">Meu Agente →</a>
        </article>
        <article class="card agent-card">
          <span class="tag">Trabalhista</span>
          <h3>Direito Trabalhista</h3>
          <p>
            Atuação em reclamações, acidentes de trabalho, contratos e
            rescisões com base na CLT e jurisprudência.
          </p>
          <a href="#" class="link-arrow">Meu Agente →</a>
        </article>
        <article class="card agent-card wide">
          <div class="wide-content">
            <h3>Processo na sua maior amplitude?</h3>
            <p>
              Explore todos os agentes disponíveis para atender qualquer área do
              Direito e escolha o que melhor se encaixa na sua prática.
            </p>
            <a href="#" class="link-arrow">Ver todas as Categorias →</a>
          </div>
          <span class="count-badge">80+ Categorias</span>
        </article>
      </div>
    </section>

    <section class="section features">
      <div class="container section-header centered">
        <h2 class="section-title">Funcionalidades Essenciais</h2>
        <p class="section-subtitle">
          Desenvolvida para simplificar o fluxo de trabalho e oferecer segurança
          jurídica no dia a dia.
        </p>
      </div>
      <div class="container cards-grid features-grid">
        <article class="card feature-card">
          <h3>Petições com Templates Próprios</h3>
          <p>
            Tenha acesso aos templates personalizados da sua equipe. A IA
            utiliza sua estrutura como base para gerar peças iniciais, recursos
            e manifestações com a voz do seu escritório.
          </p>
        </article>
        <article class="card feature-card">
          <h3>Entidades Jurídicas e Segurança</h3>
          <p>
            Entendimento de casos e entidades jurídicas automatizado, com
            rastreamento de interesses recorrentes, jurisdicionados e posições
            nos tribunais.
          </p>
        </article>
        <article class="card feature-card">
          <h3>Criação de Documentos e Contratos</h3>
          <p>
            Gere contratos, petições, pareceres e notificações em minutos.
            Mantenha a coerência terminológica e a conformidade com as normas
            aplicáveis.
          </p>
        </article>
      </div>
    </section>

    <section class="section security">
      <div class="container security-inner">
        <div class="security-content">
          <span class="eyebrow">LGPD & Segurança</span>
          <h2 class="section-title">
            Privacidade e Segurança em Primeiro Lugar
          </h2>
          <p class="section-subtitle">
            Seus dados, processos e informações de clientes estão protegidos.
            Nosso sistema utiliza criptografia, controle de acesso e
            conformidade com a LGPD.
          </p>
          <ul class="security-list">
            <li>
              <span class="check">1</span>
              <div>
                <h4>Criptografia e Acesso Controlado</h4>
                <p>
                  Camadas de criptografia em trânsito e em repouso, com
                  autenticação multifatorial e gestão granular de permissões.
                </p>
              </div>
            </li>
            <li>
              <span class="check">2</span>
              <div>
                <h4>Conformidade com a LGPD</h4>
                <p>
                  Processos alinhados à Lei Geral de Proteção de Dados, com
                  anonimização e controles de retenção.
                </p>
              </div>
            </li>
            <li>
              <span class="check">3</span>
              <div>
                <h4>Soberania dos Dados</h4>
                <p>
                  Você mantém a titularidade das informações. Não vendemos
                  dados nem utilizamos-os para treinar modelos sem
                  consentimento.
                </p>
              </div>
            </li>
          </ul>
        </div>
        <div class="security-visual">
          <svg
            width="80"
            height="80"
            viewBox="0 0 24 24"
            fill="none"
            stroke="#F4A261"
            stroke-width="1.5"
            stroke-linecap="round"
            stroke-linejoin="round"
            aria-hidden="true"
          >
            <rect x="5" y="11" width="14" height="10" rx="2" ry="2" />
            <path d="M7 11V7a5 5 0 0 1 10 0v4" />
          </svg>
        </div>
      </div>
    </section>

    <section id="preco" class="section pricing">
      <div class="container section-header centered">
        <h2 class="section-title">Investimento em Produtividade</h2>
        <p class="section-subtitle">
          Planos pensados para advogados autônomos e escritórios que querem
          ganhar escala sem perder qualidade.
        </p>
      </div>
      <div class="container pricing-grid">
        <article class="card pricing-card">
          <h3 class="plan-name">Plano Individual</h3>
          <p class="plan-desc">Ideal para advogados autônomos e pequenas demandas.</p>
          <div class="price">R$ 197<span>/mês</span></div>
          <ul class="plan-features">
            <li>Acesso a todos os agentes</li>
            <li>Consultas ilimitadas</li>
            <li>Memória de documentos e clientes</li>
            <li>Suporte por e-mail</li>
          </ul>
          <a href="#" class="btn btn-secondary btn-block">Assinar Individual</a>
        </article>
        <article class="card pricing-card featured">
          <span class="badge">Mais popular</span>
          <h3 class="plan-name">Plano Escritório</h3>
          <p class="plan-desc">Para equipes que precisam colaborar e escalar.</p>
          <div class="price">R$ 497<span>/mês</span></div>
          <ul class="plan-features">
            <li>Tudo do Individual</li>
            <li>Até 10 assentos (comprar mais)</li>
            <li>Compartilhamento de templates e memória</li>
            <li>Revisor de documentos avançado</li>
            <li>Suporte prioritário</li>
          </ul>
          <a href="#" class="btn btn-primary btn-block">Assinar Escritório</a>
        </article>
      </div>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container footer-inner">
      <div class="footer-brand">
        <a href="#" class="logo" aria-label="ementa - início">
          <span class="logo-mark">E</span>
          <span class="logo-text">ementa</span>
        </a>
        <p>A IA jurídica que moderniza a rotina dos advogados exigentes.</p>
      </div>
      <div class="footer-links" id="faq">
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
        <a href="#">LGPD Compliance</a>
        <a href="#">Contact Support</a>
        <a href="#">Menu Social</a>
      </div>
    </div>
  </footer>
</template>

<style>
:root {
  --bg: #0F0F0F;
  --surface: #1A1A1A;
  --surface-2: #2C2C2E;
  --surface-3: #353534;
  --border: #3F3F46;
  --primary: #F4A261;
  --primary-text: #0F0F0F;
  --text: #FFFFFF;
  --text-90: rgba(255, 255, 255, 0.9);
  --text-70: rgba(255, 255, 255, 0.7);
  --text-muted: #A1A1AA;
  --max-width: 1200px;
  --radius: 0.5rem;
  --gutter: 24px;
}

* {
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  background: var(--bg);
  color: var(--text-90);
  line-height: 1.6;
}

h1,
h2,
h3,
h4 {
  font-family: 'Manrope', sans-serif;
  color: var(--text);
  margin: 0;
}

p {
  margin: 0;
}

a {
  color: inherit;
  text-decoration: none;
}

ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

.container {
  width: 100%;
  max-width: var(--max-width);
  margin: 0 auto;
  padding: 0 var(--gutter);
}

/* Buttons */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0.625rem 1.25rem;
  border-radius: 0.25rem;
  font-family: 'Inter', sans-serif;
  font-weight: 600;
  font-size: 0.875rem;
  line-height: 1.25rem;
  transition: transform 0.15s, opacity 0.15s, box-shadow 0.15s;
  white-space: nowrap;
}

.btn:hover {
  transform: translateY(-1px);
}

.btn-primary {
  background: var(--primary);
  color: var(--primary-text);
}

.btn-secondary {
  background: transparent;
  border: 1px solid var(--border);
  color: var(--text);
}

.btn-tertiary {
  background: transparent;
  color: var(--text-muted);
}

.btn-lg {
  padding: 0.875rem 1.75rem;
  font-size: 1rem;
}

.btn-block {
  width: 100%;
}

/* Header */
.site-header {
  position: sticky;
  top: 0;
  z-index: 50;
  border-bottom: 1px solid var(--border);
  background: rgba(15, 15, 15, 0.9);
  backdrop-filter: blur(10px);
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 72px;
}

.logo {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  font-family: 'Manrope', sans-serif;
  font-weight: 700;
  font-size: 1.25rem;
}

.logo-mark {
  width: 28px;
  height: 28px;
  border-radius: 0.25rem;
  background: var(--primary);
  color: var(--primary-text);
  display: grid;
  place-items: center;
  font-size: 0.875rem;
}

.main-nav {
  display: flex;
  align-items: center;
  gap: 2rem;
}

.main-nav a {
  font-size: 0.875rem;
  color: var(--text-70);
}

.main-nav a:hover {
  color: var(--text);
}

.nav-actions {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  margin-left: 1rem;
}

.menu-toggle {
  display: none;
  background: none;
  border: none;
  color: var(--text);
  cursor: pointer;
  padding: 0.5rem;
}

/* Hero */
.hero {
  padding: 96px 0 64px;
  text-align: center;
}

.eyebrow {
  display: inline-block;
  padding: 0.375rem 0.75rem;
  border: 1px solid var(--border);
  border-radius: 999px;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  color: var(--text-muted);
  margin-bottom: 1.5rem;
}

.hero-title {
  max-width: 800px;
  margin: 0 auto 1.5rem;
  font-size: clamp(2rem, 5vw, 3rem);
  line-height: 1.15;
  font-weight: 700;
}

.hero-subtitle {
  max-width: 640px;
  margin: 0 auto 2rem;
  color: var(--text-70);
  font-size: 1.0625rem;
  line-height: 1.7;
}

.hero-cta {
  display: flex;
  gap: 1rem;
  justify-content: center;
  margin-bottom: 4rem;
  flex-wrap: wrap;
}

.sources {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
}

.sources-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.625rem;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--text-muted);
}

.sources-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 0.75rem;
}

.sources-list li {
  padding: 0.5rem 1rem;
  border: 1px solid var(--border);
  border-radius: 999px;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  color: var(--text-70);
}

/* Sections */
.section {
  padding: 80px 0;
}

.section-header {
  margin-bottom: 3rem;
}

.section-header.centered {
  text-align: center;
}

.section-title {
  font-size: clamp(1.75rem, 3vw, 2.25rem);
  font-weight: 600;
  line-height: 1.25;
  margin-bottom: 1rem;
}

.section-subtitle {
  max-width: 600px;
  color: var(--text-70);
  font-size: 1rem;
}

.section-header.centered .section-subtitle {
  margin: 0 auto;
}

/* Cards */
.cards-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
}

.card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

/* Agentes */
.agents-grid .agent-card.wide {
  grid-column: 1 / -1;
  display: grid;
  grid-template-columns: 1fr auto;
  align-items: center;
  gap: 1.5rem;
}

.wide-content {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.tag {
  align-self: flex-start;
  display: inline-block;
  padding: 0.25rem 0.5rem;
  border-radius: 0.25rem;
  background: rgba(244, 162, 97, 0.15);
  border: 1px solid rgba(244, 162, 97, 0.4);
  color: var(--primary);
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.625rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.agent-card h3 {
  font-size: 1.125rem;
  font-weight: 600;
}

.agent-card p {
  color: var(--text-70);
  font-size: 0.9375rem;
  line-height: 1.6;
}

.link-arrow {
  margin-top: auto;
  color: var(--primary);
  font-weight: 600;
  font-size: 0.875rem;
}

.count-badge {
  padding: 0.375rem 0.75rem;
  background: var(--surface-2);
  border: 1px solid var(--border);
  border-radius: 0.25rem;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.625rem;
  color: var(--text);
  white-space: nowrap;
}

/* Features */
.feature-card h3 {
  font-size: 1.125rem;
  font-weight: 600;
}

.feature-card p {
  color: var(--text-70);
  font-size: 0.9375rem;
  line-height: 1.6;
}

/* Security */
.security-inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.security-list {
  margin-top: 2rem;
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.security-list li {
  display: flex;
  gap: 1rem;
}

.check {
  flex-shrink: 0;
  width: 28px;
  height: 28px;
  display: grid;
  place-items: center;
  border-radius: 50%;
  background: rgba(244, 162, 97, 0.15);
  color: var(--primary);
  font-size: 0.75rem;
  font-weight: 700;
  border: 1px solid rgba(244, 162, 97, 0.4);
}

.security-list h4 {
  font-size: 1rem;
  margin-bottom: 0.25rem;
}

.security-list p {
  color: var(--text-70);
  font-size: 0.875rem;
  line-height: 1.5;
}

.security-visual {
  display: grid;
  place-items: center;
  border: 1px solid var(--border);
  border-radius: var(--radius);
  background: var(--surface);
  min-height: 320px;
}

/* Pricing */
.pricing-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1.5rem;
  max-width: 800px;
  margin: 0 auto;
}

.pricing-card {
  position: relative;
}

.pricing-card.featured {
  border-color: var(--primary);
  background: linear-gradient(180deg, rgba(244, 162, 97, 0.08) 0%, var(--surface) 100%);
}

.badge {
  position: absolute;
  top: -0.75rem;
  left: 50%;
  transform: translateX(-50%);
  background: var(--primary);
  color: var(--primary-text);
  padding: 0.25rem 0.75rem;
  border-radius: 999px;
  font-size: 0.75rem;
  font-weight: 600;
}

.plan-name {
  font-size: 1.25rem;
  font-weight: 600;
}

.plan-desc {
  color: var(--text-70);
  font-size: 0.875rem;
}

.price {
  font-family: 'Manrope', sans-serif;
  font-size: 2.5rem;
  font-weight: 700;
  color: var(--text);
}

.price span {
  font-size: 1rem;
  font-weight: 400;
  color: var(--text-muted);
}

.plan-features {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
  margin: 1rem 0 1.5rem;
}

.plan-features li {
  position: relative;
  padding-left: 1.5rem;
  color: var(--text-70);
  font-size: 0.9375rem;
}

.plan-features li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: var(--primary);
  font-weight: 700;
}

/* Footer */
.site-footer {
  border-top: 1px solid var(--border);
  padding: 48px 0;
}

.footer-inner {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1.5rem;
  text-align: center;
}

.footer-brand {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.5rem;
}

.footer-brand p {
  color: var(--text-muted);
  font-size: 0.875rem;
}

.footer-links {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 1.5rem;
}

.footer-links a {
  color: var(--text-70);
  font-size: 0.875rem;
}

.footer-links a:hover {
  color: var(--text);
}

/* Responsive */
@media (max-width: 1024px) {
  .cards-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .security-inner {
    gap: 2.5rem;
  }
}

@media (max-width: 768px) {
  .menu-toggle {
    display: block;
  }

  .main-nav {
    position: absolute;
    top: 72px;
    left: 0;
    right: 0;
    flex-direction: column;
    align-items: flex-start;
    background: var(--bg);
    border-bottom: 1px solid var(--border);
    padding: 1.5rem var(--gutter);
    gap: 1rem;
    transform: translateY(-110%);
    opacity: 0;
    pointer-events: none;
    transition: transform 0.25s, opacity 0.25s;
  }

  .main-nav.open {
    transform: translateY(0);
    opacity: 1;
    pointer-events: auto;
  }

  .nav-actions {
    margin-left: 0;
    flex-direction: column;
    width: 100%;
  }

  .hero {
    padding: 64px 0 48px;
  }

  .hero-cta {
    flex-direction: column;
    align-items: center;
  }

  .cards-grid,
  .security-inner,
  .pricing-grid {
    grid-template-columns: 1fr;
  }

  .agents-grid .agent-card.wide {
    grid-column: 1 / -1;
    grid-template-columns: 1fr;
  }
}
</style>
