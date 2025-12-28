# CRUD_Football_DB

## Призначення проєкту
Даний проєкт є навчальною лабораторною роботою з дисципліни «Організація баз даних».  
Мета роботи — створити Docker-орієнтований PHP-застосунок з використанням MySQL та реалізацією CRUD-операцій для сутностей бази даних.

Проєкт демонструє:
- роботу з базою даних MySQL;
- використання PDO з підготовленими запитами;
- виконання CRUD-операцій;
- розгортання застосунку через Docker Compose.

## Структура проєкту

db-lab/
── app/
 ── public/
  ── index.php 
 ── src/
  ── Database.php 
  ── views/ 
  ── .env 
  ── .env.example 

── mysql/
 ── init/
  ── 01_schema.sql 
  ── 02_data.sql 

 ── nginx/
  ── conf.d/
  ── default.conf 

 ── docker-compose.yml 
 ── README.md

 ## Інструкція запуску

 ### Запуск Docker

 docker compose up -d

 ### Відкриття в браузері

 http://localhost:8080

 ## Сутності бази даних 
 -team
 -player
 -coach
 -match_
 -referee
 -tournament

 ## Реалізовані CRUD-операції 
 -Create
 -Read
 -Update
 -Delete

 
