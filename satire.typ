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
  #set text(fill: white, tracking: -1pt)
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
    #[Since our inception, we at the *College Board* have made it our mission to improve the college readiness and academic success of our youth.
      We’ve come a long way since 1900, with our reach extending far past the United States and acclaiming international recognition.
      Nevertheless, we keep to our American roots, with headquarters based in *New York City, NY* and *Reston, VA*.]

    #v(0.5em)

    #important()[For any inquiries, or, god forbid, any critiques, you may give us a call at _866-630-9305_.
      We’ll do everything in our unyielding power to set things straight.]

    #v(0.5em)

    #[Despite our status as a *non-profit organization*, we have acquired extensive authority over the nation’s educational industry.
      This includes the *SAT*, which we’ve made all much necessary to enroll in a decent college, and the *Advanced Placement (AP)* program, which serves our primary money maker.
      Indeed, our products and services have certainly made their impact on the good students, teachers, and educators of this fine country.
      May you allow us, the College Board, to continue enforcing our control for years to come.]

    == Services

    #v(0.5em)

    #important()[The College Board offers a variety of goods and services, everything any prospective student, parent, and/or education could and will ever need!
      Despite the attempts made by the government and competing organizations to rid us of our supposed “*monopoly*,” the College Board's grip around the nation’s education system remains as tight as ever—as it should be.
      You will take the *SAT* and all the *AP* classes we deem necessary.]

    #v(0.5em)

    - #bold(extra: "(We insist you take it, really)")[The SAT]
    #[The *SAT* is the College Board’s standardized college admissions test.
      By utilizing intentionally misleading questions and convoluted passages,
      it gauges your proficiency in Mathematics and English and assigns you a number.
      Be wary, as many colleges, including any private and state institutions, will ask you of this result (we’ve relentlessly campaigned for this to be so!). If you don't meet these arbitrary criteria, we’re afraid you’ll be unable to attend. As a means of rectifying these shortcomings, one can always retake the *SAT*—though at an additional cost, of course.]

    #v(1em)

    - #block(breakable: false)[#bold(
          extra: "(Yes, they really need to be that expensive)",
        )[Advanced Placement]
        #[*The Advanced Placement (AP)* program serves as a means of preparing students for college-level courses.
          Depending on how well one does in our curriculum and the convoluted standardized test,
          a student may even receive college credit, allowing them to skip the totally necessary
          introductory courses colleges make you attend. If you think about it, it's really quite the deal.
          You can skip out a whole semester of college, ignoring all the added fees. This is assuming the college
          accepts the score you receive (or the particular class), though, so make sure to pay that
          *\$100* and study up on our affiliated study materials.]
      ]
  ],
  grid(
    columns: 1fr, row-gutter: 16pt,
    definition("Non-Profit", padding: 6pt)[
      #lorem(25)
      made tons of money
    ],
    definition("Monopoly", padding: 6pt)[
      #lorem(25)
      made tons of money
    ],
    important(padding: 6pt)[
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
