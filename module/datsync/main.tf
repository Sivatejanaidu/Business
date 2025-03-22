resource "aws_fsx_ontap_file_system" "testsingleazgen2" {
  storage_capacity                = 4096
  subnet_ids                      = [aws_subnet.test1.id]
  deployment_type                 = "SINGLE_AZ_2"
  ha_pairs                        = 4
  throughput_capacity_per_ha_pair = 384
  preferred_subnet_id             = aws_subnet.test1.id
}
