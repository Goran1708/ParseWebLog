require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['spec/*_test.rb', 'spec/orderers/*_test.rb']
  t.verbose = true
end
