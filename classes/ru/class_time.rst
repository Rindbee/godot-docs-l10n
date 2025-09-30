:github_url: hide

.. _class_Time:

Time
====

**Наследует:** :ref:`Object<class_Object>`

Синглтон для работы с данными о времени.

.. rst-class:: classref-introduction-group

Описание
----------------

Синглтон Time позволяет преобразовывать время между различными форматами, а также получать информацию о времени из системы.

Этот класс соответствует максимально возможному количеству стандартов ISO 8601. Все даты следуют пролептическому григорианскому календарю. Таким образом, день до ``1582-10-15`` — это ``1582-10-14``, а не ``1582-10-04``. Год до 1 г. н. э. (он же 1 г. до н. э.) имеет номер ``0``, а год до этого (2 г. до н. э.) — это ``-1`` и т. д.

Методы преобразования предполагают "один и тот же часовой пояс" и не обрабатывают преобразования часовых поясов или летнее время автоматически. Високосные секунды также не обрабатываются, их необходимо сделать вручную, если это необходимо. Суффиксы, такие как "Z", не обрабатываются, их необходимо удалить вручную.

При получении информации о времени из системы время может быть либо в локальном часовом поясе, либо в формате UTC в зависимости от параметра ``utc``. Однако метод :ref:`get_unix_time_from_system()<class_Time_method_get_unix_time_from_system>` всегда использует UTC, поскольку возвращает количество секунд, прошедших с `эпохи Unix <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Важно:** Методы ``_from_system`` используют системные часы, которые пользователь может установить вручную. **Никогда не используйте** этот метод для точного расчета времени, поскольку его результаты могут быть автоматически скорректированы пользователем или операционной системой. **Всегда используйте** :ref:`get_ticks_usec()<class_Time_method_get_ticks_usec>` или :ref:`get_ticks_msec()<class_Time_method_get_ticks_msec>` для точного расчета времени, поскольку они гарантированно будут монотонными (т. е. никогда не уменьшатся).

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_date_dict_from_system<class_Time_method_get_date_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                         |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_date_dict_from_unix_time<class_Time_method_get_date_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_date_string_from_system<class_Time_method_get_date_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_date_string_from_unix_time<class_Time_method_get_date_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_datetime_string<class_Time_method_get_datetime_dict_from_datetime_string>`\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const|           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_system<class_Time_method_get_datetime_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                 |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_datetime_dict_from_unix_time<class_Time_method_get_datetime_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_datetime_dict<class_Time_method_get_datetime_string_from_datetime_dict>`\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_system<class_Time_method_get_datetime_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const|                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_datetime_string_from_unix_time<class_Time_method_get_datetime_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const|          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_offset_string_from_offset_minutes<class_Time_method_get_offset_string_from_offset_minutes>`\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_ticks_msec<class_Time_method_get_ticks_msec>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_ticks_usec<class_Time_method_get_ticks_usec>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_dict_from_system<class_Time_method_get_time_dict_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                         |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_dict_from_unix_time<class_Time_method_get_time_dict_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_time_string_from_system<class_Time_method_get_time_string_from_system>`\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const|                                                                     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_time_string_from_unix_time<class_Time_method_get_time_string_from_unix_time>`\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_time_zone_from_system<class_Time_method_get_time_zone_from_system>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unix_time_from_datetime_dict<class_Time_method_get_unix_time_from_datetime_dict>`\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unix_time_from_datetime_string<class_Time_method_get_unix_time_from_datetime_string>`\ (\ datetime\: :ref:`String<class_String>`\ ) |const|                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_unix_time_from_system<class_Time_method_get_unix_time_from_system>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Time_Month:

.. rst-class:: classref-enumeration

enum **Month**: :ref:`🔗<enum_Time_Month>`

.. _class_Time_constant_MONTH_JANUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JANUARY** = ``1``

Месяц январь, представленный в числовом виде как ``01``.

.. _class_Time_constant_MONTH_FEBRUARY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_FEBRUARY** = ``2``

Месяц февраль, представленный численно как ``02``.

.. _class_Time_constant_MONTH_MARCH:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MARCH** = ``3``

Март месяц, представленный численно как ``03``.

.. _class_Time_constant_MONTH_APRIL:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_APRIL** = ``4``

Месяц апрель, представленный численно как ``04``.

.. _class_Time_constant_MONTH_MAY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_MAY** = ``5``

Месяц май, представленный численно как ``05``.

.. _class_Time_constant_MONTH_JUNE:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JUNE** = ``6``

Июнь, числовой формат которого представлен как ``06``.

.. _class_Time_constant_MONTH_JULY:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_JULY** = ``7``

Июль месяц, представленный численно как ``07``.

.. _class_Time_constant_MONTH_AUGUST:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_AUGUST** = ``8``

Август месяц, представленный численно как ``08``.

.. _class_Time_constant_MONTH_SEPTEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_SEPTEMBER** = ``9``

