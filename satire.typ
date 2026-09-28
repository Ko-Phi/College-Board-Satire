// Shove some importants and bullet lists in there as well
#import "conf.typ": blue, bold, conf, cyan, definition, light, note

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
    College \ Board
  ]
  #v(3em)
  #rect(inset: 10pt)[
    #set text(size: 2em)
    #text(weight: "medium")[Effective] \ #text(weight: "black")[Fall 2026]
  ]
]


= The College Board

#grid(
  [
    == Our Mission Statement
    #[Since our inception, we at the *College Board* have made it our mission to improve the college readiness and academic success of our youth.
      We’ve come a long way since 1900, with our reach extending far past the United States and acclaiming international recognition.
      Nevertheless, we keep to our American roots, with headquarters based in *New York City, NY* and *Reston, VA*.]

    #v(0.5em)

    #note()[For any inquiries, or, god forbid, any critiques, you may give us a call at _866-630-9305_.
      We’ll do everything in our unyielding power to set things straight.]

    #v(0.5em)

    #[Despite our status as a *non-profit organization*, we have acquired extensive authority over the nation’s educational industry.
      This includes the *SAT*, which we’ve made all much necessary to enroll in a decent college, and the *Advanced Placement (AP)* program, which serves our primary money maker.
      Indeed, our products and services have certainly made their impact on the good students, teachers, and educators of this fine country.
      May you allow us, the College Board, to continue enforcing our control for years to come.]

    == Services

    #v(0.5em)

    #note()[
      The College Board offers a variety of goods and services, everything any prospective student,
      parent, and/or education could and will ever need!
      Despite the *attempts made by the government and competing organizations to rid us of our supposed “monopoly,”*
      the College Board's grip around the nation’s education system remains as tight as ever—as it should be.
      *You _will_ take the SAT and all the AP classes we deem necessary.*
    ]

    #v(0.5em)

    - #bold(extra: "(We insist you take it, really)")[The SAT]
    #[The *SAT* is the College Board’s standardized college admissions test.
      By utilizing *intentionally misleading questions and convoluted passages*,
      it gauges your proficiency in Mathematics and English and assigns you a number.
      Be wary, as many colleges, including any private and state institutions, will ask you of this result
      (we’ve relentlessly campaigned for this to be so!). If you don't meet these arbitrary criteria,
      we’re afraid you’ll be unable to attend. As a means of rectifying these shortcomings,
      *one can always retake the SAT—though at an additional cost, of course.*]

    #v(1em)

    - #block(breakable: false)[#bold(
          extra: "(Yes, they really need to be that expensive)",
        )[Advanced Placement]
        #[*The Advanced Placement (AP)* program serves as a means of preparing students for college-level courses.
          Depending on how well one does in our curriculum and the convoluted standardized test,
          a student may even receive college credit, allowing them to *skip the totally necessary
          introductory courses colleges make you attend.* If you think about it, it's really quite the deal.
          You can skip out a whole semester of college, ignoring all the added fees. This is assuming the college
          accepts the score you receive (or the particular class), though, so *make sure to pay that
          \$100 and study up on our affiliated study materials!*]
      ]
  ],
  grid(
    columns: 1fr, row-gutter: 16pt,
    definition("Non-Profit", padding: 6pt)[
      College Board is legally considered a non-profit under code *501(c)(3)*. *This keeps the millions
      we generate from standardized tests tax exempt*.
      More specifically, the College Board does not face tax on *federal income or to activities tied
      our "educational mission."* In exchange for non-profit status, College Board is *forsakes the right to lobby*.
      This is a restriction we've chosen to ignore as *we cannot afford to let legal matters hinder our operations.*
    ],
    definition("Monopoly", padding: 6pt)[
      Many claims have been made about us, the College Board, and our *complete market dominance*.
      Though many are quick to call out this supposed monopoly, we at College Board reassure you that all our successes
      are the *result of the effort's we've made to promote and foster education*.
      Now, would a actual monopoly really be so considerate? *It's safe to that we're at least one of the good ones.*
    ],
    note(padding: 6pt)[
      Many might've heard that the SAT was *almost brought of out circulation*, with critiques
      deeming the test *inaccurate when gauging the academic proficiency and college readiness of students.*
      As valid as these concerns may be, College Board *retains to power to enforce these tests any how.*
    ],
  ),
)

