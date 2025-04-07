﻿
&ИзменениеИКонтроль("ДобавитьКомандыПечати")
Процедура ITS_ДобавитьКомандыПечати(КомандыПечати)
	
	Если ПраваПользователяПовтИсп.ЭтоПартнер() Тогда
		
		// Заказ клиента
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьЗаказовНаТоварыУслуги";
		КомандаПечати.Идентификатор = "ЗаказКлиента";
		КомандаПечати.Представление = НСтр("ru = 'Заказ клиента'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		
		// Счет на оплату
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		
		// Счет на оплату
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату с факсимиле'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
		
		Возврат;
		
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("НеВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Заказ клиента
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьЗаказовНаТоварыУслуги";
		КомандаПечати.Идентификатор = "ЗаказКлиента";
		КомандаПечати.Представление = НСтр("ru = 'Заказ клиента'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Заказ клиента (не выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьЗаказовНаТоварыУслуги";
		КомандаПечати.Идентификатор = "ЗаказКлиента";
		КомандаПечати.Представление = НСтр("ru = 'Заказ клиента (не выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Ложь);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Заказ клиента (выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьЗаказовНаТоварыУслуги";
		КомандаПечати.Идентификатор = "ЗаказКлиента";
		КомандаПечати.Представление = НСтр("ru = 'Заказ клиента (выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Истина);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("НеВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату (не выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату (не выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Ложь);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату (выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату (выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Истина);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("НеВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату с факсимиле'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату (не выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату с факсимиле (не выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Ложь);
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
	КонецЕсли;
	
	Если ПолучитьФункциональнуюОпцию("ВыбиратьВариантВыводаСкидокПриПечатиДокументовПродажи") Тогда
		// Счет на оплату (выводить скидки)
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "СчетНаОплату";
		КомандаПечати.Представление = НСтр("ru = 'Счет на оплату с факсимиле (выводить скидки)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Истина);
		КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
	КонецЕсли;
	
	Если Константы.ИспользоватьМеждународныеПечатныеФормы.Получить() Тогда
		
		// Proforma invoice
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ПечатьСчетовНаОплату";
		КомандаПечати.Идентификатор = "ProformaInvoiceEn";
		КомандаПечати.Представление = НСтр("ru = 'Proforma invoice (en)'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		
	КонецЕсли;
	
	// Задание на отбор товаров
	КомандаПечати = Обработки.ПечатьЗаданияНаОтборРазмещениеТоваров.ДобавитьКомандуПечати(КомандыПечати, "ЗаданиеНаОтбор");
	КомандаПечати.ДополнительныеПараметры.Вставить("ПечатьПоДаннымДокумента");
	
	ПодключаемыеКоманды.ДобавитьУсловиеВидимостиКоманды(КомандаПечати,
	"Статус",
	Перечисления.СтатусыЗаказовКлиентов.НеСогласован,
	ВидСравненияКомпоновкиДанных.НеРавно);
	
	//++ Локализация
	Если ПолучитьФункциональнуюОпцию("ИспользоватьИнтеграциюСOzon") Тогда
		// Этикетки поставки на склады Ozon
		КомандаПечати                                = КомандыПечати.Добавить();  
		КомандаПечати.Обработчик                     = "ИнтеграцияСМаркетплейсомOzonКлиент.ПечатьЭтикеток";
		КомандаПечати.МенеджерПечати                 = "";
		КомандаПечати.Идентификатор                  = "ЭтикеткиOzon";
		КомандаПечати.Представление                  = НСтр("ru = 'Этикетки Ozon'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;  
		
		СписокХозяйственныхОпераций                  = Новый СписокЗначений();
		СписокХозяйственныхОпераций.Добавить(Перечисления.ХозяйственныеОперации.ПередачаНаКомиссию);    
		СписокХозяйственныхОпераций.Добавить(Перечисления.ХозяйственныеОперации.РеализацияБезПереходаПраваСобственности);
		
		ПодключаемыеКоманды.ДобавитьУсловиеВидимостиКоманды(КомандаПечати,
		"ХозяйственнаяОперация",
		СписокХозяйственныхОпераций,
		ВидСравненияКомпоновкиДанных.ВСписке);
	КонецЕсли;
	//-- Локализация
	
	// Комплект документов на принтер
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.Обработчик = "УправлениеПечатьюУТКлиент.ПечатьКомплектаДокументов";
	КомандаПечати.МенеджерПечати = "";
	КомандаПечати.Идентификатор = "КомплектДокументов";
	КомандаПечати.СразуНаПринтер = Истина;
	КомандаПечати.Представление = НСтр("ru = 'Комплект документов на принтер'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.Порядок = 1;
	
	// Комплект документов с настройкой...
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.Обработчик = "УправлениеПечатьюУТКлиент.ПечатьКомплектаДокументовСНастройкой";
	КомандаПечати.МенеджерПечати = "";
	КомандаПечати.Идентификатор = "КомплектДокументовСНастройкой";
	КомандаПечати.Представление = НСтр("ru = 'Комплект документов с настройкой...'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.Порядок = 2;
	
	ЗаказКлиентаЛокализация.ДобавитьКомандыПечати(КомандыПечати);
	
	#Вставка
	//Счет-оферта
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "СчетОферта";
	КомандаПечати.Представление = НСтр("ru = 'Счет - оферта с факсимиле (выводить скидки)'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Истина);
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
	
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "СчетОферта";
	КомандаПечати.Представление = НСтр("ru = 'Счет - оферта с факсимиле (не выводить скидки)'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Ложь);
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Истина);
	
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "СчетОферта";
	КомандаПечати.Представление = НСтр("ru = 'Счет - оферта без факсимиле (выводить скидки)'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Истина);
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Ложь);
	
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "СчетОферта";
	КомандаПечати.Представление = НСтр("ru = 'Счет - оферта без факсимиле (не выводить скидки)'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьСкидки", Ложь);
	КомандаПечати.ДополнительныеПараметры.Вставить("ОтображатьФаксимиле", Ложь);
	
	//Письмо на отгрузку
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "ПисьмоНаОтгрузку";
	КомандаПечати.Представление = НСтр("ru = 'Письмо на отгрузку'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	
	Если ПолучитьФункциональнуюОпцию("ИспользоватьТТН")
		И ПравоДоступа("Просмотр", Метаданные.Документы.ТранспортнаяНакладная) Тогда
		
		// 1-Т (Товарно-транспортная накладная) 
		//КомандаПечати = КомандыПечати.Добавить();
		//КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
		//КомандаПечати.Идентификатор = "ТТН";
		//КомандаПечати.Представление = НСтр("ru = 'Товарно-транспортная накладная (1-Т)'");
		//КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
		
		// Транспортная накладная
		КомандаПечати = КомандыПечати.Добавить();
		КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
		КомандаПечати.Идентификатор = "ТранспортнаяНакладная";
		КомандаПечати.Представление = НСтр("ru = 'Транспортная накладная'");
		КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
				
	КонецЕсли;
	
	#КонецВставки
	
КонецПроцедуры
