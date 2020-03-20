person_list = [
	{ name: "Logan", bio: "I love doing tasks" },
	{ name: "Audrey", bio: "Has a lot of fun finishing tasks" },
	{ name: "Ricky", bio: "Tasks a lot" },
	{ name: "Sarah", bio: "Doesn't like tasks" }
]

person_list.each do |person|
	Person.create(person)
end

task_list = [
  { name: "Walk the dog", description: "Around the park at night", person_id: 1 },
  { name: "Hangout", description: "With your friends after class", person_id: 1 },
  { name: "Dinner", description: "With Becca, Annalee, and Brittany", person_id: 2 },
  { name: "HW", description: "Rails zombie 2", person_id: 3 },
  { name: "Garden", description: "Plant the new flowers", person_id: 3 },
  { name: "Call Dad", description: "He's always worrying", person_id: 3 },
  { name: "Nap", description: "Sleep it off.", person_id: 4 }
]

task_list.each do |task|
  Task.create(task)
end