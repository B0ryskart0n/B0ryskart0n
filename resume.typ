#let dark_color = rgb("#625892")
#let light_color = rgb("#e9e4f8")

// Helpers
#let contact-item(value, prefix: "", link-type: "") = {
  if value != "" {
    if link-type != "" {
      link(link-type + value)[#(prefix + value)]
    } else {
      value
    }
  }
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
  rect(fill: light_color)[
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

#let author = "Borys Kopeć"
#let email = "boryskopec00@gmail.com"
#let github = "github.com/B0ryskart0n"
#let linkedin = "linkedin.com/in/boryskopec"
#let personal-site = ""
#let phone = "+48 987 654 321"

#let font_size = 11pt
#let big_font_size = 2 * font_size

#set document(author: author, title: author + " resume")
#set page(margin: 10mm, paper: "a4")
#set text(
  font: "libertinus serif",
  size: font_size,
  lang: "en",
  // Disable ligatures so ATS systems do not get confused when parsing fonts.
  ligatures: false,
)
#set par(justify: true)

#show link: underline
#show heading: set text(
  fill: rgb(dark_color),
)
// Name will be aligned left, bold and big
#show heading.where(level: 1): heading => [
  #set align(center)
  #set text(size: big_font_size)
  #pad(heading.body)
]
#show heading.where(level: 2): heading => [
  #pad(top: 0pt, bottom: -10pt)[#smallcaps(heading.body)]
  #line(length: 100%, stroke: 1pt)
]

// Name
#heading(level: 1, author)

// Personal Info
#pad(
  top: 0.25em,
  align(center)[
    #{
      let items = (
        contact-item(phone),
        contact-item(email, link-type: "mailto:"),
        contact-item(github, link-type: "https://"),
        contact-item(linkedin, link-type: "https://"),
        contact-item(personal-site, link-type: "https://"),
      )
      items.filter(x => x != none).join("  |  ")
    }
  ],
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
  The main product being a desktop application _Aura_ for portfolio pricing and scenario risk analysis used by 100+ traders worldwide.
- My colleagues called me the "Master of Support".
  I handled around 15 support cases quarterly, while the median was around 4.
- I was the main driver and developer of a new solution that extracted a sought-after functionality from _Aura_ as a library and a web service.
  I organized design meetings and guided discussions with internal clients.
  Unfortunately, this project was cut short with UBS acquisition.
- During the turbulent times of UBS takeover we experienced a shift in responsibilities towards portfolio migration.
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
