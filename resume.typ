#import "@preview/basic-resume:0.2.9": *
#show: resume.with(
  author: "Borys Kopeć",
  //location: "Wrocław, Poland",
  email: "boryskopec00@gmail.com",
  github: "github.com/B0ryskart0n",
  linkedin: "linkedin.com/in/boryskopec",
  phone: "+48 987 654 321",
  //personal-site: "",
  accent-color: "#625892",
  font: "libertinus serif",
  font-size: 11pt,
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)
/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

#let date_range(start-date: "", end-date: "") = {
  start-date + " " + $dash.en$ + " " + end-date
}

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
  consistent: true,
)
- GPA (fail: 2.0, max: 5.5): 5.26
- Repeated Principal's Scholarship recipient
// - Year representative
- Proudly selected for QuantStrats Scholarship Programme organised by Credit Suisse at which I got offered a permanent position as Quantitative Developer
- Relevant coursework: Statistics & Data Analysis, Numerical Methods & Computer Simulations, Algorithms & Data structures
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
// - *TODO* Driver for the service solution
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
