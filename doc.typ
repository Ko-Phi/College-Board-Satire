#let blue = rgb("#304BC1")
#let cyan = rgb("#009AD8")
#let light = rgb("#E0EFF9")

#let pat = tiling(size: (4pt, 4pt), {
  place(line(start: (0%, 100%), end: (100%, 0%), stroke: cyan + 0.5pt))
})
#set page(
  paper: "us-letter",
  margin: 1.5in,
  background: grid(
    columns: (1fr, 18pt),
    [], rect(width: 100%, height: 100%, stroke: 0pt, fill: pat),
  ),
  footer: context [
    #set text(8pt)
    Collage Board #h(1fr) Page #counter(page).display("1")
  ],
)
#set text(font: "Myriad Pro", top-edge: "cap-height")
#set par(spacing: 1em, leading: 0.5em)

#set list(
  marker: scale(x: 200%, y: 200%)[#text(fill: cyan)[•]],
  body-indent: 6pt,
  indent: -10pt,
  spacing: 10pt,
)

#let bold(content) = text(
  size: 1em,
  fill: cyan,
  weight: "bold",
  font: "Myriad Pro",
)[#upper[#content]]

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

#align(left)[
  #set text(font: "Serifa Std", top-edge: "cap-height")
  #set page(
    background: rect(fill: blue, width: 100%, height: 100%),
    footer: [],
  )

  #set text(fill: white, tracking: -0.5pt)
  #set par(leading: 0.3em, spacing: 16pt)

  #text(
    size: 1.25em,
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
    #text(weight: "medium")[Effective] \ #text(weight: "black")[Fall 2027]
  ]
]

= Heading 123

#lorem(45)

#lorem(74)

#lorem(90)

== General Requirements

You will be provided with a minimum of 9 hours of class time to complete and submit
the following

- *Final program code* (created independently or collaboratively)
- *A video that displays the running of your program and demonstrates
  functionality you developed* (created independently)
- *Code Segments for your Personalized Project Reference* (created independently) \ Note: Students in nontraditional classroom environments should consult a school-based AP Coordinator for instructions

== Submission Requirements

#bold("Component")

