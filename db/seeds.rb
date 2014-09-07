
#   create_table "branches", force: true do |t|
#     t.text    "name"
#     t.integer "programmer_id"
#     t.integer "repository_id"
#   end

#   create_table "commits", force: true do |t|
#     t.text     "commit_message"
#     t.datetime "commit_created_at"
#     t.integer  "branch_id"
#     t.integer  "programmer_id"
#     t.integer  "repository_id"
#   end

#   create_table "programmer_repositories", force: true do |t|
#     t.integer  "programmer_id"
#     t.integer  "repository_id"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end

#   create_table "pull_requests", force: true do |t|
#     t.datetime "pull_created_at"
#     t.datetime "pull_updated_at"
#     t.integer  "programmer_id"
#     t.integer  "repository_id"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end

# end


natalie = Programmer.create(name: "natalieparellano")
peter = Programmer.create(name: "pcrglennon")
will = Programmer.create(name: "wlowry88")
ben = Programmer.create(name: "kamoh")
brandon = Programmer.create(name: "brandon")
avi = Programmer.create(name: "aviflombaum")
jess = Programmer.create(name: "jessrudder")
josh = Programmer.create(name: "joshrudder")
catherine = Programmer.create(name: "ccmeyers7")
denine = Programmer.create(name: "denineguy")
christina = Programmer.create(name: "christinaleuci")
joe = Programmer.create(name: "joestheman")

repo1 = Repository.create(name: "rake-todo-ruby-004")
repo2 = Repository.create(name: "git-todo-ruby-005")
repo3 = Repository.create(name: "clmystery-ruby-005")
repo4 = Repository.create(name: "todo-ruby-basics-ruby-005")
repo4 = Repository.create(name: "ruby-vowels-ruby-005")

pr1 = ProgrammerRepository.create(programmer_id: 1, repository_id: 1)
pr2 = ProgrammerRepository.create(programmer_id: 1, repository_id: 2)
pr3 = ProgrammerRepository.create(programmer_id: 1, repository_id: 3)
pr4 = ProgrammerRepository.create(programmer_id: 1, repository_id: 4)
pr6 = ProgrammerRepository.create(programmer_id: 1, repository_id: 5)
pr7 = ProgrammerRepository.create(programmer_id: 2, repository_id: 1)
pr8 = ProgrammerRepository.create(programmer_id: 2, repository_id: 2)
pr9 = ProgrammerRepository.create(programmer_id: 2, repository_id: 3)
pr10 = ProgrammerRepository.create(programmer_id: 2, repository_id: 4)
pr11 = ProgrammerRepository.create(programmer_id: 2, repository_id: 5)
pr12 = ProgrammerRepository.create(programmer_id: 3, repository_id: 1)
pr13 = ProgrammerRepository.create(programmer_id: 3, repository_id: 2)
pr14 = ProgrammerRepository.create(programmer_id: 3, repository_id: 3)
pr15 = ProgrammerRepository.create(programmer_id: 3, repository_id: 4)
pr16 = ProgrammerRepository.create(programmer_id: 3, repository_id: 5)
pr17 = ProgrammerRepository.create(programmer_id: 4, repository_id: 1)
pr18 = ProgrammerRepository.create(programmer_id: 4, repository_id: 2)
pr19 = ProgrammerRepository.create(programmer_id: 4, repository_id: 3)
pr20 = ProgrammerRepository.create(programmer_id: 4, repository_id: 4)
pr21 = ProgrammerRepository.create(programmer_id: 4, repository_id: 5)
pr22 = ProgrammerRepository.create(programmer_id: 5, repository_id: 1)
pr23 = ProgrammerRepository.create(programmer_id: 5, repository_id: 2)
pr24 = ProgrammerRepository.create(programmer_id: 5, repository_id: 3)
pr25 = ProgrammerRepository.create(programmer_id: 5, repository_id: 4)
pr26 = ProgrammerRepository.create(programmer_id: 5, repository_id: 5)
pr27 = ProgrammerRepository.create(programmer_id: 6, repository_id: 1)
pr28 = ProgrammerRepository.create(programmer_id: 6, repository_id: 2)
pr29 = ProgrammerRepository.create(programmer_id: 6, repository_id: 3)
pr30 = ProgrammerRepository.create(programmer_id: 6, repository_id: 4)
pr31 = ProgrammerRepository.create(programmer_id: 6, repository_id: 5)
pr32 = ProgrammerRepository.create(programmer_id: 7, repository_id: 1)
pr33 = ProgrammerRepository.create(programmer_id: 7, repository_id: 2)
pr34 = ProgrammerRepository.create(programmer_id: 7, repository_id: 3)
pr35 = ProgrammerRepository.create(programmer_id: 7, repository_id: 4)
pr36 = ProgrammerRepository.create(programmer_id: 7, repository_id: 5)
pr37 = ProgrammerRepository.create(programmer_id: 8, repository_id: 1)
pr38 = ProgrammerRepository.create(programmer_id: 8, repository_id: 2)
pr39 = ProgrammerRepository.create(programmer_id: 8, repository_id: 3)
pr40 = ProgrammerRepository.create(programmer_id: 8, repository_id: 4)
pr41 = ProgrammerRepository.create(programmer_id: 8, repository_id: 5)
pr42 = ProgrammerRepository.create(programmer_id: 9, repository_id: 1)
pr43 = ProgrammerRepository.create(programmer_id: 9, repository_id: 2)
pr44 = ProgrammerRepository.create(programmer_id: 9, repository_id: 3)
pr45 = ProgrammerRepository.create(programmer_id: 9, repository_id: 4)
pr46 = ProgrammerRepository.create(programmer_id: 9, repository_id: 5)
pr47 = ProgrammerRepository.create(programmer_id: 10, repository_id: 1)
pr48 = ProgrammerRepository.create(programmer_id: 10, repository_id: 2)
pr49 = ProgrammerRepository.create(programmer_id: 10, repository_id: 3)
pr50 = ProgrammerRepository.create(programmer_id: 10, repository_id: 4)
pr51 = ProgrammerRepository.create(programmer_id: 10, repository_id: 5)
pr52 = ProgrammerRepository.create(programmer_id: 11, repository_id: 1)
pr53 = ProgrammerRepository.create(programmer_id: 11, repository_id: 2)
pr54 = ProgrammerRepository.create(programmer_id: 11, repository_id: 3)
pr55 = ProgrammerRepository.create(programmer_id: 11, repository_id: 4)
pr56 = ProgrammerRepository.create(programmer_id: 11, repository_id: 5)
pr57 = ProgrammerRepository.create(programmer_id: 12, repository_id: 1)
pr58 = ProgrammerRepository.create(programmer_id: 12, repository_id: 2)
pr59 = ProgrammerRepository.create(programmer_id: 12, repository_id: 3)
pr60 = ProgrammerRepository.create(programmer_id: 12, repository_id: 4)
pr61 = ProgrammerRepository.create(programmer_id: 12, repository_id: 5)