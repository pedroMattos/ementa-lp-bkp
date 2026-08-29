<script setup lang="ts">
import { ref } from 'vue'

interface FaqItem {
  q: string
  a: string
  open: boolean
}

const faqs = ref<FaqItem[]>([
  { q: "O que \u00e9 o Ementa?", a: "O Ementa \u00e9 um agente de intelig\u00eancia artificial voltado \u00e0 pesquisa e \u00e0 an\u00e1lise de informa\u00e7\u00f5es jur\u00eddicas no contexto do Direito brasileiro. Ele permite pesquisar legisla\u00e7\u00e3o, jurisprud\u00eancia e decis\u00f5es judiciais utilizando linguagem natural e consultar as fontes usadas na resposta.", open: false },
  { q: "O Ementa substitui um advogado?", a: "N\u00e3o. O Ementa \u00e9 uma ferramenta de apoio \u00e0 pesquisa e an\u00e1lise jur\u00eddica. A interpreta\u00e7\u00e3o e a decis\u00e3o profissional continuam sob responsabilidade do usu\u00e1rio.", open: false },
  { q: "Quais fontes jur\u00eddicas o Ementa utiliza?", a: "O Ementa trabalha com legisla\u00e7\u00e3o, jurisprud\u00eancia e fontes jur\u00eddicas p\u00fablicas. As refer\u00eancias utilizadas em cada resposta ficam dispon\u00edveis para confer\u00eancia.", open: false },
  { q: "O Ementa pesquisa jurisprud\u00eancia?", a: "Sim. A pesquisa jurisprudencial \u00e9 um dos usos principais: voc\u00ea descreve o tema em linguagem natural e o Ementa localiza entendimentos e decis\u00f5es relacionadas, indicando as fontes consultadas.", open: false },
  { q: "Posso utilizar o Ementa para estudar?", a: "Sim. Estudantes de Direito e concurseiros podem usar o Ementa como apoio para pesquisar temas, revisar conte\u00fados e compreender decis\u00f5es e entendimentos.", open: false },
  { q: "O Ementa pode ajudar na elabora\u00e7\u00e3o de documentos?", a: "O Ementa ajuda a reunir e organizar informa\u00e7\u00f5es jur\u00eddicas que servem de apoio \u00e0 reda\u00e7\u00e3o de documentos e contratos. A reda\u00e7\u00e3o final, a revis\u00e3o e a responsabilidade pelo conte\u00fado continuam sendo do usu\u00e1rio.", open: false },
  { q: "O Ementa \u00e9 gratuito?", a: "As condi\u00e7\u00f5es de acesso ainda est\u00e3o sendo definidas nesta fase de pr\u00e9-lan\u00e7amento. Entre na lista de acesso para receber as informa\u00e7\u00f5es assim que forem publicadas.", open: false },
  { q: "Como posso testar?", a: "O Ementa est\u00e1 em pr\u00e9-lan\u00e7amento. Voc\u00ea pode entrar na lista de acesso pelo bot\u00e3o \"Quero testar o Ementa\" e ser\u00e1 avisado quando novos acessos forem liberados.", open: false },
])
</script>

<template>
<section id="faq" class="mx-auto max-w-[1200px] scroll-mt-20 px-4 py-16 sm:px-8 sm:py-24 border-t border-border"><div class="max-w-2xl"><p class="label-mono mb-4">Perguntas frequentes</p><h2 class="font-display text-3xl font-bold sm:text-4xl">Dúvidas sobre o Ementa.</h2></div><div class="mt-10">
  <div
    v-for="(item, i) in faqs"
    :key="i"
    class="border-b border-border"
  >
    <button
      type="button"
      class="flex w-full items-center justify-between py-4 text-left font-display text-base font-semibold transition-all hover:no-underline"
      :aria-expanded="item.open"
      @click="item.open = !item.open"
    >
      <h3 class="pr-4">{ item.q }</h3>
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" :class="{ 'rotate-180': item.open }" aria-hidden="true"><path d="m6 9 6 6 6-6"></path></svg>
    </button>
    <div class="faq-answer overflow-hidden text-sm" :class="{ 'is-open': item.open }">
      <p class="text-muted-foreground leading-relaxed min-h-0 overflow-hidden">{ item.a }</p>
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
