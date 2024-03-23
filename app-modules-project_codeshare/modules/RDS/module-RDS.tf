module "RDStest123" {
  source            = "../../RDS-module"
  allocated_storage = "10"
  db_name           = "RDStest123"
  instance_class    = "db.t3.micro"
}