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

#set document(author: author, title: author + " curriculum vitae)")
#set page(margin: 10mm, paper: "a4")
#set text(
  font: "libertinus serif",
  size: font_size,
  lang: "pl",
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
  Uwielbiam budować rozwiązania, w których kluczowe są poprawność i wydajność.
  Jestem skrupulatny z natury: zadaję wiele pytań w celu zrozumienia problemu od podstaw i poważnie traktuję odpowiedzalność.
  Mam wielką przyjemność z pomagania innym i dzielenia się wiedzą.
]

== Wykształcenie

#edu(
  institution: "Politechnika Wrocławska",
  location: "Wrocław",
  dates: date_range(start-date: "2019-10", end-date: "2023-02"),
  degree: "inżynier Matematyki Stosowanej",
)
- Średnia ocen (ndst: 2,0, cel: 5,5): 5,26.
// - Repeated Principal's Scholarship recipient
// - Year representative
- Zostałem wybrany do programu stypendialnego QuantStrats organizowanego przez Credit Suisse, w ramach którego otrzymałem stałą posadę jako Quantitative Developer.
- Kluczowe przedmioty: Algorytmy i Struktury Danych, Metody Numeryczne, Symulacje Komputerowe, Statystyka i Analiza Danych.
- Pisałem aplikacje, analizy i symulacje w *Python*, *R*, *Julia*. Projektowałem i odpytywałem bazy danych *SQL* (MariaDB).
// - Primarily interested in Mathematical Modelling, Probability Theory, and programming
- Zakończyłem studia pracą dyplomową "Wycena opcji przy pomocy modelu Hestona".

== Doświadczenie zawodowe

#work(
  title: "Model Validation Specialist",
  location: "Wrocław",
  company: "Commerzbank",
  dates: date_range(start-date: "2024-08", end-date: "obecnie"),
)

- Validating Counterparty Credit Risk models.
  Performing analyses using *R*, *Python*, *MS Excel*, and *SQL*; writing reports in *LaTeX*.
- Working with model developers on one side, and regulators on the other side; with many successes at coordinating findings with model owners.
  This requires a good balance of regulation-strictness and pragmatism.
- Constantly streamlining validation work, including responsible use of Artificial Intelligence for coding and document analysis.

#work(
  title: "Quantitative Developer",
  location: "Wrocław",
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

== Projekty

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

Panel do finansów osobistych (#emph[#underline[dash]board for #underline[per]sonal #underline[fin]ance]), którego używam regularnie do monitorowania wydatków rodzinnych.
Napisany w *Python* i *Plotly Dash*.

== Umiejętności
- *Języki programowania*: _biegłe_ *Rust*, *R*; _komfortowe_ *F\#*, *Python*; _znajome_ *C*, *C++*, *C\#*.
- *Technologie*: GNU/Linux, Git, Docker, Visual Studio (Code), TeamCity, GitLab, .NET, Dash.
- *Praktyki programowania*: testowanie (jednostkowe, integracyjne, regresyjne), Manifest Agile, systemy równoległe, konteneryzacja, programowanie objektowe, programowanie funkcyjne, CI/CD, code review, pair programming, asystenty LLM.
- *Miękkie*: cierpliwość, dzielenie się wiedzą, praca pod presją i priorytetyzacja.

#data_clause("Wyrażam zgodę na przetwarzanie moich danych osobowych na potrzeby procesu rekrutacji.")
