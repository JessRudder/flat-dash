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

pull1 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 1, repository_id: 1)
pull2 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 1, repository_id: 2)
pull3 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 1, repository_id: 3)
pull4 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 1, repository_id: 4)
pull5 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 1, repository_id: 5)
pull6 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 2, repository_id: 1)
pull7 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 2, repository_id: 2)
pull8 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 2, repository_id: 3)
pull9 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 2, repository_id: 4)
pull10 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 2, repository_id: 5)
pull11 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 3, repository_id: 1)
pull12 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 3, repository_id: 2)
pull13 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 3, repository_id: 3)
pull14 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 4, repository_id: 1)
pull15 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 4, repository_id: 2)
pull16 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 4, repository_id: 3)
pull17 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 5, repository_id: 1)
pull18 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 5, repository_id: 2)
pull19 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 5, repository_id: 3)
pull20 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 6, repository_id: 1)
pull21 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 7, repository_id: 1)
pull22 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 7, repository_id: 2)
pull23 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 7, repository_id: 3)
pull24 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 8, repository_id: 1)
pull25 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 8, repository_id: 2)
pull26 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 9, repository_id: 1)
pull27 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 10, repository_id: 1)
pull28 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 11, repository_id: 1)
pull29 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 12, repository_id: 1)
pull30 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 12, repository_id: 2)
pull31 = PullRequest.create(pull_created_at: "2014-09-04 23:17:16", pull_updated_at: "2014-09-05 19:08:28", programmer_id: 12, repository_id: 3)

branch1 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 1, repository_id: 1)
branch2 = Branch.create(name: "git-todo-ruby-005", programmer_id: 1, repository_id: 2)
branch3 = Branch.create(name: "clmystery-ruby-005", programmer_id: 1, repository_id: 3)
branch4 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 1, repository_id: 4)
branch5 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 1, repository_id: 5)
branch6 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 2, repository_id: 1)
branch7 = Branch.create(name: "git-todo-ruby-005", programmer_id: 2, repository_id: 2)
branch8 = Branch.create(name: "clmystery-ruby-005", programmer_id: 3, repository_id: 3)
branch9 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 3, repository_id: 4)
branch10 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 3, repository_id: 5)
branch11 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 4, repository_id: 1)
branch12 = Branch.create(name: "git-todo-ruby-005", programmer_id: 4, repository_id: 2)
branch13 = Branch.create(name: "clmystery-ruby-005", programmer_id: 5, repository_id: 3)
branch14 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 6, repository_id: 4)
branch15 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 6, repository_id: 5)
branch16 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 7, repository_id: 1)
branch17 = Branch.create(name: "git-todo-ruby-005", programmer_id: 7, repository_id: 2)
branch18 = Branch.create(name: "clmystery-ruby-005", programmer_id: 8, repository_id: 3)
branch19 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 8, repository_id: 4)
branch20 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 8, repository_id: 5)
branch21 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 9, repository_id: 1)
branch22 = Branch.create(name: "git-todo-ruby-005", programmer_id: 9, repository_id: 2)
branch23 = Branch.create(name: "clmystery-ruby-005", programmer_id: 9, repository_id: 3)
branch24 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 10, repository_id: 4)
branch25 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 10, repository_id: 5)
branch26 = Branch.create(name: "rake-todo-ruby-004", programmer_id: 11, repository_id: 1)
branch27 = Branch.create(name: "git-todo-ruby-005", programmer_id: 11, repository_id: 2)
branch28 = Branch.create(name: "clmystery-ruby-005", programmer_id: 12, repository_id: 3)
branch29 = Branch.create(name: "todo-ruby-basics-ruby-005", programmer_id: 12, repository_id: 4)
branch30 = Branch.create(name: "ruby-vowels-ruby-005", programmer_id: 12, repository_id: 5)

commit1 = Commit.create(commit_message: "got it done", commit_created_at: "2014-09-04 19:08:28", branch_id: 1)
commit2 = Commit.create(commit_message: "finished", commit_created_at: "2014-09-04 19:08:27", branch_id: 2)
commit3 = Commit.create(commit_message: "adds some important stuff", commit_created_at: "2014-09-04 19:08:22", branch_id: 5)
commit4 = Commit.create(commit_message: "I'm so frustrated", commit_created_at: "2014-09-04 17:08:28", branch_id: 8)
commit5 = Commit.create(commit_message: "Updates db table", commit_created_at: "2014-09-04 16:08:28", branch_id: 12)
commit6 = Commit.create(commit_message: "I think it works", commit_created_at: "2014-09-04 20:08:28", branch_id: 13)
commit7 = Commit.create(commit_message: "done", commit_created_at: "2014-09-04 19:08:29", branch_id: 14)
commit8 = Commit.create(commit_message: "still having trouble with EVERYTHING", commit_created_at: "2014-09-04 19:07:23", branch_id: 21)
commit9 = Commit.create(commit_message: "created some critical classes", commit_created_at: "2014-09-04 19:06:28", branch_id: 22)
commit10 = Commit.create(commit_message: "you wish you were as awesome as I am", commit_created_at: "2014-09-04 19:05:28", branch_id: 23)
commit11 = Commit.create(commit_message: "So happy for built in meth", commit_created_at: "2014-09-04 19:10:28", branch_id: 24)
commit12 = Commit.create(commit_message: "Look...it's done", commit_created_at: "2014-09-04 19:14:28", branch_id: 28)
commit13 = Commit.create(commit_message: "done", commit_created_at: "2014-09-04 19:13:28", branch_id: 29)
commit14 = Commit.create(commit_message: "Why won't this work????", commit_created_at: "2014-09-04 19:18:28", branch_id: 30)
commit15 = Commit.create(commit_message: "Please work...", commit_created_at: "2014-09-04 12:18:28", branch_id: 11)