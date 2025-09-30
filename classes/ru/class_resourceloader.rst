:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**Наследует:** :ref:`Object<class_Object>`

Синглтон для загрузки файлов ресурсов.

.. rst-class:: classref-introduction-group

Описание
----------------

Одиночный объект, используемый для загрузки файлов ресурсов из файловой системы.

Он использует множество классов :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, зарегистрированных в движке (встроенных или из плагина), для загрузки файлов в память и преобразования их в формат, который может использоваться движком.

\ **Примечание:** Сначала необходимо импортировать файлы в движок, чтобы загрузить их с помощью :ref:`load()<class_ResourceLoader_method_load>`. Если вы хотите загрузить :ref:`Image<class_Image>` во время выполнения, вы можете использовать :ref:`Image.load()<class_Image_method_load>`. Если вы хотите импортировать аудиофайлы, вы можете использовать фрагмент, описанный в :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Примечание:** Нересурсные файлы, такие как текстовые файлы, нельзя прочитать с помощью **ResourceLoader**. Вместо этого используйте :ref:`FileAccess<class_FileAccess>` для этих файлов и имейте в виду, что нересурсные файлы по умолчанию не экспортируются (см. примечания в описании класса :ref:`FileAccess<class_FileAccess>` для получения инструкций по их экспорту).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация тестирования операционной системы <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

Ресурс недействителен или не был загружен с помощью :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

Ресурс все еще загружается.

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

Вас постигла неудача, во время загрузки произошла ошибка.

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

Ресурс успешно загружен и к нему можно получить доступ через :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>`.

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ни основной ресурс (тот, который был запрошен для загрузки), ни какой-либо из его подресурсов не извлекается из кэша и не сохраняется в нем. Зависимости (внешние ресурсы) загружаются с :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

Основной ресурс (тот, который был запрошен для загрузки), его подресурсы и его зависимости (внешние ресурсы) извлекаются из кэша, если они присутствуют, а не загружаются. Те, которые не кэшируются, загружаются и затем сохраняются в кэше. Те же правила рекурсивно распространяются вниз по дереву зависимостей (внешние ресурсы).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Как :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`, но кэш проверяется для основного ресурса (того, который запрашивается для загрузки), а также для каждого из его подресурсов. Те, которые уже находятся в кэше, пока загруженные и кэшированные типы совпадают, обновляют свои данные из хранилища в уже существующие экземпляры. В противном случае они воссоздаются как совершенно новые объекты.

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Подобно :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>`, но распространяется рекурсивно вниз по дереву зависимостей (внешние ресурсы).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Подобно :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>`, но распространяется рекурсивно вниз по дереву зависимостей (внешние ресурсы).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

Регистрирует новый :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. ResourceLoader будет использовать ResourceFormatLoader, как описано в :ref:`load()<class_ResourceLoader_method_load>`. 