Сентябрь, представленный численно как ``09``.

.. _class_Time_constant_MONTH_OCTOBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_OCTOBER** = ``10``

Месяц октябрь, представленный численно как ``10``.

.. _class_Time_constant_MONTH_NOVEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_NOVEMBER** = ``11``

Месяц ноябрь, представленный численно как ``11``.

.. _class_Time_constant_MONTH_DECEMBER:

.. rst-class:: classref-enumeration-constant

:ref:`Month<enum_Time_Month>` **MONTH_DECEMBER** = ``12``

Декабрь, представленный численно как ``12``.

.. rst-class:: classref-item-separator

----

.. _enum_Time_Weekday:

.. rst-class:: classref-enumeration

enum **Weekday**: :ref:`🔗<enum_Time_Weekday>`

.. _class_Time_constant_WEEKDAY_SUNDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SUNDAY** = ``0``

День недели воскресенье, представленный численно как ``0``.

.. _class_Time_constant_WEEKDAY_MONDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_MONDAY** = ``1``

День недели понедельник, представленный в числовом виде как ``1``.

.. _class_Time_constant_WEEKDAY_TUESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_TUESDAY** = ``2``

День недели вторник, представленный в числовом виде как ``2``.

.. _class_Time_constant_WEEKDAY_WEDNESDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_WEDNESDAY** = ``3``

День недели среда, представленный в числовом виде как ``3``.

.. _class_Time_constant_WEEKDAY_THURSDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_THURSDAY** = ``4``

День недели четверг, представленный в числовом виде как ``4``.

.. _class_Time_constant_WEEKDAY_FRIDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_FRIDAY** = ``5``

День недели пятница, представленный в числовом виде как ``5``.

.. _class_Time_constant_WEEKDAY_SATURDAY:

.. rst-class:: classref-enumeration-constant

:ref:`Weekday<enum_Time_Weekday>` **WEEKDAY_SATURDAY** = ``6``

День недели суббота, представленный в числовом виде как ``6``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Time_method_get_date_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_system>`

Возвращает текущую дату в виде словаря ключей: ``год``, ``месяц``, ``день`` и ``день недели``. 

Возвращаемые значения указаны в локальном времени системы, если ``utc`` равен ``false``, в противном случае они указаны в формате UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_date_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_dict_from_unix_time>`

Преобразует заданную временную метку Unix в словарь ключей: ``год``, ``месяц``, ``день`` и ``день недели``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_system>`

Возвращает текущую дату в виде строки даты ISO 8601 (ГГГГ-ММ-ДД).

Возвращаемые значения указаны в локальном времени системы, если ``utc`` равен ``false``, в противном случае они указаны в формате UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_date_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_date_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_date_string_from_unix_time>`

Преобразует заданную временную метку Unix в строку даты ISO 8601 (ГГГГ-ММ-ДД).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_datetime_string:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`, weekday\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_datetime_string>`

Преобразует заданную строку даты и времени ISO 8601 (YYYY-MM-DDTHH:MM:SS) в словарь ключей: ``год``, ``месяц``, ``день``, ``день недели``, ``час``, ``минута`` и ``секунда``.

Если ``weekday`` равен ``false``, то запись ``день недели`` исключается (вычисление относительно затратно).

\ **Примечание:** Любая десятичная дробь в строке времени будет игнорироваться без уведомления.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_system>`

Возвращает текущую дату в виде словаря ключей: ``год``, ``месяц``, ``день``, ``день недели``, ``час``, ``минута``, ``секунда`` и ``dst`` (летнее время).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_datetime_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_dict_from_unix_time>`

Преобразует заданную временную метку Unix в словарь ключей: ``год``, ``месяц``, ``день``, ``день недели``, ``час``, ``минута`` и ``секунда``. 

Возвращаемые значения словаря будут такими же, как у :ref:`get_datetime_dict_from_system()<class_Time_method_get_datetime_dict_from_system>`, если временная метка Unix является текущим временем, за исключением летнего времени, поскольку его невозможно определить из эпохи.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_datetime_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`, use_space\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_datetime_dict>`

Преобразует указанный словарь ключей в строку даты и времени ISO 8601 (YYYY-MM-DDTHH:MM:SS).

Указанный словарь может быть заполнен следующими ключами: ``year``, ``month``, ``day``, ``hour``, ``minute`` и ``second``. Любые другие записи (включая ``dst``) игнорируются.

Если словарь пуст, возвращается ``0``. Если некоторые ключи пропущены, они по умолчанию принимают эквивалентные значения для временной метки эпохи Unix 0 (1970-01-01 в 00:00:00).

