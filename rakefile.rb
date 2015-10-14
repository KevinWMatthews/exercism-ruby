require 'rake/testtask'

folder_to_test = 'food-chain'

task default: [:test]

Rake::TestTask.new do |t|
  puts "Running tests in #{folder_to_test}"
  t.libs << "tests"
  t.test_files = FileList["#{folder_to_test}/*test.rb"]
  # t.verbose = true
end
