output "volume_id" {

  value = aws_ebs_volume.won_bills_ebs.id

}

output "volume_arn" {

  value = aws_ebs_volume.won_bills_ebs.arn

}

output "volume_size" {

  value = aws_ebs_volume.won_bills_ebs.size

}

output "volume_type" {

  value = aws_ebs_volume.won_bills_ebs.type

}

output "volume_iops" {

  value = aws_ebs_volume.won_bills_ebs.iops

}

output "volume_throughput" {

  value = aws_ebs_volume.won_bills_ebs.throughput

}

output "snapshot_id" {

  value = aws_ebs_snapshot.won_bills_snapshot.id

}

output "attached_instance_id" {

  value = var.instance_id

}

output "device_name" {

  value = var.device_name

}