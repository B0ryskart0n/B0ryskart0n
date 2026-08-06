//////////////////////////////////////////////////////////////////////////////// Variables
#let author = "Borys Kopeć"
#let email = "boryskopec00@gmail.com"
#let github = "github.com/B0ryskart0n"
#let linkedin = "linkedin.com/in/boryskopec"
#let personal-site = ""
#let phone = "+48 987 654 321"

//////////////////////////////////////////////////////////////////////////////// Configuration
#let dark_color = rgb("#625892")
#let light_color = rgb("#e9e4f8")
#let font_size = 10pt
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

//////////////////////////////////////////////////////////////////////////////// Helper functions
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
  start-date + " " + sym.dash.en + " " + end-date
}
#let data_clause(content) = {
  place(
    bottom + right,
  )[#emph(content)]
}

#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  rect(fill: light_color)[
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  rect(inset: (x: 5pt, y: 0pt), outset: (x: 0pt, y: 5pt), fill: light_color)[
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

//////////////////////////////////////////////////////////////////////////////// Contents
#heading(level: 1, author)

// Personal Info
#pad(
  top: 1em,
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

#align(center)[
  I love building systems where correctness and performance both matter.
  I am meticulous by nature: I ask a lot of questions, always try to get to the bottom of things, and I take reliability seriously.
  I enjoy helping people and sharing knowledge.
]

== Education

#edu(
  institution: "Wrocław University of Science and Technology",
  location: "Wrocław, Poland",
  dates: date_range(start-date: "2019-10", end-date: "2023-02"),
  degree: "Bachelor of Science in Applied Mathematics",
)
- GPA (fail: 2.0, max: 5.5): 5.26.
// - Repeated Principal's Scholarship recipient
// - Year representative
- Proudly selected for QuantStrats Scholarship Programme organised by Credit Suisse at which I got offered a permanent position as Quantitative Developer.
- Relevant coursework: Algorithms & Data Structures, Numerical Methods & Computer Simulations, Statistics & Data Analysis.
- Writing apps, analyses, and simulations in *Python*, *R*, *Julia*. Querying and designing databases with *SQL* (MariaDB).
// - Primarily interested in Mathematical Modelling, Probability Theory, and programming
- Concluded the degree with thesis "Estimating option prices with the Heston model".

== Work Experience

#work(
  title: "Model Validation Specialist",
  location: "Wrocław, Poland",
  company: "Commerzbank",
  dates: date_range(start-date: "2024-08", end-date: "present"),
)

- Validating Counterparty Credit Risk models.
  Performing analyses using *R*, *Python*, *MS Excel*, and *SQL*; writing reports in *LaTeX*.
- Working with model developers on one side, and regulators on the other side; with many successes at coordinating findings with model owners.
  This requires a good balance of regulation-strictness and pragmatism.
- Constantly streamlining validation work, including responsible use of Artificial Intelligence for coding and document analysis.

#work(
  title: "Quantitative Developer",
  location: "Wrocław, Poland",
  company: "Credit Suisse",
  dates: date_range(start-date: "2022-06", end-date: "2024-07"),
)

// - Worked in a multicultural cross-timezone team.
- Responsible for developing (*F\#* & *C\#*) and supporting front-office applications and services.
  The main product being a desktop application _Aura_ for portfolio pricing and scenario risk analysis used by 100+ traders worldwide.
- Led the design and development of a new solution that extracted a high-demand feature from _Aura_ as a reusable plugin-library and a REST web service (*ASP.NET*), reducing coupling and enabling independent deployment.
  Organised design meetings and guided discussions with internal clients.
- Handled around 15 support cases quarterly (median: \~4), earned the title of "Master of Support" and a reputation as the team's go-to for diagnosing the hardest production issues.
  Oftentimes assisting traders live.
- During the UBS merger, rapidly extended support for several new trade types within weeks.

== Projects

#project(
  name: "Gra",
  url: "github.com/B0ryskart0n/gra",
)

I like playing roguelike games, so I decided to write my own!
It's a single-player sci-fi roguelite written in *Rust*.
Built with Bevy ECS architecture with concurrent schedules for game physics, and UI to keep systems decoupled and performant.
// Still in early stages of development, but I have a concrete vision with an interesting plot and I'm pushing towards that.

#project(
  name: "balgo",
  url: "github.com/B0ryskart0n/balgo",
)

A *Rust* library of algorithms and data structures, implemented from scratch with a focus on correctness and performance.
Currently features A\* pathfinding, verified against benchmarks.
An exercise in writing clean code and identifying performance bottlenecks.

#project(
  name: "dashperfin",
  url: "github.com/B0ryskart0n/dashperfin",
)

A #underline[dash]board for #underline[per]sonal #underline[fin]ance that I use regularly to monitor my family's spendings.
Written in *Python* and *Plotly Dash*.

== Skills
// TODO Consider using strong emph for keywords like: *_Rust_*
- *Programming languages*: _confident_ *Rust*, *R*; _comfortable_ *F\#*, *Python*; _familiar_ *C*, *C++*, *C\#*.
- *Technologies*: GNU/Linux, Git, Docker, Visual Studio (Code), TeamCity, GitLab, .NET, Dash.
- *Software dev. practices*: Automated testing (unit, integration, regression), Agile manifesto, Concurrent systems, Containerization, Object-oriented programming, Functional programming, CI/CD, Code review, Pair programming, LLM assistants.
- *Soft*: Patience, Knowledge sharing, Prioritization.

#data_clause("I hereby consent to my personal data included in this resume being processed for recruitment purposes.")