#v(3em)

#pagebreak()

= The 2026--2027 School Year

#grid(
  columns: (1fr, 32pt),
  [
    #note()[With the pleasantries out of the way, we at the College Board would like to
      provide an *overview of the 2025–2026 school year.* This should serve as an
      adequate refresher on the many accomplishments and developments of the past year and
      give background to the many changes to come.]

    == Advanced Placement
    2025–2026 proved quite a *successful school year for the Advanced Placement (AP) program.*
    In terms of academic performance and AP test scores, we saw a *rise across the board,*
    with many classes surpassing historical highs.

    Whether this is the *result of lowered
    testing standards or actual academic improvement*, we, the College Board, choose not to tell.
    Just know that, with broader participation, come some *necessary curriculum alterations.*
    It wouldn’t be right if the average were to drop just because more people chose to buy
    into our programs now, would it?

    #note()[Anyhow, here’s a list of the *relevant highs and lows coming from last year’s AP exams compared to that of the year prior.*]

    #import "data.typ": falls, rises

    #let change(d) = if d > 0 {
      text(fill: green.darken(40%))[+#d%]
    } else if d < 0 {
      text(fill: red.darken(40%))[#sym.minus#calc.abs(d)%]
    } else [0]

    #let mapRow(row) = (
      row
        .map(r => (
          text(font: "Serifa Std")[#r.at(0)],
          [#r.at(1)%],
          [#r.at(2)%],
          [#r.at(3)%],
          [#r.at(4)%],
          [#r.at(5)%],
          [*#r.at(6)%*],
          [#r.at(7)%],
          change(r.at(6) - r.at(7)),
        ))
        .flatten()
    )

    #set table(
      columns: (2fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.9fr, 0.9fr, 0.8fr),
      align: (
        left,
        center + horizon,
        center + horizon,
        center + horizon,
        center + horizon,
        center + horizon,
        center + horizon,
        center + horizon,
        center + horizon,
      ),
      inset: (x: 5pt, y: 6pt),
      stroke: (x: none, y: 0.4pt + black.lighten(60%)),
      fill: (_, y) => if y == 0 { luma(225) } else if calc.even(y) {
        light
      },
    )

    #let head = table.header(
      text(font: "Serifa Std")[*Exam*],
      [*5*],
      [*4*],
      [*3*],
      [*2*],
      [*1*],
      [*3+ 2026*],
      [*3+ 2025*],
      [*Change*],
    )

    - === Rises / Highs
      #table(
        head,
        ..mapRow(rises),
      )


    - === Falls / Lows
      #table(
        head,
        ..mapRow(falls),
      )

      == The SAT
      SAT scores have, let's just say, struggled. As many are aware, *SAT scores have been
      on the decline since the pandemic.* Now, what does this say about the state of education?
      Have we, as the College Board, *failed in our mission of preparing our youth for adulthood?*
      Let’s not be too hasty now. While standardized test scores here haven’t seen much improvement,
      one must also look towards test count.

      For you see, after some heavy lobbying and exceptional self-promotion, the *number of students
      taking the SAT and attending Advanced Placement (AP) classes has increased significantly over the years.*

      This past year has been no different. So then, so what if scores remain relatively fixed? As long as students
      continue paying for our overpriced courses and tests, *the College Board remains the sole authority
      in American education.* Only once we thoroughly establish this control can we focus on improvement.

      #note()[Our *non-profit requires heaps of capital to remain in business.* Going purely by finances,
        this past year has actually been the most successful for the College Board. With this extra money,
        we continue focusing on *improving our curriculum and expanding our control.*]

      So think not of our shortcomings and look ahead to what's to come. There’s surely more to be done by and for us.
      *Big things are coming.*
  ],
)
#pagebreak()

= Changes to Come

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
