variable "instance" {
  default = {
    mongodb = "t3.micro"
    redis = "t3.micro"
    mysql="t3.small"
  }
}

variable "zone_id"{
    default = "Z0994508312PR2YKTSFA1"
}

variable "domain_name"{
    default = "prathyusha.fun"
}

