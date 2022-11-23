resource "aws_ecs_cluster" "ecs-observabilidade" {
  name = "ecs-pd"
}
resource "aws_ecs_cluster_capacity_providers" "ecs-pd" {
  cluster_name = "ecs-pd"

  capacity_providers = ["FARGATE"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 10
    capacity_provider = "FARGATE"
  }
}



 