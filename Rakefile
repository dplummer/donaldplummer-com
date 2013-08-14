desc "Build the static site"
task :build do
  sh 'middleman build'
end

desc "Run a middleman server for a live preview"
task :preview do
  sh 'middleman server'
end

desc "Deploy the static site to the live server"
task :deploy => [:build] do
  system("rsync -avzP --delete build/ donaldplummer@donaldplummer.com:public_html")
end
