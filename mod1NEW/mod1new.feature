﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	

Сценарий: Проверка суммы документа Заказ
	И я закрываю все окна клиентского приложения
* Cоздание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Добавление товара 
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Bosh15'
	И я перехожу к следующему реквизиту
* Проверка
	И элемент формы с именем "ТоварыИтогСумма" стал равен '60 000'

Сценарий: Проверка добавления услуги в документ Заказ
* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Добавление услуги	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Ремонт'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	
		