# language: ru

Функционал: Дымовой тест открытия форм
	Как Разработчик/Инженер по тестированию
	Я Хочу иметь возможность автоматической проверки запуска тестов через Ванесса-АДД
    Чтобы удостовериться в качестве подготовленной конфигурации

Контекст:
    Допустим я подготовил репозиторий и рабочий каталог проекта
    # И я подготовил рабочую базу проекта "./build/ib" по умолчанию

    # И Я копирую каталог "xdd_test" из каталога "tests/fixtures" проекта в подкаталог "build" рабочего каталога
    # И Я копирую каталог "feature" из каталога "tests/fixtures" проекта в подкаталог "build" рабочего каталога
    # И Я копирую файл "xUnitParams.json" из каталога "tests/fixtures" проекта в подкаталог "build" рабочего каталога

    И Я сохраняю значение "INFO" в переменную окружения "LOGOS_LEVEL"
    Дано Я очищаю параметры команды "vrunner" в контексте

Сценарий: Тестирование документов - настроены исключения, индивидуально для каждого вида тестов

    # Дано файл "build/xdd_test.epf" не существует
    # Дано Я очищаю параметры команды "vrunner" в контексте
    # Когда Я выполняю команду "vrunner" с параметрами "<КаталогПроекта>/src/main.os compileepf build/xdd_test build --language ru"
    # И Я очищаю параметры команды "vrunner" в контексте
    # Дано файл "build/xdd_test.epf" существует

    Когда Я добавляю параметр "xunit" для команды "vrunner"
    # Когда Я добавляю параметр "<КаталогПроекта>/src/main.os xunit" для команды "vrunner"
    И Я добавляю параметр "<КаталогПроекта>/tests/smoke/тесты_ОткрытиеФормКонфигурации.epf" для команды "vrunner"
    # И Я добавляю параметр "build/xdd_test.epf" для команды "vrunner"
    И Я добавляю параметр "--ibconnection /F<КаталогПроекта>/build/ib" для команды "vrunner"
    И Я добавляю параметр "--workspace ./build" для команды "vrunner"
    И Я добавляю параметр "--xddConfig <КаталогПроекта>/spec/fixtures/smoke.json" для команды "vrunner"
    # И Я добавляю параметр "--xddConfig build/xUnitParams.json" для команды "vrunner"
    И Я добавляю параметр "--xddExitCodePath ./build/xddExitCodePath.txt" для команды "vrunner"
    И Я добавляю параметр "--language ru" для команды "vrunner"
    Когда Я выполняю команду "vrunner"
    # И Я сообщаю вывод команды "vrunner"
    Тогда Вывод команды "vrunner" содержит
    | Выполняю тесты  с помощью фреймворка Vanessa-ADD (Vanessa Automation Driven Development) |
    |  ==>> набор тестов Тесты "Открытие форм конфигурации" |
    |  ==>> набор тестов УпрФорма # Тесты_ОткрытиеФормКонфигурации |
        | ==>> набор тестов Справочники |
        |   -->> тест Справочник.Справочник1.Форма.ФормаЭлемента : открытие формы объекта при создании |
        |   -->> тест Справочник.Справочник1.Форма.ФормаЭлемента : открытие формы записанного объекта |
        |   -->> тест Справочник.Справочник1 : открытие формы списка |
        |   -->> тест Справочник.Справочник2 : открытие формы объекта при создании |
        |   -->> тест Справочник.Справочник2 : открытие формы записанного объекта |
        |   -->> тест Справочник.Справочник2 : открытие формы списка |
        |   -->> тест Справочник.Справочник3.Форма.ФормаЭлемента : открытие формы объекта при создании |
        |   -->> тест Справочник.Справочник3.Форма.ФормаЭлемента : открытие формы записанного объекта |
        |   -->> тест Справочник.Справочник3 : открытие формы списка |
        |   -->> тест Справочник.Склады : открытие формы объекта при создании |
        |   -->> тест Справочник.Склады : открытие формы записанного объекта |
        |   -->> тест Справочник.Склады : открытие формы списка |
        |   -->> тест Справочник.СправочникСТаблицейЗначенийНаФорме.Форма.ФормаЭлемента : открытие формы объекта при создании |
        |   -->> тест Справочник.СправочникСТаблицейЗначенийНаФорме.Форма.ФормаЭлемента : открытие формы записанного объекта |
        |   -->> тест Справочник.СправочникСТаблицейЗначенийНаФорме : открытие формы списка |
        |   -->> тест Справочник.Товары : открытие формы объекта при создании |
        |   -->> тест Справочник.Товары : открытие формы записанного объекта |
        |   -->> тест Справочник.Товары : открытие формы списка |
        |   -->> тест Справочник.ПростойСправочник.Форма.УпрФормаЭлемента : открытие формы объекта при создании |
        |   -->> тест Справочник.ПростойСправочник.Форма.УпрФормаЭлемента : открытие формы записанного объекта |
        |   -->> тест Справочник.ПростойСправочник.Форма.ФормаСписка : открытие формы списка |
        |   -->> тест Справочник.ПростойСправочник.Форма.ФормаВыбора : открытие формы списка |
        |   -->> тест Справочник.ПростойСправочник2 : открытие формы объекта при создании |
        |   -->> тест Справочник.ПростойСправочник2 : открытие формы записанного объекта |
        |   -->> тест Справочник.ПростойСправочник2 : открытие формы списка |
        | ==>> набор тестов Документы |
        |   -->> тест Документ.ПриходнаяНакладная : открытие формы объекта при создании |
        |   -->> тест Документ.ПриходнаяНакладная : открытие формы записанного объекта |
        |   -->> тест Документ.ПриходнаяНакладная : открытие формы списка |
        |   -->> тест Документ.ДокументСДвижениями : открытие формы объекта при создании |
        |   -->> тест Документ.ДокументСДвижениями : открытие формы записанного объекта |
        |   -->> тест Документ.ДокументСДвижениями : открытие формы списка |
        | ==>> набор тестов Обработки |
        |   -->> тест Обработка.ОткрытьVanessaADD.Форма.Форма |
        |   -->> тест Обработка.МаксимизироватОкноПриОткрытии.Форма.Форма |
        |   -->> тест Обработка.ВыполнитьПроизвольноеВыражение.Форма.Форма |
        |   -->> тест Обработка.ПроверкаСостоянияЭлементов.Форма.Форма |
        |   -->> тест Обработка.ТаблицыНаФорме.Форма.Форма |
        | ==>> набор тестов Отчеты |
        |   -->> тест Отчет.КомпоновкаТест |
        |   -->> тест Отчет.ОтчетПереносСтрок.Форма.ФормаОтчета |
        |   -->> тест Отчет.ОтчетПереносСтрок |
        | ==>> набор тестов Прочее |
        |   -->> тест ТестДолжен_ПроверитьБагПлатформыПриОткрытииУправляемойФормыПриОткрытииКоторойЕстьИсключение |
    | ИНФОРМАЦИЯ - Все тесты выполнены! |
    | Выполнение тестов завершено |

    И Код возврата команды "vrunner" равен 0