Если ``use_space`` равен ``true``, биты даты и времени разделяются пробелом вместо буквы T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_system>`

Возвращает текущую дату и время в виде строки даты и времени ISO 8601 (YYYY-MM-DDTHH:MM:SS).

Возвращаемые значения указаны в локальном времени системы, если ``utc`` равен ``false``, в противном случае они указаны в формате UTC.

Если ``use_space`` равен ``true``, биты даты и времени разделяются символом пробела вместо буквы T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_datetime_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_datetime_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`, use_space\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_datetime_string_from_unix_time>`

Преобразует заданную временную метку Unix в строку даты и времени ISO 8601 (YYYY-MM-DDTHH:MM:SS).

Если ``use_space`` равен ``true``, биты даты и времени разделяются символом пустого пространства вместо буквы T.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_offset_string_from_offset_minutes:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_offset_string_from_offset_minutes**\ (\ offset_minutes\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_offset_string_from_offset_minutes>`

Преобразует заданное смещение часового пояса в минутах в строку смещения часового пояса. Например, -480 возвращает "-08:00", 345 возвращает "+05:45", а 0 возвращает "+00:00".

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_msec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_msec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_msec>`

Возвращает количество времени, прошедшего в миллисекундах с момента запуска двигателя.

Всегда будет положительным или 0 и использует 64-битное значение (оно будет перенесено примерно через 500 миллионов лет).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_ticks_usec:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ticks_usec**\ (\ ) |const| :ref:`🔗<class_Time_method_get_ticks_usec>`

Возвращает количество времени, прошедшего в микросекундах с момента запуска двигателя.

Всегда будет положительным или 0 и использует 64-битное значение (оно будет перезаписано примерно через полмиллиона лет).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_system>`

Возвращает текущее время в виде словаря ключей: ``час``, ``минута`` и ``секунда``. 

Возвращаемые значения указаны в локальном времени системы, если ``utc`` равен ``false``, в противном случае они указаны в формате UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_dict_from_unix_time:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_dict_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_dict_from_unix_time>`

Преобразует заданное время в словарь ключей: ``час``, ``минута`` и ``секунда``.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_system:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_system**\ (\ utc\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_system>`

Возвращает текущее время в виде строки времени ISO 8601 (ЧЧ:ММ:СС).

Возвращаемые значения указаны в локальном времени системы, если ``utc`` равен ``false``, в противном случае они указаны в формате UTC.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_string_from_unix_time:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_time_string_from_unix_time**\ (\ unix_time_val\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Time_method_get_time_string_from_unix_time>`

Преобразует заданную временную метку Unix в строку времени ISO 8601 (ЧЧ:ММ:СС).

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_time_zone_from_system:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_time_zone_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_time_zone_from_system>`

Возвращает текущий часовой пояс в виде словаря ключей: ``bias`` и ``name``.

- ``bias`` - это смещение относительно UTC в минутах, поскольку не все часовые пояса кратны часу от UTC.

- ``name`` - это локализованное название часового пояса в соответствии с настройками локали ОС текущего пользователя.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_dict:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_dict**\ (\ datetime\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_dict>`

Преобразует словарь значений времени в метку времени Unix.

Данный словарь может быть заполнен следующими ключами: ``год``, ``месяц``, ``день``, ``час``, ``минута`` и ``секунда``. Любые другие записи (включая ``dst``) игнорируются.

Если словарь пуст, возвращается ``0``. Если некоторые ключи пропущены, они по умолчанию принимают эквивалентные значения для метки времени эпохи Unix 0 (1970-01-01 в 00:00:00).

Вы можете передать вывод из :ref:`get_datetime_dict_from_unix_time()<class_Time_method_get_datetime_dict_from_unix_time>` непосредственно в эту функцию и получить то же самое, что было введено.

\ **Примечание:** Метки времени Unix часто указываются в формате UTC. Этот метод не выполняет преобразование часового пояса, поэтому временная метка будет находиться в том же часовом поясе, что и указанный словарь datetime.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_datetime_string:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unix_time_from_datetime_string**\ (\ datetime\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_datetime_string>`

Преобразует заданную строку даты и/или времени ISO 8601 в метку времени Unix. Строка может содержать только дату, только время или и то, и другое.

\ **Примечание:** Метки времени Unix часто указываются в формате UTC. Этот метод не выполняет преобразование часового пояса, поэтому метка времени будет находиться в том же часовом поясе, что и заданная строка даты и времени.

\ **Примечание:** Любая десятичная дробь в строке времени будет игнорироваться без уведомления.

.. rst-class:: classref-item-separator

----

.. _class_Time_method_get_unix_time_from_system:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_unix_time_from_system**\ (\ ) |const| :ref:`🔗<class_Time_method_get_unix_time_from_system>`

Возвращает текущую временную метку Unix в секундах на основе системного времени в формате UTC. Этот метод реализуется операционной системой и всегда возвращает время в формате UTC. Временная метка Unix — это количество секунд, прошедших с 1970-01-01 в 00:00:00, `эпохи Unix <https://en.wikipedia.org/wiki/Unix_time>`__.

\ **Примечание:** В отличие от других методов, использующих целочисленные временные метки, этот метод возвращает временную метку как :ref:`float<class_float>` (число с плавающей точкой) для точности до доли секунды.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
