# .tfstate | PosTech 5SOAT • Grupo 25

Este repositório contém os arquivos necessários para configurar um backend para o Terraform usando o Amazon S3 e o DynamoDB. O objetivo é fornecer uma solução robusta e segura para o armazenamento do estado do Terraform e o bloqueio de estado, respectivamente.

## Por que S3 + DynamoDB?

O S3 é usado para armazenar o estado do Terraform, permitindo o versionamento e a criptografia dos arquivos de estado. Isso garante que as mudanças no estado possam ser rastreadas e revertidas se necessário, além de proteger os dados.

O DynamoDB é utilizado para o bloqueio de estado, prevenindo que múltiplas instâncias do Terraform apliquem mudanças ao mesmo tempo, o que poderia levar a estados inconsistentes. A combinação desses serviços oferece uma solução de backend robusta para projetos Terraform de qualquer escala.

## Como Utilizar?

Antes de começar, você precisará ter o Terraform instalado em sua máquina. Além disso, é necessário configurar suas credenciais da AWS para permitir que o Terraform crie recursos em sua conta.

Este repositório inclui um `Makefile` para simplificar o processo de criação e destruição do backend do Terraform.

### Construndo o Backend

Para criar o backend, execute o seguinte comando:

```bash
make backend-create
```

Este comando inicializará o Terraform, planejará as alterações necessárias e aplicará a configuração para criar o backend, incluindo o bucket S3 e a tabela DynamoDB.

### Destruindo o Backend

Para destruir o backend criado, utilize o comando:

```bash
make backend-destroy
```

Este comando inicializará o Terraform e destruirá a infraestrutura gerenciada pelo Terraform, removendo o bucket S3 e a tabela DynamoDB.