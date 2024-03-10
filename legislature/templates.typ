#let numbering_from_second = (..numbers) => {
  let level = numbers.pos().len()
  if (level == 1) {
    return
  } else {
    return numbering("1.1", ..numbers.pos().slice(1, level))
  }
}

#let constitutional_amendement_en(title, preamble: [], doc) = {
  set heading(numbering: numbering_from_second)
  set heading(supplement: "Section")
  heading(level: 1)[
    #set text(size: 18pt)
    Constitional Amendement: #title
  ]
  heading(level: 3, numbering: none)[
    #set text(size: 14pt)
    Preamble
  ]
  preamble
  show heading.where(level: 3): (it) => {
    parbreak()
    counter(heading).display()
  }
  counter(heading).update(1)
  doc
}

#let constitutional_amendement_he(title, preamble: []) = {
  heading(level: 1)[
    Amendement Constitutionnel: #title
  ]
  heading(level: 2)[
    "הקדמה"
  ]
  preamble
  counter(heading).update(1)
  doc
}


#let show_hebrew = false

#let eng_heb(eng: [], heb: []) = {
  if show_hebrew {
    heb
  } else {
    eng
  }
}

#let show_hebrew(heb: true, doc) = {
  if heb {
    doc.hebrew
  } else {
    doc.english
  }
}