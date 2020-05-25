# marvel-hero-info

![](marvel-hero-info.gif)

## Sobre este projeto
 
Marvel Hero Info, é uma aplicação WEB que consome dados da API da [MARVEL](https://developer.marvel.com/), no caso, dados de heróis. A aplicação apresenta todos os heróis disponibilizados pela API em uma página inicial, e ao clicar sobre a foto ou nome do herói, você é redirecionado para uma página com mais detalhes sobre o mesmo. Ainda, é possível pesquisar o nome do herói desejado por meio de uma barra de pesquisa.

## Dependências do sistema

Para executar esse projeto será necessário:
    
  1. Ruby on Rails e suas dependências(Ruby, SQLite3, Node.js e Yarn)
  2. PostgreSQL 

## Configuração

Em __config/database.yml__ você deve definir seu usuário, senha e porta do banco de dados, da seguinte maneira:
```
development:
  <<: *default
  host: localhost
  database: marvel_heroes_info_development
  username: seu_username
  password: sua_senha
  port: a_porta_do_banco_de_dados
```
```
test:
  <<: *default
  database: marvel_heroes_info_test
  username: seu_username
  password: sua_senha
```

## Criar o banco de dados

Para criar o banco de dados basta executar `rake db:create` no seu terminal.

## Inicializar o Banco de Dados

A inicialização do banco de dados é feita em duas etapas:

  1. Realize a migração de banco de dados com o comando `rake db:migrate`
  2. Utilize o comando `rake db:seed` para popular o banco de dados

## Como executar o conjunto de testes

Para executar o conjunto de testes basta utilizar o comando `rspec`

## Como executar o projeto

OBS: Para executar o projeto, obrigatoriamente, você deve ter feito todas as configurações indicadas e ter criado e inicializado o banco de dados.

Para executar o projeto siga as seguintes etapas:

  1. Instale as dependências com o comando `bundle install`
  2. Inicie o servidor com o comando `rails server`
  3. Abra o navegador de sua preferência e acesse o endereço __localhost:3000__