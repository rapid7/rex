require "bundler/gem_tasks"

require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new do |t|
    t.files = ['lib/**/*.rb', '-', 'README.markdown', 'examples/*.rb']
end

task :default => [ :yard ]

