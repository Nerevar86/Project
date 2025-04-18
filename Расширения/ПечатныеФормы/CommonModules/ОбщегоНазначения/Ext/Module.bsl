﻿
Функция ФорматСумм(Сумма, Валюта = Неопределено, ЧН = "", ЧРГ = "") Экспорт

	ФорматнаяСтрока = "ЧЦ=15;ЧДЦ=2" +
					?(ПустаяСтрока(ЧН), "", ";" + "ЧН=" + ЧН) +
					?(ПустаяСтрока(ЧРГ),"", ";" + "ЧРГ=" + ЧРГ);
	РезультирующаяСтрока = СокрЛ(Формат(Сумма, ФорматнаяСтрока));
	
	Если Валюта <> Неопределено Тогда
		РезультирующаяСтрока = РезультирующаяСтрока + " " + СокрП(Валюта);
	КонецЕсли;

	Возврат РезультирующаяСтрока;

КонецФункции // ФорматСумм()

Функция СформироватьСуммуПрописью(Сумма, Валюта) Экспорт

	Если Валюта.ПараметрыПрописи = "" Тогда
		Возврат ФорматСумм(Сумма);
	Иначе
		Возврат ЧислоПрописью(Сумма, "L=ru_RU", Валюта.ПараметрыПрописи);
	КонецЕсли;

КонецФункции // СформироватьСуммуПрописью()
