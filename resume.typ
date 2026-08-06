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
== Education

#edu(
  institution: "Wrocław University of Science and Technology",
  location: "Wrocław, Poland",
  dates: dates-helper(start-date: "X 2019", end-date: "II 2023"),
  degree: "Bachelor of Science in Applied Mathematics",
  consistent: true,
)
- Grade (fail: 2.0, max: 5.5): 5.26
- Repeated Principal's Scholarship recipient
- Year representative
- Proudly selected for QuantStrats Scholarship Programme organised by Credit Suisse at which I got offered a permanent position as Quantitative Developer
- Relevant coursework: Statistics & Data Analysis, Numerical Methods & Computer Simulations, Algorithms & Data structures
- Writing apps, analyses, and simulations in _Python_, _R_, _Julia_.
- Primarily interested in Mathematical Modelling, Probability Theory, and programming
- Concluded the degree with thesis "Estimating option prices with the Heston model"

== Work Experience

#work(
  title: "Model Validation Specialist",
  location: "Wrocław, Poland",
  company: "Commerzbank",
  dates: dates-helper(start-date: "VIII 2024", end-date: "present"),
)

#work(
  title: "Quantitative Developer",
  location: "Wrocław, Poland",
  company: "Credit Suisse",
  dates: dates-helper(start-date: "VI 2022", end-date: "VII 2024"),
)

// == Projects
//
// #project(
//   name: "Gra",
//   url: "github.com/B0ryskart0n/gra",
// )
// -

== Skills
- *Programming Languages*: Rust, F\#, R, Python
- *Technologies*: GNU/Linux, Git, Visual Studio (Code), Microsoft Excel
- *Software development practices*: Agile manifesto, Object-oriented programming, Functional programming, Continuous integration & delivery
- *Soft*: Patience, Knowledge sharing, Prioritization
