resource "docker_container" "mohit1talmale/demo-project" {
  image = "mohit1talmale/demo-project:newtag2"
  name  = "mohit1talmale/demo-project"
#   restart = "always"
#   volumes {
#     container_path  = "/myapp"
#     # replace the host_path with full path for your project directory starting from root directory /
#     host_path = "/path/to/your/project/directory" 
#     read_only = false
#   }
  ports {
    internal = 8080
    external = 80
  }
}