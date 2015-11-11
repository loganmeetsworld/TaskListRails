task_list = [
  { name: "Walk the dog", description: "Around the park at night" },
  { name: "Hangout", description: "With your friends after class" },
  { name: "Dinner", description: "With Becca, Annalee, and Brittany" },
  { name: "HW", description: "Rails zombie 2" },
  { name: "Garden", description: "Plant the new flowers" },
  { name: "Call Dad", description: "He's always worrying" },
  { name: "Nap", description: "Sleep it off." }
]

task_list.each do |task|
  Task.create(task)
end
