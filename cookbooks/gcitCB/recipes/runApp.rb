#run the code
execute "run file.jar in directory" do
  command "nohup java -jar LMS-0.0.1-SNAPSHOT.jar &"
  cwd "/tmp/ChefDemo/"
  action :run
end