
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

projects.each { |name| Project.create({ name: name }) }

