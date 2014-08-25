
projects = [
  "Accounting",
  "Big Thing 1",
  "Other Big Thing"
]
colors = [
  { name: "Yellow", value: "FFFF00" },
  { name: "Red", value: "FF0000" },
  { name: "Blue", value: "0000FF" },
  { name: "Green", value: "00FF00" }
]
skills = [ "Networking", "Databases" ]
roles = [
  { name: "UI Engineer", color_id: 1 },
  { name: "Test Engineer", color_id: 2 },
  { name: "App Developer", color_id: 3 },
  { name: "DB Developer", color_id: 4 }
]
people = [
  { name: "Billy" },
  { name: "Bob" },
  { name: "Joe" },
  { name: "Steve" },
  { name: "Donnie" }
]

projects.each { |name| Project.find_or_create_by({ name: name }) }
colors.each { |color| Color.find_or_create_by(color) }
skills.each { |name| Skill.find_or_create_by({ name: name }) }
roles.each { |role| Role.find_or_create_by(role) }
people.each { |person| Person.find_or_create_by(person) }

