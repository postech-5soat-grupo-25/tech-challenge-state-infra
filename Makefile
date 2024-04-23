.PHONY: backend-create backend-destroy

# Inicializa e aplica a configuração do Terraform para criar o backend
backend-create:
	@echo "Inicializando o Terraform..."
	terraform init
	@echo "Planejando as alterações do Terraform..."
	terraform plan
	@echo "Aplicando as alterações do Terraform..."
	terraform apply --auto-approve

# Inicializa e destrói a infraestrutura gerenciada pelo Terraform
backend-destroy:
	@echo "Inicializando o Terraform..."
	terraform init
	@echo "Destruindo a infraestrutura gerenciada pelo Terraform..."
	terraform destroy --auto-approve