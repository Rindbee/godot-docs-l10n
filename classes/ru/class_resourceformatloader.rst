:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Загружает определенный тип ресурса из файла.

.. rst-class:: classref-introduction-group

Описание
----------------

Godot загружает ресурсы в редакторе или в экспортированных играх с помощью ResourceFormatLoaders. Они запрашиваются автоматически через синглтон :ref:`ResourceLoader<class_ResourceLoader>` или при загрузке ресурса с внутренними зависимостями. Каждый тип файла может загружаться как другой тип ресурса, поэтому в движке регистрируется несколько ResourceFormatLoaders.

Расширение этого класса позволяет вам определить свой собственный загрузчик. Обязательно соблюдайте задокументированные типы возвращаемых данных и значения. Вам следует дать ему глобальное имя класса с ``class_name``, чтобы он был зарегистрирован. Как и встроенные ResourceFormatLoaders, он будет вызываться автоматически при загрузке ресурсов его обработанных типов. Вы также можете реализовать :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примечание:** Вы также можете расширить :ref:`EditorImportPlugin<class_EditorImportPlugin>`, если нужный вам тип ресурса существует, но Godot не может загрузить его формат. Выбор одного из способов зависит от того, подходит ли формат для финальной экспортированной игры. Например, лучше сначала импортировать текстуры ``.png`` как ``.ctex`` (:ref:`CompressedTexture2D<class_CompressedTexture2D>`), чтобы их можно было загрузить на видеокарту с большей эффективностью.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ни основной ресурс (тот, который был запрошен для загрузки), ни какой-либо из его подресурсов не извлекается из кэша и не сохраняется в нем. Зависимости (внешние ресурсы) загружаются с :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

Основной ресурс (тот, который был запрошен для загрузки), его подресурсы и его зависимости (внешние ресурсы) извлекаются из кэша, если они присутствуют, а не загружаются. Те, которые не кэшируются, загружаются и затем сохраняются в кэше. Те же правила рекурсивно распространяются вниз по дереву зависимостей (внешние ресурсы).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Как :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`, но кэш проверяется для основного ресурса (того, который запрашивается для загрузки), а также для каждого из его подресурсов. Те, которые уже находятся в кэше, пока загруженные и кэшированные типы совпадают, обновляют свои данные из хранилища в уже существующие экземпляры. В противном случае они воссоздаются как совершенно новые объекты.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Подобно :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>`, но распространяется рекурсивно вниз по дереву зависимостей (внешние ресурсы).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Подобно :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>`, но распространяется рекурсивно вниз по дереву зависимостей (внешние ресурсы).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

Должен возвращать зависимости для ресурса по указанному пути ``path``. Каждая зависимость представляет собой строку, состоящую из одной-трех секций, разделенных ``::``, при этом конечные пустые секции опускаются:

- Первый раздел должен содержать UID, если он есть у ресурса. В противном случае он должен содержать путь к файлу.

- Второй раздел должен содержать имя класса зависимости, если ``add_types`` равен ``true``. В противном случае он должен быть пустым.

- Третий раздел должен содержать резервный путь, если у ресурса есть UID. В противном случае он должен быть пустым.

::

    func _get_dependencies(path, add_types):
        return [
            "uid://fqgvuwrkuixh::Script::res://script.gd",
            "uid://fqgvuwrkuixh::::res://script.gd",
            "res://script.gd::Script",
            "res://script.gd",
        ]

\ **Примечание:** Пользовательские типы ресурсов, определяемые скриптами, не известны :ref:`ClassDB<class_ClassDB>`, поэтому для имени класса можно использовать ``"Resource"``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

Получает список расширений файлов, которые может прочитать этот загрузчик.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

Возвращает имя класса скрипта, связанного с :ref:`Resource<class_Resource>` в заданном ``path``. Если у ресурса нет скрипта или скрипт не является именованным классом, он должен вернуть ``""``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

Получает имя класса ресурса, связанного с указанным путем. Если загрузчик не может его обработать, он должен вернуть ``""``.

\ **Примечание:** Пользовательские типы ресурсов, определенные скриптами, не известны :ref:`ClassDB<class_ClassDB>`, поэтому вы можете просто вернуть для них ``"Resource"``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

Должен возвращать уникальный идентификатор ресурса, связанного с указанным путем. Если этот метод не переопределен, файл ``.uid`` генерируется вместе с файлом ресурса, содержащим уникальный идентификатор.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

Сообщает, какой класс ресурсов может загрузить этот загрузчик.

\ **Примечание:** Пользовательские типы ресурсов, определенные скриптами, не известны :ref:`ClassDB<class_ClassDB>`, поэтому вы можете просто обработать ``"Resource"`` для них.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

Загружает ресурс, когда движок находит этот загрузчик совместимым. Если загруженный ресурс является результатом импорта, ``original_path`` будет нацелен на исходный файл. Возвращает объект :ref:`Resource<class_Resource>` в случае успеха или константу :ref:`Error<enum_@GlobalScope_Error>` в случае неудачи.

Свойство ``cache_mode`` определяет, следует ли и как использовать или обновлять кэш при загрузке ресурса. Подробности см. в :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

Сообщает, должен ли этот загрузчик загружать ресурс из своего пути к ресурсам для заданного типа.

Если он не реализован, поведение по умолчанию возвращает, находится ли расширение пути в пределах, предоставленных :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>`, и находится ли тип в пределах, предоставленных :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

Если реализовано, переименовывает зависимости в заданном ресурсе и сохраняет его. ``renames`` — это словарь ``{ String => String }``, сопоставляющий старые пути зависимостей с новыми путями.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или константу :ref:`Error<enum_@GlobalScope_Error>` в случае неудачи.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
