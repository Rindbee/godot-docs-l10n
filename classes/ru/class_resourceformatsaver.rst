:github_url: hide

.. _class_ResourceFormatSaver:

ResourceFormatSaver
===================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сохраняет определенный тип ресурса в файл.

.. rst-class:: classref-introduction-group

Описание
----------------

Движок может сохранять ресурсы, когда вы делаете это из редактора или когда вы используете синглтон :ref:`ResourceSaver<class_ResourceSaver>`. Это достигается благодаря нескольким **ResourceFormatSaver**, каждый из которых обрабатывает свой собственный формат и автоматически вызывается движком.

По умолчанию Godot сохраняет ресурсы как ``.tres`` (текстовый), ``.res`` (двоичный) или другой встроенный формат, но вы можете создать свой собственный формат, расширив этот класс. Обязательно соблюдайте задокументированные типы возвращаемых данных и значения. Вам следует дать ему глобальное имя класса с ``class_name``, чтобы он был зарегистрирован. Как и встроенные ResourceFormatSavers, он будет вызываться автоматически при сохранении ресурсов его распознаваемого типа(ов). Вы также можете реализовать :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize<class_ResourceFormatSaver_private_method__recognize>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                                                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatSaver_private_method__recognize_path>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const|    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_save<class_ResourceFormatSaver_private_method__save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_set_uid<class_ResourceFormatSaver_private_method__set_uid>`\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual|                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourceFormatSaver_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__get_recognized_extensions>`

Возвращает список расширений, доступных для сохранения объекта ресурса, при условии, что он распознан (см. :ref:`_recognize()<class_ResourceFormatSaver_private_method__recognize>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize>`

Возвращает, может ли данный объект ресурса быть сохранен этим хранителем.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize_path>`

Возвращает ``true``, если этот сейвер обрабатывает заданный путь сохранения, и ``false`` в противном случае.

Если этот метод не реализован, поведение по умолчанию возвращает, находится ли расширение пути в пределах, предоставленных :ref:`_get_recognized_extensions()<class_ResourceFormatSaver_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__save>`

Сохраняет заданный объект ресурса в файле по адресу ``path``. ``flags`` — это битовая маска, составленная из констант :ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или константу :ref:`Error<enum_@GlobalScope_Error>` в случае неудачи.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_uid**\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__set_uid>`

Устанавливает новый UID для ресурса по указанному ``path``. Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или константу :ref:`Error<enum_@GlobalScope_Error>` в случае неудачи.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
