variable "project_name" {
description = "Nombre de la proyecto"
type = string
default = "my-project"
}

variable "author" {
description = "Nombre del autor o autora"
type = string
}

variable "environment" {
description = "Entorno de despliegue"
type = string
default = "dev"
}