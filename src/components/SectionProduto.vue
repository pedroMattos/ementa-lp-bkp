<script setup lang="ts"></script>

<template>
  <section
    id="produto"
    class="mx-auto max-w-[1200px] scroll-mt-20 px-4 py-16 sm:px-8 sm:py-24 border-t border-border"
  >
    <div class="max-w-2xl">
      <p class="label-mono mb-4">O produto</p>
      <h2 class="font-display text-3xl font-bold sm:text-4xl">
        Uma nova forma de pesquisar o Direito.
      </h2>
      <p class="mt-4 text-muted-foreground">
        Pesquisa, jurisprudência, legislação e análise em uma única interface,
        com as fontes sempre à mão.
      </p>
    </div>
    <div class="mt-10 grid gap-8 lg:grid-cols-[minmax(0,340px)_minmax(0,1fr)]">
      <div id="recursos" class="scroll-mt-20 space-y-3">
        <article class="surface-card flex gap-4 p-5">
          <span
            class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="lucide lucide-search h-4.5 w-4.5"
              aria-hidden="true"
            >
              <path d="m21 21-4.34-4.34"></path>
              <circle cx="11" cy="11" r="8"></circle></svg
          ></span>
          <div class="min-w-0">
            <h3 class="font-display text-base font-semibold">
              Pesquisa jurídica
            </h3>
            <p class="mt-1 text-sm leading-relaxed text-muted-foreground">
              Pesquise utilizando linguagem natural.
            </p>
          </div>
        </article>
        <article class="surface-card flex gap-4 p-5">
          <span
            class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="lucide lucide-scale h-4.5 w-4.5"
              aria-hidden="true"
            >
              <path d="M12 3v18"></path>
              <path d="m19 8 3 8a5 5 0 0 1-6 0zV7"></path>
              <path d="M3 7h1a17 17 0 0 0 8-2 17 17 0 0 0 8 2h1"></path>
              <path d="m5 8 3 8a5 5 0 0 1-6 0zV7"></path>
              <path d="M7 21h10"></path></svg
          ></span>
          <div class="min-w-0">
            <h3 class="font-display text-base font-semibold">Jurisprudência</h3>
            <p class="mt-1 text-sm leading-relaxed text-muted-foreground">
              Encontre decisões e entendimentos relevantes.
            </p>
          </div>
        </article>
        <article class="surface-card flex gap-4 p-5">
          <span
            class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="lucide lucide-book-open h-4.5 w-4.5"
              aria-hidden="true"
            >
              <path d="M12 7v14"></path>
              <path
                d="M3 18a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"
              ></path></svg
          ></span>
          <div class="min-w-0">
            <h3 class="font-display text-base font-semibold">Legislação</h3>
            <p class="mt-1 text-sm leading-relaxed text-muted-foreground">
              Consulte informações legislativas.
            </p>
          </div>
        </article>
        <article class="surface-card flex gap-4 p-5">
          <span
            class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="lucide lucide-layers h-4.5 w-4.5"
              aria-hidden="true"
            >
              <path
                d="M12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83z"
              ></path>
              <path
                d="M2 12a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9A1 1 0 0 0 22 12"
              ></path>
              <path
                d="M2 17a1 1 0 0 0 .58.91l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9A1 1 0 0 0 22 17"
              ></path></svg
          ></span>
          <div class="min-w-0">
            <h3 class="font-display text-base font-semibold">Análise</h3>
            <p class="mt-1 text-sm leading-relaxed text-muted-foreground">
              Faça perguntas e compreenda conteúdos jurídicos.
            </p>
          </div>
        </article>
        <article class="surface-card flex gap-4 p-5">
          <span
            class="grid h-9 w-9 shrink-0 place-items-center rounded-sm bg-primary/12 text-primary"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="lucide lucide-file-text h-4.5 w-4.5"
              aria-hidden="true"
            >
              <path
                d="M6 22a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h8a2.4 2.4 0 0 1 1.704.706l3.588 3.588A2.4 2.4 0 0 1 20 8v12a2 2 0 0 1-2 2z"
              ></path>
              <path d="M14 2v5a1 1 0 0 0 1 1h5"></path>
              <path d="M10 9H8"></path>
              <path d="M16 13H8"></path>
              <path d="M16 17H8"></path></svg
          ></span>
          <div class="min-w-0">
            <h3 class="font-display text-base font-semibold">Documentos</h3>
            <p class="mt-1 text-sm leading-relaxed text-muted-foreground">
              Utilize as informações encontradas como apoio para documentos e
              contratos.
            </p>
          </div>
        </article>
      </div>
      <div class="lg:sticky lg:top-24 lg:self-start">
        <img
          src="/app-real-gif.gif"
          alt="Interface do Novatio"
          class="w-full rounded-lg border border-border bg-surface-1"
        />
      </div>
    </div>
  </section>
</template>
