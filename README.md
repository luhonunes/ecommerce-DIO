# E-commerce Database Modeling
Este é um projeto do bootcamp Potência Tech powered by iFood | Ciências de Dados com Python, no qual foi solicitada a replicação da modelagem lógica de um banco de dados para um cenário de e-commerce. O objetivo é aplicar o mapeamento dos modelos aos refinamentos propostos no módulo de modelagem conceitual.

## Desafio
O desafio consiste em refinar o modelo apresentado originalmente, acrescentando os seguintes pontos:

- Cliente PJ e PF: Uma conta pode ser de pessoa jurídica (PJ) ou pessoa física (PF), mas não pode ter ambas as informações.
- Pagamento: Um cliente pode ter cadastrado mais de uma forma de pagamento.
- Entrega: Cada entrega possui um status e um código de rastreamento.

## Tarefas
As seguintes tarefas devem ser realizadas:

- Realizar a criação do script SQL para criação do esquema do banco de dados.
- Persistir dados para realização de testes.
- Especificar queries mais complexas do que as apresentadas durante a explicação do desafio. As queries devem contemplar as seguintes cláusulas:
- Recuperações simples com SELECT Statement.
- Filtros com WHERE Statement.
- Criação de expressões para gerar atributos derivados.
- Definição de ordenações dos dados com ORDER BY.
- Condições de filtros aos grupos com HAVING Statement.
- Criação de junções entre tabelas para fornecer uma perspectiva mais complexa dos dados.

## Exemplos de Perguntas e Consultas SQL
Aqui estão algumas perguntas que podem ser respondidas pelas consultas SQL:

- Quantos pedidos foram feitos por cada cliente?
- Existe algum vendedor que também é fornecedor?
- Qual é a relação entre os produtos fornecedores e os estoques?
- Quais são os nomes dos fornecedores e os nomes dos produtos?
