// Shove some importants and bullet lists in there as well

#let blue = rgb("#304BC1")
#let cyan = rgb("#009AD8")
#let light = rgb("#E0EFF9")

#let bold(content, extra: []) = [
  #set text(
    fill: cyan,
    weight: "bold",
    font: "Myriad Pro",
  )
  #set par(spacing: 0em)
  #upper[#content]
  #text(size: 0.7em, fill: black.lighten(30%))[#extra]
]

#let important(content, padding: 8pt) = [
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: padding, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Important:]]]
  #line(length: 100%)
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: padding,
    right: padding,
    top: 4pt,
    bottom: 10pt,
  )[#content]]
]
#let definition(word, content, padding: 8pt) = [
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: padding, right: padding, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Definition:]]]
  #line(length: 100%, stroke: 0.5pt)
  #pad(left: padding, bottom: 4pt, top: 4pt)[#text(
    font: "Serifa Std",
    weight: "bold",
  )[#word]]
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: padding,
    right: padding,
    top: 4pt,
    bottom: 10pt,
  )[#content]]
]

#let pat = tiling(size: (4pt, 4pt), {
  place(line(start: (0%, 100%), end: (100%, 0%), stroke: cyan + 0.5pt))
})
#set page(
  paper: "us-letter",
  margin: 1in,
  background: grid(
    columns: (1fr, 18pt),
    [], rect(width: 100%, height: 100%, stroke: 0pt, fill: pat),
  ),
  footer: context place(bottom + right, dy: -20pt)[
    #let sep = [#h(4pt) | #h(4pt)]
    #set text(8pt)
    #v(1em)
    #pad(
      right: -32pt,
    )[#text(fill: cyan)[*AP #sep SAT #sep Collage Board*] #h(1fr) A Year in Review #sep #counter(page).display("1")]
    #v(1em)
    #set text(7pt)
    #pad(
      right: -32pt,
    )[#h(1fr)© 2026 Collage Board]
  ],
)
#set text(font: "Myriad Pro", top-edge: "cap-height", size: 11pt)
#set par(spacing: 1em, leading: 5pt)
#set grid(
  columns: (1fr, 1.5in),
  column-gutter: 16pt,
)

#show list: set list(
  marker: (scale(x: 200%, y: 200%)[#text(fill: cyan)[•]]),
  body-indent: 6pt,
  spacing: 10pt,
)

#show heading.where(level: 1): it => [
  #set block(below: 1em, above: 1em)
  #set text(font: "Serifa Std", weight: "black", size: 2em)
  #it
  #line(length: 100% - 32pt, stroke: 2pt)
]
#show heading.where(level: 2): it => [
  #set block(below: 0.75em, above: 1.5em)
  #set text(font: "Serifa Std", weight: "bold", fill: cyan, size: 1em)
  #scale(y: 110%)[#it]
]


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
