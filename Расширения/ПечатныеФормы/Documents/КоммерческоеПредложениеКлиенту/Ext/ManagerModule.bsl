﻿
&После("ДобавитьКомандыПечати")
Процедура ITS_ДобавитьКомандыПечати(КомандыПечати)
	
	//Приложение
	КомандаПечати = КомандыПечати.Добавить();
	КомандаПечати.МенеджерПечати = "Обработка.ITS_ПечатьДокументов";
	КомандаПечати.Идентификатор = "Приложение";
	КомандаПечати.Представление = НСтр("ru = 'Приложение'");
	КомандаПечати.ПроверкаПроведенияПередПечатью = Истина;
	
КонецПроцедуры
