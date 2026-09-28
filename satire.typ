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
      We’ve come a long way since 1900, with our reach extending far past the United States and earning international recognition.
      Nevertheless, we keep to our American roots, with headquarters based in *NYC, NY* and *Reston, VA*.]

    #v(0.5em)

    #note()[For any inquiries, or, forbid, any critiques, you may give us a call at _866-630-9305_.
      We’ll do everything in our unyielding power to set things straight.]

    #v(0.5em)

    #[Despite our status as a *non-profit organization*, we have acquired extensive authority over the nation’s educational industry.
      This includes the *SAT*, which we’ve made all much necessary to enroll in a decent college, and the *Advanced Placement (AP)* program, which serves our primary money maker.
      Indeed, our products and services have certainly made their impact on the good students, teachers, and educators of this fine country.
      May you allow us, the College Board, to continue enforcing our control for years to come.]

    == Services


    #note()[
      The College Board offers a variety of goods and services, everything any prospective student,
      parent, and/or education could and will ever need!
      Despite the *attempts made by the government and competing organizations to rid us of our supposed “monopoly,”*
      the College Board's grip around the nation’s education system remains as tight as ever—as it should be.
      *You _will_ take the SAT and all the AP classes we deem necessary.*
    ]


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
          \$100 and study up on our affiliated textbooks and materials!*]
      ]
  ],
  grid(
    columns: 1fr, row-gutter: 16pt,
    definition("Non-Profit", padding: 6pt)[
      College Board is legally considered a non-profit under code *501(c)(3)*. *This keeps the millions
      we generate from standardized tests tax exempt*.
      More specifically, the College Board does not face tax on *federal income or to activities tied
      our "educational mission."* In exchange for non-profit status, College Board *forsakes the right to lobby*.
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
    With the pleasantries out of the way, we at the College Board would like to
    provide an *overview of the 2025–2026 school year.*

    #note()[This should serve as an
      adequate refresher on the many accomplishments and developments of the past year and
      give background to the many changes to come.]

    == Advanced Placement (AP)
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


    - #block(breakable: false)[=== Falls / Lows
        #table(
          head,
          ..mapRow(falls),
        )]

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
  columns: (1fr, 32pt),
)[*The Advanced Placement (AP) program* has proven to be the College Board’s most valuable export.
  A large portion of the money our non-profit organization makes is derived from the *distribution of
  standardized tests and curriculum resources (e.g., affiliated textbooks and endorsements).*

  To ensure the continued prosperity of the College Board and education as a whole, we’ve *continually updated,
  added to, and reorganized our AP curricula over the years.* This guarantees that all classroom material
  is relevant and in line with our current agendas.

  This year will prove no different, as we at the College Board *introduce a new line of AP courses alongside
  noteworthy updates to existing ones.*

  #set table(
    columns: (0.3fr, 1fr),
    inset: (x: 5pt, y: 8pt),
    stroke: (x: none, y: 0.4pt + black.lighten(60%)),
    fill: (_, y) => if y == 0 { luma(225) } else if calc.even(y) {
      light
    },
  )
  #let head = table.header(
    [=== Class],
    [=== Description],
  )

  == Additions
  #table(
    head,

    text(font: "Serifa Std")[Business with Personal Finance:],
    [This class will serve as an *introductory look into the business world.*
      Here, you’ll cover everything from entrepreneurship to marketing and finance.
      By strengthening your financial literacy, you’ll be able to *follow in our footsteps and make a truckload of money.*],

    text(font: "Serifa Std")[Networking:],
    [With this course, we’ll try to prove that networking is, in fact, *a learnable skill and not something that depends
      on your social class.* Along the way, you’ll learn all the relevant buzzwords and the ins and outs of business speech,
      hopefully aiding in your post-college years. *Success, of course, isn’t at all guaranteed, so don’t be too disappointed.*],

    text(font: "Serifa Std")[Cybersecurity:],
    [As everything becomes more and more digitized, it becomes *all but necessary to understand the digital threats
      you may encounter on a daily basis.* By spotting real-world threats and completing hands-on exercises,
      you should hopefully become *competent enough to keep your personal information safe.* That is, safe from anyone but us.],

    text(font: "Serifa Std")[Artificial Intelligence:],
    [*To capitalize on the recent AI craze,* the College Board will now be offering the AP Artificial Intelligence course.
      Though *we haven’t exactly figured out an organized curriculum, nor planned out any testable metrics,*
      we are sure that this course will be very successful.],
  )

  == Changes
  #table(
    head,

    text(font: "Serifa Std")[AP Precalculus:],
    [
      Due to *unsatisfactory enrollment counts and low college credit acceptance rates,*
      this class will have to be dropped to make room for more profitable ventures.
    ],

    text(font: "Serifa Std")[AP Calculus BC:],
    [Due to the *extremely high pass rates,* this course’s curriculum will be updated to cover
      even *higher-level material.* This should hopefully curb pass rates and improve the reputation of Calculus AB.],
  )

  Alongside the *changes to the curriculum come alterations to the price of our goods and services.*
  As the College Board continues to grow, taking up more and more space in the education industry,
  the *money needed to keep ourselves afloat only increases.*

  While we certainly have some money saved for later *(only about \$1.6 billion),* this money won’t last forever.
  This is why we, as the College Board, are making the *executive decision to raise the price of the SAT
  and all AP classes once more.*

  #note()[The base price of the *AP test will be raised from \$99 to \$119, and the SAT from \$68 to \$80.*
    These changes will be made *starting next school year,* so make sure to enroll in class while prices are low.]

  As an organization so keen on spreading education, we *cannot ignore the financially disadvantaged among us.*
  This is why, in response to increased prices, the College Board will be *directing financial aid efforts
  to those unfortunate students.*

  Starting this school year, the College Board will begin *offering loans to low-income students to help get
  them off their feet.* This allows students to take the classes and tests they wish to take without the
  immediate financial burden. Rather, it’ll loom in the background, *following them into adulthood and gradually
  building interest until they can finally pay them off in far more than full.* This way,
  the College Board remains profitable, as it should be.

  With all the developments and changes we’ve outlined above, we, the College Board,
  once again would like to *thank you for your continued support.* By continuing to give us money,
  you *not only help build towards your future, but also that of others.*

  #note[Now, if you, for whatever reason, find the methods and principles we covered in this paper *unsatisfactory or immoral*,
    *we’re afraid nothing can be done*. Whether you like it or not, we, as the College Board,
    have already made the executive decision to put these changes into place. *There is nothing that can be done to stop us now.*]]

