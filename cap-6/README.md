# Capitulo 6
## Terraform with friends
Neste capitulo o livro explorar o uso do Terraform state e discutir tipos de backends.<br>
Tambem é citado o "race condition", um evento indesejado que ocorre quando dois usuarios tentam acessar ou modificar informcoes simultaneamente. Esse cenario pode resultar ao que é conhecido como corrupted state.
Além disso será abordado o uso do Terraform workspace para deploy de mutiplos ambientes e finalmente o Terraform enterprise<br>

O Terraform utilizar, por padrã, o local backend,uma vez que esse é o comportamento padrão do Terraform.<br>
O Backends desempenhar as seguintes acoes:
- Synchronize access to state files via locking
- Store sensitive information securely
- Keep a history of all state file revisions
- Override CLI operations
 

## Topology AWS
<table>
  <td>
<img src="" alt="Card-01">
  </td>
</table>

## Caracteristicas
Este projeto é dividido em 3 partes:
- Networking - Toda a parte relacionado a networking, VPC (Virtual Private Cloud), subnets e security groups
- Database - Banco de dados SQL da infraestrutura
- Autoscaling - Load balancer, EC2 autoscaling group e launch template


# Usage

- Com as chaves da AWS configurada no seu ambiente (Linux)

 ## Let's start bulding the web application on AWS
```bash
      $ terraform init  
      $ terraform apply
      
      -----------------------------------------------------------------------
      Outputs:

      db_password = "Xgc3XZiBQzIzEkB7" #SENHA DO BANCO
      lb_dns_name = "my-cool-project-931686103.us-east-1.elb.amazonaws.com" #DNS name do LB
  ```
  O comando destrói a infrasturura
  
  ```bash
      terraform destroy  
 ```
  
  
