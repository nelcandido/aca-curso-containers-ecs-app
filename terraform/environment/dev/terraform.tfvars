region = "us-east-1"

cluster_name = "aca-ecs-cluster"

service_name = "chip"

service_port = 8080

service_cpu = 256

service_memory = 512

service_launch_type = "EC2"

service_task_count = 3

ssm_vpc_id = "/aca-vpc/vpc/vpc_id"

ssm_listener = "/aca/ecs/lb/listener"

ssm_private_subnet_1 = "/aca-vpc/vpc/subnet_private_1a"

ssm_private_subnet_2 = "/aca-vpc/vpc/subnet_private_1b"

ssm_private_subnet_3 = "/aca-vpc/vpc/subnet_private_1c"

service_hosts = [
  "chip.linuxtips.demo"
]

environment_variables = [
  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "PING",
    value = "PONG"
  }
]

capabilities = ["EC2"]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timout              = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}