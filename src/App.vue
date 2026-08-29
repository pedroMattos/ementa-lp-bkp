<script setup lang="ts">
import TheHeader from './components/TheHeader.vue'
import HeroSection from './components/HeroSection.vue'
import SectionProblem from './components/SectionProblem.vue'
import SectionComoFunciona from './components/SectionComoFunciona.vue'
import SectionProduto from './components/SectionProduto.vue'
import SectionVerification from './components/SectionVerification.vue'
import SectionEfficiency from './components/SectionEfficiency.vue'
import SectionParaQuem from './components/SectionParaQuem.vue'
import SectionPrompts from './components/SectionPrompts.vue'
import SectionResponsibility from './components/SectionResponsibility.vue'
import SectionFAQ from './components/SectionFAQ.vue'
import SectionCTA from './components/SectionCTA.vue'
import TheFooter from './components/TheFooter.vue'
</script>

<template>
  <div id="topo" class="min-h-screen bg-background">
    <TheHeader />
    <main>
    <HeroSection />
    <SectionProblem />
    <SectionComoFunciona />
    <SectionProduto />
    <SectionVerification />
    <SectionEfficiency />
    <SectionParaQuem />
    <SectionPrompts />
    <SectionResponsibility />
    <SectionFAQ />
    <SectionCTA />
    </main>
  </div>
  <TheFooter />
</template>

<style>
/* estilos globais em /public/clone-styles.css */
</style>