Этот метод выполняется неявно для ResourceFormatLoaders, написанных на GDScript (см. :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` для получения дополнительной информации).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

Возвращает, существует ли распознанный ресурс для указанного ``path``.

Необязательный ``type_hint`` может использоваться для дальнейшего указания типа :ref:`Resource<class_Resource>`, который должен обрабатываться :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Все, что наследуется от :ref:`Resource<class_Resource>`, может использоваться как подсказка типа, например :ref:`Image<class_Image>`.

\ **Примечание:** Если вы используете :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`, этот метод вернет ``true`` для принятого пути, даже если ресурс не был сохранен (т. е. существует только в кэше ресурсов).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

Возвращает ссылку на кэшированный ресурс для указанного ``path``.

\ **Примечание:** Если ресурс не кэширован, возвращаемый :ref:`Resource<class_Resource>` будет недействительным.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

Возвращает зависимости для ресурса по указанному ``path``.

Каждая зависимость — это строка, которую можно разделить на секции с помощью ``::``. Секция может быть одна или три, при этом вторая секция всегда пуста. Если секция одна, она содержит путь к файлу. Если секции три, первая секция содержит UID, а третья — резервный путь.

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # Печатает UID.
            print(dependency.get_slice("::", 2)) # Печатает резервный путь.
        else:
            print(dependency) # Печатает путь.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

Возвращает список распознанных расширений для типа ресурса.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

Возвращает идентификатор, связанный с указанным путем к ресурсу, или ``-1``, если такой идентификатор не существует.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

Возвращает, доступен ли кэшированный ресурс для указанного ``path``.

После загрузки ресурса движком он кэшируется в памяти для более быстрого доступа, и будущие вызовы метода :ref:`load()<class_ResourceLoader_method_load>` будут использовать кэшированную версию. Кэшированный ресурс можно переопределить, используя :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` для нового ресурса для того же пути.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

Перечисляет каталог, возвращая все ресурсы и подкаталоги, содержащиеся в нем. Файлы ресурсов имеют исходные имена файлов, которые видны в редакторе перед экспортом. К каталогам добавлены ``"/"``.

::

    # Выводит ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **Примечание:** Порядок файлов и каталогов, возвращаемых этим методом, не является детерминированным и может различаться в зависимости от операционной системы.

\ **Примечание:** Чтобы нормально пройти по файловой системе, см. :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

Загружает ресурс по указанному ``path``, кэшируя результат для дальнейшего доступа.

Зарегистрированные :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` запрашиваются последовательно, чтобы найти первый, который может обработать расширение файла, а затем пытаются загрузить. Если загрузка не удалась, также пытаются загрузить оставшиеся ResourceFormatLoader.

Необязательный ``type_hint`` может использоваться для дальнейшего указания типа :ref:`Resource<class_Resource>`, который должен обрабатываться :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Все, что наследуется от :ref:`Resource<class_Resource>`, может использоваться в качестве подсказки типа, например :ref:`Image<class_Image>`.

Свойство ``cache_mode`` определяет, следует ли и как использовать или обновлять кэш при загрузке ресурса.

Возвращает пустой ресурс, если ни один :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` не может обработать файл, и выводит ошибку, если файл не найден по указанному пути.

GDScript имеет упрощенный встроенный метод :ref:`@GDScript.load()<class_@GDScript_method_load>`, который можно использовать в большинстве ситуаций, оставляя использование **ResourceLoader** для более сложных сценариев.

\ **Примечание:** Если :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` имеет значение ``true``, :ref:`@GDScript.load()<class_@GDScript_method_load>` не сможет прочитать преобразованные файлы в экспортированном проекте. Если вы полагаетесь на загрузку файлов, присутствующих в PCK, во время выполнения, установите :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` на ``false``.

\ **Примечание:** Относительные пути будут иметь префикс ``"res://"`` перед загрузкой, чтобы избежать непредвиденных результатов, убедитесь, что ваши пути абсолютные.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

Возвращает ресурс, загруженный :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

Если это вызывается до завершения потока загрузки (т. е. :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` не является :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`), вызывающий поток будет заблокирован до тех пор, пока ресурс не завершит загрузку. Однако рекомендуется использовать :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>`, чтобы узнать, когда загрузка фактически завершена.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

Возвращает статус операции потоковой загрузки, запущенной с помощью :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` для ресурса в ``path``.

Переменная массива может быть дополнительно передана через ``progress`` и вернет одноэлементный массив, содержащий отношение завершения потоковой загрузки (между ``0.0`` и ``1.0``).

\ **Примечание:** Рекомендуемый способ использования этого метода — вызывать его во время разных кадров (например, в :ref:`Node._process()<class_Node_private_method__process>`, а не в цикле).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

Загружает ресурс с помощью потоков. Если ``use_sub_threads`` равен ``true``, для загрузки ресурса будет использоваться несколько потоков, что ускоряет загрузку, но может повлиять на основной поток (и, таким образом, вызвать замедление игры).

Параметр ``cache_mode`` определяет, следует ли и как использовать или обновлять кэш при загрузке ресурса.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

Отменяет регистрацию указанного :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

Изменяет поведение при отсутствии подресурсов. Поведение по умолчанию — прерывание загрузки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
