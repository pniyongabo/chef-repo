#Update the apt chache
execute "apt-get update" do
    command "apt-get update"
end

#Install java 8
execute "apt-get install java" do
    command "add-apt-repository ppa:webupd8team/java -y \n apt-get update -y \n apt-get install oracle-java8-installer -y"
end

