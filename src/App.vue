<script setup lang="ts">
import { ref } from 'vue'
import { Gavel, Scale, ShoppingCart, Users, Briefcase } from 'lucide-vue-next'

const mobileMenuOpen = ref(false)
const billing = ref<'monthly' | 'annual'>('monthly')

function formatPrice(value: number): string {
  return value.toLocaleString('pt-BR', {
    style: 'currency',
    currency: 'BRL',
  })
}
</script>

<template>
  <header class="site-header">
    <div class="container header-inner">
      <a href="#" class="logo" aria-label="ementa - início">
        <img src="/logo.png" alt="" class="logo-mark" />
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
        <span class="eyebrow">A IA com base nas decisões dos tribunais pátrios</span>
        <h1 class="hero-title">
          IA Jurídica Estratégica para Advogados (as)
        </h1>
        <p class="hero-subtitle">
          Elabore e revise peças processuais com nossa memória contextual,
          crie e exporte documentos, consulte jurisprudências através de
          fontes confiáveis, tudo em um ambiente seguro com criptografia de
          dados.
        </p>
        <div class="hero-cta">
          <a href="#preco" class="btn btn-primary btn-lg">COMECE GRÁTIS</a>
          <a href="#" class="btn btn-secondary btn-lg">Ver demonstração</a>
        </div>
        <div class="sources">
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
          <Gavel class="agent-icon" />
          <h3>Direito Penal</h3>
        </article>
        <article class="card agent-card">
          <Scale class="agent-icon" />
          <h3>Direito Civil</h3>
        </article>
        <article class="card agent-card">
          <ShoppingCart class="agent-icon" />
          <h3>Direito do Consumidor</h3>
        </article>
        <article class="card agent-card">
          <Users class="agent-icon" />
          <h3>Direito de Família</h3>
        </article>
        <article class="card agent-card">
          <Briefcase class="agent-icon" />
          <h3>Direito Trabalhista</h3>
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
            Seus dados, processos e informações pessoais dos representados estão protegidos.
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

        <div class="billing-switch" role="group" aria-label="Ciclo de pagamento">
          <button
            type="button"
            class="switch-option"
            :class="{ active: billing === 'monthly' }"
            @click="billing = 'monthly'"
          >
            Mensal
          </button>
          <button
            type="button"
            class="switch-option"
            :class="{ active: billing === 'annual' }"
            @click="billing = 'annual'"
          >
            Anual
          </button>
        </div>
      </div>
      <div class="container pricing-grid">
        <article class="card pricing-card">
          <span class="badge">10 dias grátis</span>
          <h3 class="plan-name">Plano Básico</h3>
          <p class="plan-desc">Para quem está começando com automação jurídica.</p>
          <div class="price">
            {{ formatPrice(billing === 'monthly' ? 69.9 : 69.9 * 12) }}<span>{{ billing === 'monthly' ? '/mês' : '/ano' }}</span>
          </div>
          <ul class="plan-features">
            <li>Acesso a agentes básicos (Civil, Trabalhista e Tributário)</li>
            <li>Criação de pastas</li>
            <li>Até 5 templates</li>
            <li>10 dias grátis para teste</li>
          </ul>
          <a href="#" class="btn btn-secondary btn-block">Assinar Básico</a>
        </article>
        <article class="card pricing-card featured">
          <span class="badge">Mais popular</span>
          <h3 class="plan-name">Plano Avançado</h3>
          <p class="plan-desc">Para advogados que precisam de mais especificidade.</p>
          <div class="price">
            {{ formatPrice(billing === 'monthly' ? 159.9 : 159.9 * 12) }}<span>{{ billing === 'monthly' ? '/mês' : '/ano' }}</span>
          </div>
          <ul class="plan-features">
            <li>Agentes específicos por área (em breve)</li>
            <li>Criação ilimitada de pastas</li>
            <li>Análise de arquivos por mês</li>
            <li>Templates ilimitados</li>
          </ul>
          <a href="#" class="btn btn-primary btn-block">Assinar Avançado</a>
        </article>
        <article class="card pricing-card">
          <h3 class="plan-name">Plano Empresarial</h3>
          <p class="plan-desc">Para escritórios com múltiplos profissionais.</p>
          <div class="price">Sob consulta</div>
          <ul class="plan-features">
            <li>Múltiplas contas sob demanda</li>
            <li>Mesmos acessos do Plano Avançado</li>
            <li>Valor diferenciado para equipes</li>
            <li>Gestão de assentos e faturamento</li>
          </ul>
          <a href="#" class="btn btn-secondary btn-block">Falar com vendas</a>
        </article>
      </div>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container footer-inner">
      <div class="footer-brand">
        <a href="#" class="logo" aria-label="ementa - início">
          <img src="/logo.png" alt="" class="logo-mark" />
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
  object-fit: cover;
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

.agent-icon {
  width: 3rem;
  height: 3rem;
  color: var(--primary);
  flex-shrink: 0;
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
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
  max-width: 1000px;
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
  flex: 1;
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

.billing-switch {
  display: inline-flex;
  gap: 0.25rem;
  margin-top: 1.5rem;
  padding: 0.25rem;
  border: 1px solid var(--border);
  border-radius: 999px;
}

.switch-option {
  background: transparent;
  border: none;
  border-radius: 999px;
  color: var(--text-70);
  cursor: pointer;
  font-size: 0.875rem;
  font-weight: 500;
  padding: 0.5rem 1rem;
  transition: background 0.15s, color 0.15s;
}

.switch-option:hover {
  color: var(--text);
}

.switch-option.active {
  background: var(--primary);
  color: var(--primary-text);
  font-weight: 600;
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
