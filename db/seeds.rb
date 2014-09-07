
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

#   create_table "programmers", force: true do |t|
#     t.string   "name"
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

#   create_table "repositories", force: true do |t|
#     t.string "name"
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

flatdash = Project.create(name: "Flat Dash", program_id: 1, company_id: 1)
sillyiosthing = Project.create(name: "Silly iOS Thing", program_id: 2, company_id: 1)
playlister = Project.create(name: "Playlister", program_id: 1, company_id: 1)

join1 = StudentProject.create(student_id: 1, project_id: 1)
join2 = StudentProject.create(student_id: 2, project_id: 1)
join3 = StudentProject.create(student_id: 3, project_id: 1)
join4 = StudentProject.create(student_id: 3, project_id: 3)
join5 = StudentProject.create(student_id: 4, project_id: 2)
