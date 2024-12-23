# <p align="center">Аналіз поведінки клієнтів банку</p>

**Використані інструменти:** Excel, MySQL

[Використаний Dataset](https://www.kaggle.com/datasets/murilozangari/customer-churn-from-a-bank?select=Churn_Modelling.csv)

[SQL Analysis (Code)](https://github.com/MazurTanya/sql_analysis/tree/main/SQL_Queries)

##  Питання, на які я хотіла відповісти:
####  1. Яка поведінка у клієнтів по країнах:
-  Розподіл по клієнтах в залежності від країни
   
![2_geography](https://github.com/user-attachments/assets/4d3a2a6a-8219-497c-ac1a-a3a380c81f04) 

- Основні характеристики клієнта: середній стаж, середня зарплатня, середній баланс та кредитний бал

![image](https://github.com/user-attachments/assets/8d62874c-5e69-4b25-8290-77207d603d85)

- Чи є якась різниця в використанні банківських продуктів по країнах

![num_products_geography](https://github.com/user-attachments/assets/8480d975-1901-464f-a72c-e7bb431c1f3a)

![geography_hasCard](https://github.com/user-attachments/assets/4cb0a118-ead3-4f9e-9116-5aa3b5a086f1)

![3_сountry_IsActive](https://github.com/user-attachments/assets/e37c11a6-b5e8-4663-afbb-55cee38a3e80)

- Кількість втрачених/поточних клієнтів по країнах

![geography_churned](https://github.com/user-attachments/assets/3ee2dbdb-921a-45d5-b491-2e8bef277c13)

Банк представлений в 3х країнах: Франція має половину клієнтів від загальної кількості клієнтів банку, Німеччина та Іспанія мають майже однаковий відсоток - відповідно 25,1 та 24,8. Поведінка клієнтів по країнах по використанню банківських продуктів суттєво не відрізняється. Проте втрачених клієнтів в Німеччині вдвічі більше ніх в двох інших країнах - відповідно 32% проти 16%.

####  2. Поведінка втрачених та поточних клієнтів: 
- Загальна кількість та частка втрачених/поточних клієнтів

  ![percent_churnedClient](https://github.com/user-attachments/assets/629cd891-c140-42eb-99ad-909ff22bd714)


- Чи задоволені клієнти в залежності від використання банківських продуктів

  ![churnedClient_NumOfProduct](https://github.com/user-attachments/assets/8d07bdc9-b448-40d3-9d1a-895bd5505c79)


 - Від середньої зарплатні та середнього строку перебування в банку

  ![image](https://github.com/user-attachments/assets/f9ee5ff8-8558-41ec-b373-e696ae61cf6a)

  - Баланс клієнтів

    ![image](https://github.com/user-attachments/assets/8e8aa36a-c05f-4033-9a74-75d9e6ba69eb)


- Кількість втрачених клієнтів і їх стаж перебування в банку
 
   ![image](https://github.com/user-attachments/assets/ebb9509a-86d4-4df5-9067-1979444acff7)

  
- Розподіл втрачених клієнтів по віковим групам


![image](https://github.com/user-attachments/assets/b74c8f83-c6ec-4072-8eed-96b5f191dc14)


- 5 найбільш активних клієнтів, в яких найбільший баланс та користуються декількома продуктами, та є активним користувачем

  ![image](https://github.com/user-attachments/assets/3c236e7d-9104-4846-bad4-ab3c67568f16)


  З даних видно, що взагалі по банку втрачених клієнтів 20% від загальної кількості. Мінімальний баланс втрачених клієнтів (3769) нижче майже в 3,7 рази, ніж мінімальний баланс поточних клієнтів (14263). Найменша кількість втрачених клієнтів має максимальний строк перебування в банку - 10 років, а найбільша кількість - відповідно 1 рік. Немає втрачених клієнтів, яки б використовували 4 продукти банку, і чем меньшу кількість клієнти використовують, тим більше кількість втрачених клієнтів. Основна маса клієнтів банка це вікова група від 30 до 50 років. В цих групах і самий найвищий відток клієнтів. У клієнтів в віці 51-60 років втрачених клієнтів більше, ніж поточних. Молодь (до 30 років) та групи від 71 і більше мають найнижчий показник відтоку клієнтів. Найцінніші клієнти для банку - це люди віком від 37 років до 53, з великим стажем більше ніж 6 років, кредитний рейтинг - в одному ранзі, баланс та зарплатня теж суттєво не відрізняються.



  









    






