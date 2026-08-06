#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  accent-color: "#000000",
  author-font-size: 20pt,
  font-size: 10pt,
  body,
) = {
  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: "libertinus serif",
    size: font-size,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false,
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: 10mm,
    paper: "a4",
  )

  // Link styles
  show link: underline

  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: author-font-size,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(github, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

#let date_range(start-date: "", end-date: "") = {
  start-date + " " + $dash.en$ + " " + end-date
}

#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  rect(fill: rgb("#e9e4f8"))[
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  rect(fill: rgb("#e9e4f8"))[
    #left #h(1fr) #right
  ]
}

#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(institution),
    top-right: dates,
    bottom-left: emph(degree),
    bottom-right: emph(location),
  )
}
#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(title),
    top-right: dates,
    bottom-left: company,
    bottom-right: emph(location),
  )
}
#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        [*#name* #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      } else {
        [*#role*, #name #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != "" {
        link("https://" + url)[#url]
      } else {
        dates
      }
    },
  )
}

#show: resume.with(
  author: "Borys Kopeć",
  //location: "Wrocław, Poland",
  email: "boryskopec00@gmail.com",
  github: "github.com/B0ryskart0n",
  linkedin: "linkedin.com/in/boryskopec",
  phone: "+48 987 654 321",
  //personal-site: "",
  accent-color: "#625892",
  font-size: 11pt,
  author-position: center,
  personal-info-position: center,
)

#set align(center)
I love applying maths, and programming is my favorite way of doing that.
I may not be the fastest learner, but I'm definitely the most meticulous one.
I ask a lot of questions and I always try to get to the bottom of things.
I enjoy helping people and sharing knowledge.
#set align(left)

== Education

#edu(
  institution: "Wrocław University of Science and Technology",
  location: "Wrocław, Poland",
  dates: date_range(start-date: "X 2019", end-date: "II 2023"),
  degree: "Bachelor of Science in Applied Mathematics",
)
- GPA (fail: 2.0, max: 5.5): 5.26
// - Repeated Principal's Scholarship recipient
// - Year representative
- Proudly selected for QuantStrats Scholarship Programme organised by Credit Suisse at which I got offered a permanent position as Quantitative Developer
// - Relevant coursework: Statistics & Data Analysis, Numerical Methods & Computer Simulations, Algorithms & Data structures
- Writing apps, analyses, and simulations in *Python*, *R*, *Julia*
- Primarily interested in Mathematical Modelling, Probability Theory, and programming
- Concluded the degree with thesis "Estimating option prices with the Heston model"

== Work Experience

#work(
  title: "Model Validation Specialist",
  location: "Wrocław, Poland",
  company: "Commerzbank",
  dates: date_range(start-date: "VIII 2024", end-date: "present"),
)

- Validating Counterparty Credit Risk models.
  Performing analyses using *R*, Excel, and *SQL*; writing reports in *LaTeX*.
- Working with model developers on one side, and regulators on the other side; with many successes at coordinating findings with model owners.
  This required a good balance of regulation-strictness and pragmatism.
- Constantly working on streamlining and optimising validation work.

#work(
  title: "Quantitative Developer",
  location: "Wrocław, Poland",
  company: "Credit Suisse",
  dates: date_range(start-date: "VI 2022", end-date: "VII 2024"),
)

- Responsible for developing (*F\#* & *C\#*) and supporting front-office applications and services.
  The main product being a desktop application for portfolio pricing and scenario risk analysis used by 100+ traders worldwide.
- My colleagues called me the "Master of Support".
  I handled around 15 support cases quarterly, while the median was around 4.
// - Driver for the service solution
- During the turbulent times of UBS acquisition we experienced a shift in responsibilities towards portfolio migration.
  We added support for several new trade types in the span of weeks.

== Projects

#project(
  name: "Gra",
  url: "github.com/B0ryskart0n/gra",
)

I like playing roguelike games, so I decided to write my own! It's a single-player science fiction roguelite.
Still in early stages of development, but I have a concrete vision with an interesting plot and I'm pushing towards that.

== Skills
- *Programming languages*:
  + _confident:_ Rust, R
  + _comfortable_: F\#, Python
  + _familiar_: C, C++, C\#
- *Technologies*: GNU/Linux, Git, Visual Studio (Code), Microsoft Excel
- *Software dev. practices*: Agile manifesto, Object-oriented programming, Functional programming, CI/CD
- *Soft*: Patience, Knowledge sharing, Prioritization

// #footnote(
//   "I hereby give consent for my personal data included in this document to be used for the purposes of the recruitment process.",
//   numbering: _ => "",
// )
