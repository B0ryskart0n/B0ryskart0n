//////////////////////////////////////////////////////////////////////////////// Variables
#let author = "Borys Kopeć"
#let email = "boryskopec00@gmail.com"
#let phone = "+48 987 654 321"

//////////////////////////////////////////////////////////////////////////////// Configuration
#let dark_color = rgb("#625892")
#let light_color = rgb("#e9e4f8")
#let font_size = 11pt
#let big_font_size = 2 * font_size

#set document(author: author, title: author + " list motywacyjny")
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
#heading(level: 1, author)

// Personal Info
#align(center)[#(contact-item(phone, link-type: "tel:") + "  |  " + contact-item(email, link-type: "mailto:"))]

I've been writing Rust seriously for a while now, and something about it just clicked for me.
Maybe it's the mathematical rigour baked into the type system, or the way it forces you to think carefully before you act — which, as someone with a background in Applied Mathematics, feels like home.
I came to Rust through F\# and functional programming more broadly, and I brought that mindset with me: composition over mutation, correctness over cleverness, understanding over shortcuts.

My career so far has been in quantitative finance — working on front-office pricing systems at Credit Suisse, then validating risk models at Commerzbank.
I learned a lot.
I also learned that I'd prefer to spend my energy on problems someone cares about, with people who care about the craft.

What I bring is a particular kind of stubbornness — I don't move on until I actually understand something.
My colleagues know that if I'm handling something, it's going to be resolved properly, not papered over.
That same instinct shapes how I write code: I'd rather spend an extra hour getting the abstraction right than debug the same thing three months later.

Outside work, I'm slowly building a roguelite game in Rust.
It's not a portfolio piece, it's just something I love making and I'd like to play it with my brothers someday.

If any of this resonates, I'd genuinely enjoy a conversation.

Borys Kopeć

#data_clause("Wyrażam zgodę na przetwarzanie moich danych osobowych na potrzeby procesu rekrutacji.")
