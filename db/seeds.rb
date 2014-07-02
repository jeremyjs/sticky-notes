
projects = [
  "Accounting",
  "Brazil",
  "SMB",
  "Colussus",
  "NetCredit",
  "CA/AU Metrix",
  "QQR",
  "Aperture",
  "CSO",
  "Dynamics",
  "Onstride",
  "FCA",
  "TXCSO",
  "UX",
  "Intern",
  "Rubinius",
  "Portfolio",
  "Identity"
]

projects.each { |name| Project.find_or_create_by({ name: name }) }

people = [
  { name: "Nicole" },
  { name: "Ian" },
  { name: "Calvin" },
  { name: "Mert" }
]

people.each { |person| Person.find_or_create_by(person) }
