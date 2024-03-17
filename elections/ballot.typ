

#let ballot(initials, name) = {
  set align(center)
  rect([ 
      #set text(lang: "he", font: "FrankRuehl")
      #set text(size: 72pt)
      #v(0.5cm)
      #initials 
      #v(-60pt)
      #set text(size: 16pt)
      #name
    
    
  ], height: 5.96cm, width: 4.2cm)
}

#let repeat_ballot(ballot, lines: 3) = {
  for j in range(3) {
    let l = ()
    for i in range(5) {
      l.push(ballot)
    }
    stack(dir: ltr, ..l)
    v(-14pt)
  }
}

