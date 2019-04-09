# Base de dados MySQL de CEPs do Brasil

Banco de dados em MySQL com estrutra de ceps semelhante a dos correios com ceps de todo Brasil garimpados pela internet.

## Conteúdo do projeto
Os arquivos estão no formato **.sql** e o projeto foi separado em 4 tabelas (states, cities, districts e zipcodes) e devem ser importados no banco na seguinte ordem:
- states.sql `(27 registros)`
- cities.sql `(10506 registros)`
- districts.sql `(10443 registros)`
- states.sql `(732000 registros)`

**Nota:** Todas as tabelas foram criadas com **charset default utf8mb4 e collate para utf8mb4_unicode_ci**. Se seu banco ainda não tem suporte a esse tipo de charset/collate você deve alterar a linha `DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;` para o charset/collate desejado.

## Estrutuda das tabelas
Abaixo segue esquema representativo das tabelas.
**Legenda** 
- PK Primary Key (Chave primária auto-increment)
- FK Foreign Key (Chave estrangeira)
### States
| id | label | uf | created_at | updated_at |
| ------ | ------ |  ------ |  ------ |  ------ |
| PK | varchar(20) | char(2) | timestamp null | timestamp null |

### Cities
| id | state_id | label | created_at | updated_at |
| ------ | ------ |  ------ |  ------ |  ------ |
| PK | FK | varchar(100) | timestamp null | timestamp null |

### Districts
| id | state_id | label | created_at | updated_at |
| ------ | ------ |  ------ |  ------ |  ------ |
| PK | FK | varchar(100) | timestamp null | timestamp null |

### zip_codes
| id | district_id | city_id | state_id | zip_code | address | complement | created_at | updated_at |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| PK | FK | FK |FK | char(8) | varchar(150) null | varchar(100) null | timestamp null | timestamp null |

### Importação via linha de comando
Assumindo que o comando `mysql` esteja no path do seu sistema e que o usuário do banco de dados seja `root`.
`mysql -u root -p nome_do_banco_de_dados < arquivo.sql`

### Instalação
Partindo do princípio que você já tem o mysql no `path` do sistema, em um terminal (cmd windows ou bash linux) navegue até a pasta onde estão os arquivos sqls e execute os comandos na ordem que segue.

- mysql -u root -p nome_do_banco_de_dados < states.sql
- mysql -u root -p nome_do_banco_de_dados < cities.sql
- mysql -u root -p nome_do_banco_de_dados < districts.sql
- mysql -u root -p nome_do_banco_de_dados < zipcodes.sql

**Nota**: Os comandos acima não criam o banco, logo para importar, você precisa ter criado o banco de dados antes e substituir `nome_do_banco_de_dados` pelo nome do banco previamente criado.

**Nota importante** O comando para importar o arquivo zipcodes.sql vai demorar bastante (bastante mesmo), então seja paciente.

### Implementações Futuras
1. Laravel (Migrations, Seeds, Factories, Models)
2. NodeJS/Sequelize (Migrations, Seeds, Factories, Models)
3. PHP PDO/DAO Pattern
4. Js/jQuery/Ajax Cep autocomplete

### Doação
Contribua para o projeto doando qualquer quantidade de **HTMLCOIN**  
Carteira: **[HqgaiK6T1o2JP4p3p34CZp2g3XnSsSdCXp](htmlcoin:HqgaiK6T1o2JP4p3p34CZp2g3XnSsSdCXp?label=Doa%C3%A7%C3%B5es%20Github)**  
  
![Doar HTMLCoin](https://www.viniciusdesouza.com.br/img/htmlcoin.png)

#### License
MIT