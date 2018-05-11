﻿Перем ПутьКФайлуПолный Экспорт;// в эту переменную будет установлен правильный клиентский путь к текущему файлу

// { Plugin interface
Функция ОписаниеПлагина(ВозможныеТипыПлагинов) Экспорт
	Результат = Новый Структура;
	Результат.Вставить("Тип", ВозможныеТипыПлагинов.Утилита);
	Результат.Вставить("Идентификатор", Метаданные().Имя);
	Результат.Вставить("Представление", "Пользователи");
	
	Возврат Новый ФиксированнаяСтруктура(Результат);
КонецФункции

Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
КонецПроцедуры
// } Plugin interface

// API

Процедура УдалитьПользователяИБ_ЕслиОнСуществует(Знач ИмяПользователя) Экспорт

	лПользователь = ПользователиИнформационнойБазы.НайтиПоИмени(ИмяПользователя);
	Если лПользователь <> Неопределено Тогда
		лПользователь.Удалить();
	КонецЕсли;

КонецПроцедуры

// } API
