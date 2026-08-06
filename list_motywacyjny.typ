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
#pad(bottom: 5pt)[#heading(level: 1, author)]

// Personal Info
#rect(inset: (x: 0pt, y: 5pt), outset: (x: 0pt, y: 5pt), fill: light_color)[
  #h(1fr) #(contact-item(phone, link-type: "tel:") + "  |  " + contact-item(email, link-type: "mailto:")) #h(1fr)
]

Szukam pracy jako programista, ale programowanie nie jest dla mnie tylko zawodem #sym.dash.em to sposób myślenia, który poznałem na studiach i odnalazłem się w nim jak ryba w wodzie.
Lubię, kiedy problem trzeba naprawdę zrozumieć, zanim zacznie się go rozwiązywać.

Zawodowo pracowałem przy aplikacjach trader-skich w Credit Suisse, a obecnie waliduję modele ryzyka w Commerzbanku.
To dobre doświadczenia, ale z czasem odkryłem, że najwięcej satysfakcji daje mi programowanie samo w sobie.
Najbardziej lubię języki statycznie typowane o cechach funkcyjnych #sym.dash.em moim ulubionym językiem jest Rust #sym.dash.em ale jestem otwarty na inne języki.

Uczę się szybko i chętnie, bo to po prostu lubię #sym.dash.em nie dlatego, że muszę.
Podobnie z ogromną przyjemnością dzielę się wiedzą.
Nie boję się wyzwań, ani tego że czegoś jeszcze nie wiem #sym.dash.em wręcz przeciwnie, to zwykle najlepszy powód, żeby się tym zająć.
Nie uciekam od trudnych problemów.
Wolę spędzić dodatkową godzinę na dobrym zrozumieniu problemu niż wracać do niego za trzy miesiące przy problemie na produkcji.

Jeśli szukają Państwo kogoś, kto lubi programować, traktuje jakość kodu poważnie i nie zatrzymuje się na #emph[good enough], chętnie porozmawiam.

#align(right)[
  Z poważaniem \
  Borys Kopeć
]

#data_clause("Wyrażam zgodę na przetwarzanie moich danych osobowych na potrzeby procesu rekrutacji.")
