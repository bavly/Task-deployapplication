Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.image = "tomcat:latest"
    d.name = "tomcat"
    d.ports = [“8080:80”]
    d.name = “tomcat-container”
    d.remains_running = true
  end
end