Сценарий: Тестирование документов - настроена проверка только указанных

    Когда Я добавляю параметр "xunit" для команды "vrunner"
    И Я добавляю параметр "<КаталогПроекта>/tests/smoke/тесты_ОткрытиеФормКонфигурации.epf" для команды "vrunner"
    И Я добавляю параметр "--ibconnection /F<КаталогПроекта>/build/ib" для команды "vrunner"
    И Я добавляю параметр "--workspace ./build" для команды "vrunner"
    И Я добавляю параметр "--xddConfig <КаталогПроекта>/spec/fixtures/smoke-include.json" для команды "vrunner"
    И Я добавляю параметр "--xddExitCodePath ./build/xddExitCodePath.txt" для команды "vrunner"
    И Я добавляю параметр "--language ru" для команды "vrunner"
    Когда Я выполняю команду "vrunner"
    # И Я сообщаю вывод команды "vrunner"
    Тогда Вывод команды "vrunner" содержит
    | Выполняю тесты  с помощью фреймворка Vanessa-ADD (Vanessa Automation Driven Development) |
    |  ==>> набор тестов Тесты "Открытие форм конфигурации" |
    |  ==>> набор тестов УпрФорма # Тесты_ОткрытиеФормКонфигурации |
    |  ==>> набор тестов Документы                                                         |
    | -->> тест Документ.Документ1   |
    | ИНФОРМАЦИЯ - Все тесты выполнены! |
    | Выполнение тестов завершено |
    И Вывод команды "vrunner" не содержит
    |    -->> тест Документ.ПриходнаяНакладная |
    |    -->> тест Документ.ДокументСДвижениями |

    И Код возврата команды "vrunner" равен 0

Сценарий: Тестирование документов - настроено исключение по имени для всех тестов

    Когда Я добавляю параметр "xunit" для команды "vrunner"
    И Я добавляю параметр "<КаталогПроекта>/tests/smoke/тесты_ОткрытиеФормКонфигурации.epf" для команды "vrunner"
    И Я добавляю параметр "--ibconnection /F<КаталогПроекта>/build/ib" для команды "vrunner"
    И Я добавляю параметр "--workspace ./build" для команды "vrunner"
    И Я добавляю параметр "--xddConfig <КаталогПроекта>/spec/fixtures/smoke-exclude.json" для команды "vrunner"
    И Я добавляю параметр "--xddExitCodePath ./build/xddExitCodePath.txt" для команды "vrunner"
    И Я добавляю параметр "--language ru" для команды "vrunner"
    Когда Я выполняю команду "vrunner"
    # И Я сообщаю вывод команды "vrunner"
    Тогда Вывод команды "vrunner" содержит
    | Выполняю тесты  с помощью фреймворка Vanessa-ADD (Vanessa Automation Driven Development) |
    |  ==>> набор тестов Тесты "Открытие форм конфигурации" |
    |  ==>> набор тестов УпрФорма # Тесты_ОткрытиеФормКонфигурации |
    |  ==>> набор тестов Документы                                                         |
    |    -->> тест Документ.ПриходнаяНакладная       |
    |    -->> тест Документ.ДокументСДвижениями |
    | ИНФОРМАЦИЯ - Все тесты выполнены! |
    | Выполнение тестов завершено |
    И Вывод команды "vrunner" не содержит
    | -->> тест Документ.Документ1 |

    И Код возврата команды "vrunner" равен 0
