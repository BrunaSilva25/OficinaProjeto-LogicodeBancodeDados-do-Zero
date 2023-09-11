# OficinaProjeto-LogicodeBancodeDados-do-Zero
# Projeto de Banco de Dados para Oficina Automotiva

Este é um projeto de banco de dados para uma oficina automotiva que visa gerenciar informações sobre clientes, veículos, serviços e ordens de serviço. O banco de dados foi desenvolvido usando MySQL e segue uma estrutura lógica para atender às necessidades da oficina.

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

- `scripts_sql/`: Contém os scripts SQL para criar as tabelas e inserir dados de exemplo no banco de dados.
- `documentacao/`: Inclui documentação como descrição do esquema lógico, esquema conceitual e informações adicionais sobre o projeto e também imagens do modelo Lógico.
- `queries/`: Apresenta consultas SQL de exemplo para recuperar informações do banco de dados.


## Como Usar

1. **Configuração do Banco de Dados:** Execute os scripts SQL em `scripts_sql/` para criar o banco de dados e inserir dados de exemplo.

2. **Consultas SQL:** Explore as consultas SQL em `queries/` para recuperar informações específicas do banco de dados. Você pode adaptar ou criar novas consultas conforme necessário.



## Exemplos de Consultas

Aqui estão alguns exemplos de consultas SQL que você pode executar:

- Recupere todos os clientes.
```sql
SELECT * FROM Cliente;
