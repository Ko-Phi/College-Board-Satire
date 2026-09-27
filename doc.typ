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
  #text(size: 0.7em, fill: black.lighten(30%))[(#extra)]
  #v(-0.4em)
]

#let important(content) = [
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: 10pt, right: 8pt, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Important:]]]
  #line(length: 100%)
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: 10pt,
    right: 10pt,
    top: 4pt,
    bottom: 10pt,
  )[#content]]
]
#let definition(word, content) = [
  #set par(spacing: 0pt)
  #set text(size: 9.5pt)
  #pad(left: 10pt, right: 8pt, bottom: 4pt)[#text(
    size: 0.75em,
    weight: "medium",
  )[#upper[Definition:]]]
  #line(length: 100%, stroke: 0.5pt)
  #pad(left: 10pt, right: 8pt, bottom: 4pt, top: 4pt)[#text(
    font: "Serifa Std",
    weight: "bold",
  )[#word]]
  #rect(fill: light, inset: 0pt, width: 100%)[#pad(
    left: 10pt,
    right: 10pt,
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
  footer: context [
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
    #text(weight: "medium")[Effective] \ #text(weight: "black")[Fall 202\*]
  ]
]

#page(margin: 1.5in)[= Create Performance Task

  Programming is a collaborative and creative process that brings ideas to life through
  the development of software. In the Create performance task, you will design
  and implement a program that might solve a problem, enable innovation, explore
  personal interests, or express creativity. Your submission must include the elements
  listed in the Submission Requirements section below.

  You are allowed to collaborate with your partner(s) on the development of the
  program only. *The video and Personalized Project Reference that you submit for
  this performance task must be completed individually, without any collaboration
  with your partner(s) or anyone else.* You can develop the code segments used in
  your *Personalized Project Reference* with your partner(s) or on your own as you
  work on the performance task during class.

  _Please note that once your teacher has assigned this performance task as one
  of your AP score components, you are expected to complete the task without
  assistance from anyone except for your partner(s) and then only when developing
  the program code. You must follow the Guidelines for Completing the Create
  Performance Task section below._

  == General Requirements

  You will be provided with a minimum of 9 hours of class time to complete and submit
  the following

  - *Final program code* (created independently or collaboratively)
  - *A video that displays the running of your program and demonstrates
    functionality you developed* (created independently)
  - *Code Segments for your Personalized Project Reference* (created independently) \ Note: Students in nontraditional classroom environments should consult a school-based AP Coordinator for instructions
]

== Submission Requirements

#v(1em)

#grid(
  columns: (1fr, 1.5in),
  column-gutter: 16pt,
  [#bold(
      extra: "CREATED INDEPENDENTLY OR COLLABORATIVELY",
    )[COMPONENT A: PROGRAM CODE]

    Submit one PDF file that contains all of your program code (including
    comments). Include comments or acknowledgments for any part of the
    submitted program code that has been written by someone other than you
    and/or your collaborative partner(s).

    #important()[If the programming environment allows you to include comments, this is the
      preferred way to acknowledge and give credit to another author. However, if the
      programming environment does not allow you to include comments, you can add
      them in a document editor when you capture your program code for submission.]

    In your program, you must include student-developed program code that
    contains the following:
    - Instructions for input from one of the following:
      - the user (including user actions that trigger events)
      - a device
      - an online data stream
      - a file
    - #[Use of at least one *list* (or other *collection type*) to represent a collection of
        data that is stored and used to manage program complexity and help fulfill
        the program’s purpose]

    #important()[The data abstraction must make the program easier to develop (alternatives would
      be more complex) or easier to maintain (future changes to the size of the list would
      otherwise require significant modifications to the program code).]

    - At least one procedure that contributes to the program’s intended purpose,
      where you have defined:
      - the procedure’s name
      - the return type (if necessary)
      - one or more parameters
    #important()[Implementation of built-in or existing procedures or language structures, such as
      event handlers or main methods, are not considered student-developed.]
    - An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure
    - Calls to your student-developed procedure
    - Instructions for output (tactile, audible, visual, or textual) based on input and program functionality
  ],
  grid(
    columns: 1fr, row-gutter: 16pt, definition("List")[
      A *list* is an ordered
      sequence of elements.
      The use of lists allows
      multiple related items
      to be represented using
      a single variable. Lists
      may be referred to by
      different names, such as
      arrays, depending on the
      programming language.
    ],
    definition("Collection Type")[
      A collection type is a
      type that aggregates
      elements in a single
      structure. Some
      examples include lists,
      databases, and sets.
    ],
    important()[
      With text-based program
      code, you can use the
      print command to save
      your program code as
      a PDF file, or you can
      copy and paste your
      code to a text document
      and then convert it into
      a PDF file. With block-
      based program code,
      you can create screen
      captures that include
      only your program code,
      paste these images into
      a document, and then
      convert that document
      to a PDF. Screen
      captures should not be
      blurry, and text should be
      at least 10 pt font size.]
  ),
)
