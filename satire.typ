// Shove some importants and bullet lists in there as well
#import "conf.typ": blue, bold, conf, cyan, definition, important, light

#show: conf

#let sat = definition("The SAT", padding: 6pt)[
  #lorem(35) tried best to make necessary, determine future
]
#let ap = definition("Advanced Placement", padding: 6pt)[
  #lorem(35) essentially required, expensive, stress
]

#align(left)[
  #set text(font: "Serifa Std", top-edge: "cap-height")
  #set page(
    background: rect(fill: blue, width: 100%, height: 100%),
    margin: 1.5in,
    footer: [],
  )

  #set text(fill: white, tracking: -0.5pt)
  #set par(leading: 0.3em, spacing: 16pt)

  #text(
    size: 1.5em,
    weight: "bold",
  )[2025 -- 2026: A YEAR IN REVIEW]


  #[#line(stroke: 8pt + white, length: 70%)]

  #v(1em)

  #[
    #set text(size: 6em, weight: "medium")
    #set par(leading: 0.3em)
    Collage \ Board
  ]

  #v(3em)

  #rect(inset: 10pt)[
    #set text(size: 2em)
    #text(weight: "medium")[Effective] \ #text(weight: "black")[Fall 2026]
  ]
]

= Collage Board

#grid(
  [
    == Our Mission Statement
    #lorem(100)
    == Services
    #lorem(100)
    == Accomplishments
    #lorem(100)
  ],
  grid(
    columns: 1fr, row-gutter: 16pt,
    sat,
    ap,
    definition("Non-Profit", padding: 6pt)[
      #lorem(25)
      made tons of money
    ],
  ),
)

#pagebreak()

= The 2026--2027 School Year

#grid(
  [
    #v(1em)
    == SAT And PSAT
    #lorem(150)
    == AP Tests
    #lorem(250)],
  grid(
    columns: 1,
    row-gutter: 16pt,
    sat,
    ap,
  ),
)

#pagebreak()

= Future Changes

#grid(
  [
    #v(1em)
    == New AP Classes
    #lorem(100)
    == Price Alterations
    #lorem(100)
    == Financial Support
    #lorem(100)
  ],
  grid(
    columns: 1,
    row-gutter: 16pt,
    definition("Education")[#lorem(50)],
    definition("Loan")[#lorem(50)],
  ),
)
