#Install GIT
execute "apt-get install git" do
    command "apt-get install git -y"
    action :run
end

#download the code
execute "git clone" do
    command "git clone https://github.com/akyb/ChefDemo.git /tmp/ChefDemo"
end
