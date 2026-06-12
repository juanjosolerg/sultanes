locals {
project_dir ="${var.base_dir}/output/${var.project_name}"
gitignore_content = <<-fin
    .env
    node_modules/
    *.log
fin    
}

resource "local_file" "readme" {
filename ="${local.project_dir}/README.md"
content = <<-EOT
    # ${var.project_name}
    Autor: ${var.author}
    Entorno: ${upper(var.environment)}
    Generado automáticamente con Terraform para la startup DevForge
EOT
}

resource "local_file" "src_keep" {
filename ="${local.project_dir}/scr/.keep"
content = ""
}

resource "local_file" "test_keep" {
filename ="${local.project_dir}/tests/.keep"
content = ""
}

resource "local_file" "gitignore" {
filename ="${local.project_dir}/.gitignore"
content = local.gitignore_content
}

resource "local_file" "docs_index" {
filename ="${local.project_dir}/docs/index.md"
content = "# Documentación.\n\nAqui se hará la documentación del proyecto"
}