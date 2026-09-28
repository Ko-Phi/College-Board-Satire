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

#let note(content, padding: 8pt) = block(breakable: false)[
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: padding, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Note:]]]
  #line(length: 100%)
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: padding,
    right: padding,
    top: padding,
    bottom: 10pt,
  )[#content]]
]
#let definition(word, content, padding: 8pt) = block(breakable: false)[
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: padding, right: padding, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Definition:]]]
  #line(length: 100%, stroke: 0.5pt)
  #pad(left: padding, bottom: padding, top: padding)[#text(
    font: "Serifa Std",
    weight: "bold",
  )[#word]]
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: padding,
    right: padding,
    top: padding,
    bottom: 10pt,
  )[#content]]
]

#let conf(doc) = {
  let pat = tiling(size: (4pt, 4pt), {
    place(line(start: (0%, 100%), end: (100%, 0%), stroke: cyan + 0.5pt))
  })
  set page(
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
      )[#text(fill: cyan, weight: "bold")[AP #sep SAT #sep College Board]
        #h(1fr) A Year in Review #sep #counter(page).display("1")]
      #v(1em)
      #set text(7pt)
      #pad(
        right: -32pt,
      )[#h(1fr)© 2026 Collage Board]
    ],
  )

  set text(
    font: "Myriad Pro",
    top-edge: "cap-height",
    size: 11pt,
    fill: black.lighten(20%),
  )
  show strong: set text(weight: "light", fill: black)

  set par(spacing: 1em, leading: 5pt)
  set grid(
    columns: (1fr, 1.5in),
    column-gutter: 16pt,
  )

  show list: set list(
    marker: place(dx: -4pt, dy: -2pt)[#scale(x: 200%, y: 200%)[#text(
      fill: cyan,
      size: 1em,
    )[•]]],
    body-indent: 6pt,
    indent: -10pt,
    spacing: 10pt,
  )

  show heading.where(level: 1): it => [
    #set block(below: 1em, above: 1em)
    #set text(font: "Serifa Std", weight: "black", size: 2em)
    #it
    #line(length: 100% - 32pt, stroke: 2pt)
  ]
  show heading.where(level: 2): it => [
    #set block(below: 0.75em, above: 1.5em)
    #set text(font: "Serifa Std", weight: "bold", fill: cyan, size: 1em)
    #scale(y: 110%)[#it]
  ]
  show heading.where(level: 3): it => [
    #set block(below: 0.75em, above: 1.5em)
    #set text(font: "Serifa Std", weight: "bold", fill: black, size: 1em)
    #scale(y: 110%)[#it]
  ]

  doc
}


