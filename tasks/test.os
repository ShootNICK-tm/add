#Использовать logos

Перем Лог;

Процедура ЗапуститьОбработку(Знач Путь, Знач КаталогПроекта, Знач ПодкаталогСборки, Знач КлючКэшаИзмененияФайлов = Неопределено)

	Лог.Отладка("ЗапуститьОбработку - КаталогПроекта %1", КаталогПроекта);
	КаталогПроекта = ФС.ПолныйПуть(КаталогПроекта);
	Лог.Отладка("ЗапуститьОбработку - КаталогПроекта (полный путь) %1", КаталогПроекта);

	Лог.Отладка("ЗапуститьОбработку - Собираю каталог %1", Путь);
	Лог.Отладка("ЗапуститьОбработку - %1", ПодкаталогСборки);
	Лог.Отладка("ЗапуститьОбработку - КлючКэшаИзмененияФайлов %1", КлючКэшаИзмененияФайлов);
	// ПодкаталогСборки = ?(Бинарники1СХранятсяРядомСИсходниками, "", ПутьКаталогаСборки + "/");

	// КаталогСоответствующийКорню = Исходники.КаталогСоответствующийКорню();
	КаталогСоответствующийКорню = "epf";
	Лог.Отладка("ЗапуститьОбработку - КаталогСоответствующийКорню %1", КаталогСоответствующийКорню);

	Файл = Новый Файл(Путь);
	ОтносительныйПуть = ФС.ОтносительныйПуть(КаталогПроекта, Файл.ПолноеИмя);
	Лог.Отладка("ЗапуститьОбработку - Файл.ПолноеИмя %1", Файл.ПолноеИмя);
	Лог.Отладка("ЗапуститьОбработку - ОтносительныйПуть %1", ОтносительныйПуть);
	Если ОтносительныйПуть = КаталогСоответствующийКорню И Файл.ЭтоКаталог() Тогда 
		ЧтоИКуда = СтрШаблон("./%2 ./%1", ПодкаталогСборки, КаталогСоответствующийКорню);
		Лог.Отладка("ЗапуститьОбработку - 1 ЧтоИКуда %1", ЧтоИКуда);
	Иначе
		ОтносительныйПутьРодителя = ФС.ОтносительныйПуть(КаталогПроекта, Файл.Путь);
		Лог.Отладка("ЗапуститьОбработку - ОтносительныйПутьРодителя %1", ОтносительныйПутьРодителя);

		Если ОтносительныйПутьРодителя = КаталогСоответствующийКорню Тогда
			ЧтоИКуда = СтрШаблон("%3/%1 ./%2", Файл.ИмяБезРасширения, ПодкаталогСборки, КаталогСоответствующийКорню);
			Лог.Отладка("ЗапуститьОбработку - 2 ЧтоИКуда %1", ЧтоИКуда);
		Иначе
			ЧтоИКуда = СтрШаблон("%1 ./%2%1", Путь, ПодкаталогСборки);
			Лог.Отладка("ЗапуститьОбработку - 3 ЧтоИКуда %1", ЧтоИКуда);
		КонецЕсли;
	КонецЕсли;

	ШаблонЗапуска = СтрШаблон("vrunner compileepf %1 --ibconnection /F./build/ibservice", ЧтоИКуда);
	Лог.Отладка("ШаблонЗапуска %1", ШаблонЗапуска);
	// Если ЗначениеЗаполнено(КлючКэшаИзмененияФайлов) Тогда
	// 	ШаблонЗапуска = СтрШаблон("%1 --cachekey %2", ШаблонЗапуска, КлючКэшаИзмененияФайлов);
	// КонецЕсли;
	// Исходники.ИсполнитьКоманду(ШаблонЗапуска);
	
КонецПроцедуры

Лог = Логирование.ПолучитьЛог("1");
// Лог.УстановитьРаскладку(ЭтотОбъект);
Лог.УстановитьУровень(УровниЛога.Отладка);

УстановитьТекущийКаталог("W:\1\ADD");

Лог.Информация("
|
|ТЕСТ 1 - как на CI
|
|");
КаталогПроекта = "C:\j\workspace\p-U4K64BCDKA@2\tasks\Модули\..\..";
Путь = "epf";
ПодкаталогСборки = "./build//";
КлючКэшаИзмененияФайлов = Неопределено;

ЗапуститьОбработку(Путь, КаталогПроекта, ПодкаталогСборки, КлючКэшаИзмененияФайлов);

Лог.Информация("
|
|ТЕСТ 2 - локально
|
|");

КаталогПроекта = "W:\1\ADD\tasks\Модули\..\..";
Путь = "epf";
ПодкаталогСборки = "./build//";
КлючКэшаИзмененияФайлов = Неопределено;

ЗапуститьОбработку(Путь, КаталогПроекта, ПодкаталогСборки, КлючКэшаИзмененияФайлов);
