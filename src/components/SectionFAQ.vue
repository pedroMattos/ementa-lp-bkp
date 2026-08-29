<script setup lang="ts">
import { ref } from 'vue'

const faqs = ref([
  { q: 'O que é o Ementa?', a: 'O Ementa é um agente de inteligência artificial voltado à pesquisa e à análise de informações jurídicas no contexto do Direito brasileiro. Ele permite pesquisar legislação, jurisprudência e decisões judiciais utilizando linguagem natural e consultar as fontes usadas na resposta.', open: false },
  { q: 'O Ementa substitui um advogado?', a: 'Não. O Ementa é uma ferramenta de apoio à pesquisa e análise jurídica. A interpretação e a decisão profissional continuam sob responsabilidade do usuário.', open: false },
  { q: 'Quais fontes jurídicas o Ementa utiliza?', a: 'O Ementa trabalha com legislação, jurisprudência e fontes jurídicas públicas. As referências utilizadas em cada resposta ficam disponíveis para conferência.', open: false },
  { q: 'O Ementa pesquisa jurisprudência?', a: 'Sim. A pesquisa jurisprudencial é um dos usos principais: você descreve o tema em linguagem natural e o Ementa localiza entendimentos e decisões relacionadas, indicando as fontes consultadas.', open: false },
  { q: 'Posso utilizar o Ementa para estudar?', a: 'Sim. Estudantes de Direito e concurseiros podem usar o Ementa como apoio para pesquisar temas, revisar conteúdos e compreender decisões e entendimentos.', open: false },
  { q: 'O Ementa pode ajudar na elaboração de documentos?', a: 'O Ementa ajuda a reunir e organizar informações jurídicas que servem de apoio à redação de documentos e contratos. A redação final, a revisão e a responsabilidade pelo conteúdo continuam sendo do usuário.', open: false },
  { q: 'O Ementa é gratuito?', a: 'As condições de acesso ainda estão sendo definidas nesta fase de pré-lançamento. Entre na lista de acesso para receber as informações assim que forem publicadas.', open: false },
  { q: 'Como posso testar?', a: 'O Ementa está em pré-lançamento. Você pode entrar na lista de acesso pelo botão "Quero testar o Ementa" e será avisado quando novos acessos forem liberados.', open: false },
])
</script>

<template>
<section id="faq" class="mx-auto max-w-[1200px] scroll-mt-20 px-4 py-16 sm:px-8 sm:py-24 border-t border-border"><div class="max-w-2xl"><p class="label-mono mb-4">Perguntas frequentes</p><h2 class="font-display text-3xl font-bold sm:text-4xl">Dúvidas sobre o Ementa.</h2></div><div class="mt-10">
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[0].open"
        @click="faqs[0].open = !faqs[0].open"
      >
        <h3 class="pr-4">O que é o Ementa?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[0].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[0].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">O Ementa é um agente de inteligência artificial voltado à pesquisa e à análise de informações jurídicas no contexto do Direito brasileiro. Ele permite pesquisar legislação, jurisprudência e decisões judiciais utilizando linguagem natural e consultar as fontes usadas na resposta.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[1].open"
        @click="faqs[1].open = !faqs[1].open"
      >
        <h3 class="pr-4">O Ementa substitui um advogado?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[1].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[1].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">Não. O Ementa é uma ferramenta de apoio à pesquisa e análise jurídica. A interpretação e a decisão profissional continuam sob responsabilidade do usuário.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[2].open"
        @click="faqs[2].open = !faqs[2].open"
      >
        <h3 class="pr-4">Quais fontes jurídicas o Ementa utiliza?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[2].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[2].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">O Ementa trabalha com legislação, jurisprudência e fontes jurídicas públicas. As referências utilizadas em cada resposta ficam disponíveis para conferência.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[3].open"
        @click="faqs[3].open = !faqs[3].open"
      >
        <h3 class="pr-4">O Ementa pesquisa jurisprudência?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[3].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[3].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">Sim. A pesquisa jurisprudencial é um dos usos principais: você descreve o tema em linguagem natural e o Ementa localiza entendimentos e decisões relacionadas, indicando as fontes consultadas.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[4].open"
        @click="faqs[4].open = !faqs[4].open"
      >
        <h3 class="pr-4">Posso utilizar o Ementa para estudar?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[4].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[4].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">Sim. Estudantes de Direito e concurseiros podem usar o Ementa como apoio para pesquisar temas, revisar conteúdos e compreender decisões e entendimentos.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[5].open"
        @click="faqs[5].open = !faqs[5].open"
      >
        <h3 class="pr-4">O Ementa pode ajudar na elaboração de documentos?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[5].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[5].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">O Ementa ajuda a reunir e organizar informações jurídicas que servem de apoio à redação de documentos e contratos. A redação final, a revisão e a responsabilidade pelo conteúdo continuam sendo do usuário.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[6].open"
        @click="faqs[6].open = !faqs[6].open"
      >
        <h3 class="pr-4">O Ementa é gratuito?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[6].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[6].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">As condições de acesso ainda estão sendo definidas nesta fase de pré-lançamento. Entre na lista de acesso para receber as informações assim que forem publicadas.</p>
      </div>
    </div>
    <div class="border-b border-border">
      <button
        type="button"
        class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
        :aria-expanded="faqs[7].open"
        @click="faqs[7].open = !faqs[7].open"
      >
        <h3 class="pr-4">Como posso testar?</h3>
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': faqs[7].open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
      </button>
      <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': faqs[7].open }">
        <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">O Ementa está em pré-lançamento. Você pode entrar na lista de acesso pelo botão "Quero testar o Ementa" e será avisado quando novos acessos forem liberados.</p>
      </div>
    </div>
</div></section>
</template>

<style>
.faq-answer {
  display: grid;
  grid-template-rows: minmax(0, 0fr);
  transition: grid-template-rows 0.35s cubic-bezier(0.23, 1, 0.32, 1);
}
.faq-answer.is-open {
  grid-template-rows: minmax(0, 1fr);
  padding-bottom: 1rem;
}
.faq-answer > p {
  min-height: 0;
}
</style>
