//////////////////////////////////////////////////////////////////////////////// Variables
#let author = "Borys Kopeć"
#let email = "boryskopec00@gmail.com"
#let phone = "+48 987 654 321"

//////////////////////////////////////////////////////////////////////////////// Configuration
#let dark_color = rgb("#625892")
#let light_color = rgb("#e9e4f8")
#let font_size = 11pt
#let big_font_size = 2 * font_size

#set document(author: author, title: author + " cover letter")
#set page(paper: "a4")
#set text(
  font: "libertinus serif",
  size: font_size,
  lang: "pl",
  // Disable ligatures so ATS systems do not get confused when parsing fonts.
  ligatures: false,
)

#show link: underline
#show heading: set text(
  fill: rgb(dark_color),
)
#show heading.where(level: 1): heading => [
  #set align(center)
  #set text(size: big_font_size)
  #pad(heading.body)
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
#let data_clause(content) = {
  place(
    bottom + right,
  )[#emph(content)]
}

//////////////////////////////////////////////////////////////////////////////// Contents
#pad(bottom: 5pt)[#heading(level: 1, author)]

// Personal Info
#rect(inset: (x: 0pt, y: 5pt), outset: (x: 0pt, y: 5pt), fill: light_color)[
  #h(1fr) #(contact-item(phone, link-type: "tel:") + "  |  " + contact-item(email, link-type: "mailto:")) #h(1fr)
]

I'm looking for a job as a software developer, but programming is more than just a profession to me---it's a way of thinking that I discovered in college and fell in love with.
I enjoy problems that require a genuine understanding before you can even begin to solve them.

Professionally, I've worked on applications for traders at Credit Suisse, and I currently validate risk models at Commerzbank.
These experiences have taught me to work in environments with high standards for quality and precision.
Along the way, I discovered just how much programming drives me.
I'm particularly fond of statically typed languages with functional programming features.
Rust is my favorite, but I'm open to other languages as well.

I learn quickly and eagerly because I genuinely enjoy it, not because I have to.
In my spare time, I work on personal programming projects (a roguelike game, a multithreaded HTTP server, and others) and contribute to open-source projects.
Learning programming this way is what I find most rewarding.

I'm not afraid of challenges or not knowing something yet---quite the opposite: that's usually the best reason to dive in.
I don't shy away from difficult problems.
I'd rather spend an extra hour truly understanding a problem than have to revisit it three months later when it causes an issue in production.

If you're looking for someone who enjoys programming, takes code quality seriously, and doesn't settle for _good enough_, I'd be happy to talk and demonstrate through examples from my professional work and personal projects what that means in practice.

#align(right)[
  Best regards \
  Borys Kopeć
]

#data_clause("I hereby consent to my personal data included in this resume being processed for recruitment purposes.")
