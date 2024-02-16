﻿#language: ru

@tree

Функционал: тестирование отчетов

Как Тестировщик я хочу
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
*Загрузка основных
	Когда экспорт основных данных
	

*Загрузка для отчета	
 	и Создание записей для регистра накоплений R2001T_Sales

 	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
 	Тогда открылось окно 'D2001 Продажи'
 	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
 	И я нажимаю на кнопку с именем 'FormGenerate'
 	Тогда табличный документ "Result" равен:
 		| 'Параметры:'               | 'Период: 01.02.2024 - 29.02.2024'                                   | ''         | ''                  | ''             |
 		| 'Отбор:'                   | 'Вид мультивалютной аналитики Равно "ru наименование не заполнено"' | ''         | ''                  | ''             |
 		| ''                         | ''                                                                  | ''         | ''                  | ''             |
 		| 'Период, месяц'            | 'Итого'                                                             | ''         | ''                  | ''             |
 		| 'Номенклатура'             | ''                                                                  | ''         | ''                  | ''             |
 		| 'Характеристика'           | 'Количество'                                                        | 'Сумма'    | 'Сумма без налогов' | 'Сумма скидки' |
 		| 'Февраль 2021'             | '14,000'                                                            | '3 358,00' | '2 798,33'          | ''             |
 		| 'Товар с характеристиками' | '12,000'                                                            | '2 418,00' | '2 015,00'          | ''             |
 		| 'S/Красный'                | '10,000'                                                            | '1 938,00' | '1 615,00'          | ''             |
 		| 'XS/Черный'                | '2,000'                                                             | '480,00'   | '400,00'            | ''             |
 		| 'Товар без характеристик'  | '2,000'                                                             | '940,00'   | '783,33'            | ''             |
 		| 'Товар без характеристик'  | '2,000'                                                             | '940,00'   | '783,33'            | ''             |
 		| 'Март 2021'                | '-2,000'                                                            | '-680,00'  | '-566,66'           | ''             |
 		| 'Товар с характеристиками' | '-1,000'                                                            | '-190,00'  | '-158,33'           | ''             |
 		| 'S/Красный'                | '-1,000'                                                            | '-190,00'  | '-158,33'           | ''             |
 		| 'Товар без характеристик'  | '-1,000'                                                            | '-490,00'  | '-408,33'           | ''             |
 		| 'Товар без характеристик'  | '-1,000'                                                            | '-490,00'  | '-408,33'           | ''             |
 		| 'Итого'                    | '12,000'                                                            | '2 678,00' | '2 231,67'          | ''             |
 	
 		
 	