#import "../ballot.typ": *

#set page(fill: color.linear-rgb(255, 255, 255, 255))
#repeat_ballot(ballot("אבג", [כופתה אחת \ בראשות גברת כופתה]))

#pagebreak()
#set page(fill: yellow)
#repeat_ballot(pm_ballot([גברת], [כופתה]))