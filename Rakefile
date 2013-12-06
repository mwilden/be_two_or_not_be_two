require 'bundler'
require 'rake'

desc "Run all Expect scripts"
task :expect do
  any_errors = false
  Dir.glob('features/*.exp') do |file_name|
    print "Testing #{file_name}..."
    `expect #{file_name}`
    if $?.exitstatus.zero?
      print "OK"
    else
      any_errors = true
      print "Failed"
    end
    puts
  end
  puts "OK" unless any_errors
end

task default: :expect
