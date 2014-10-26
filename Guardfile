# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
end

# guard-rspec (https://github.com/guard/guard-rspec)
#
# Available Options:
#   cmd: 'zeus rspec'      # specify a custom rpsec command to run, default: 'rspec'
#   spec_paths: ['spec']   # specify a custom array of paths that contain spec files
#   focus_on_failed: false # focus on the first 10 failed specs, rerun till they pass, default: true
#   keep_failed: true      # keep failed specs until they pass (add them to new ones), default: false
#   all_after_pass: true   # run all specs after changed specs pass, default: false
#   all_on_start: true     # run all the specs at startup, default: false
#   launchy: nil           # pass a path to an rspec results file, e.g. ./tmp/spec_results.html
#   notification: false    # display notification after the specs are done running, default: true
#   run_all: { cmd: 'custom rspec command', message: 'custom message' } # Custom options to use when running all specs.
#
guard :rspec, notification: true, failed_mode: :none, all_after_pass: false, all_on_start: false, cmd: 'spring rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/support/(.+)\.rb$})                   { |m| "spec/modules/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { ["spec/routing", "spec/requests"] }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  # Capybara request specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
end

# guard :cane do
#   watch(/.*\.rb/)
# end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

# guard :rubocop, all_on_start: false, cli: ['--format', 'clang', '--rails'], notification: :failed do
#   watch(%r{.+\.rb$})
#   watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
#   watch(%r{(?:.+/)?\.rubocop_todo\.yml$}) { |m| File.dirname(m[0]) }
# end
