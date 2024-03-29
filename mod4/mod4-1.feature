﻿#language: ru

@tree

Функционал: тестирование поля в документе заказ покупателя

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
*Открытие документа Заказ покупателя
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'

*Заполнение шапки и проверка контрагента
	Когда открылось окно 'Заказ покупателя (создание)'
	Когда открылось окно 'Заказ покупателя (создание)'
	И из выпадающего списка с именем "Agreement" я выбираю по строке 'общее соглашение'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И я перехожу к следующему реквизиту

	Если элемент "LegalName" не доступен для редактирования Тогда
		И из выпадающего списка с именем "Partner" я выбираю по строке 'розничный покупатель'
		И элемент формы с именем "LegalName" доступен
				
					