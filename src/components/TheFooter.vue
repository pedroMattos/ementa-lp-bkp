<script setup lang="ts"></script>

<template>
  <footer class="border-t border-border">
    <div class="mx-auto max-w-[1200px] px-4 py-12 sm:px-8">
      <div
        class="grid gap-10 md:grid-cols-[minmax(0,1.4fr)_repeat(3,minmax(0,1fr))]"
      >
        <div class="min-w-0">
          <div class="flex items-center gap-2">
            <img
              src="/logo.png"
              alt="Novatio"
              class="h-8 w-8 shrink-0 rounded-sm object-cover"
            /><span class="font-display text-lg font-extrabold">Novatio</span>
          </div>
          <p
            class="mt-4 max-w-sm text-sm leading-relaxed text-muted-foreground"
          >
            Inteligência artificial para pesquisa e análise de informações
            jurídicas no Direito brasileiro.
          </p>
        </div>
        <nav aria-label="Produto">
          <h2 class="label-mono">Produto</h2>
          <ul class="mt-3 space-y-2 text-sm text-muted-foreground">
            <li>
              <a href="#produto" class="hover:text-foreground">Visão geral</a>
            </li>
            <li>
              <a href="#recursos" class="hover:text-foreground">Recursos</a>
            </li>
            <li>
              <a href="#como-funciona" class="hover:text-foreground"
                >Como funciona</a
              >
            </li>
          </ul>
        </nav>
        <nav aria-label="Suporte">
          <h2 class="label-mono">Suporte</h2>
          <ul class="mt-3 space-y-2 text-sm text-muted-foreground">
            <li><a href="#faq" class="hover:text-foreground">FAQ</a></li>
            <li>
              <a href="mailto:contato@novatio.app" class="hover:text-foreground"
                >Contato</a
              >
            </li>
          </ul>
        </nav>
        <nav aria-label="Legal">
          <h2 class="label-mono">Legal</h2>
          <ul class="mt-3 space-y-2 text-sm text-muted-foreground">
            <li>
              <a href="/termos" class="hover:text-foreground">Termos de Uso</a>
            </li>
            <li>
              <a href="/privacidade" class="hover:text-foreground"
                >Política de Privacidade</a
              >
            </li>
          </ul>
        </nav>
      </div>
      <div
        class="mt-10 border-t border-border pt-6 text-xs leading-relaxed text-muted-foreground"
      >
        <p>
          O Novatio é uma ferramenta de apoio e não substitui a análise ou
          orientação de profissional habilitado.
        </p>
        <p class="mt-2">© 2026 Novatio. Todos os direitos reservados.</p>
      </div>
    </div>
  </footer>
</template>
