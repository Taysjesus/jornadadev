# Fluxograma - Desconto na Compra

flowchart TD
    A([Início]) --> B[/Leia valor da compra/]
    B --> C{Valor > 100?}

    C -- Sim --> D[Valor ← Valor × 0,90]
    C -- Não --> E[/Escreva valor final/]

    D --> E
    E --> F([Fim])