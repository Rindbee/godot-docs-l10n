:github_url: hide

.. _class_EditorInspectorPlugin:

EditorInspectorPlugin
=====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагин для добавления пользовательских редакторов свойств в инспектор.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorInspectorPlugin** позволяет добавлять пользовательские редакторы свойств в :ref:`EditorInspector<class_EditorInspector>`.

При редактировании объекта вызывается функция :ref:`_can_handle()<class_EditorInspectorPlugin_private_method__can_handle>`, которая должна возвращать ``true``, если тип объекта поддерживается.

Если поддерживается, будет вызвана функция :ref:`_parse_begin()<class_EditorInspectorPlugin_private_method__parse_begin>`, позволяющая размещать пользовательские элементы управления в начале класса.

Затем для каждой категории и свойства вызываются :ref:`_parse_category()<class_EditorInspectorPlugin_private_method__parse_category>` и :ref:`_parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`. Они также предоставляют возможность добавлять пользовательские элементы управления в инспектор.

Наконец, будет вызван :ref:`_parse_end()<class_EditorInspectorPlugin_private_method__parse_end>`.

При каждом из этих вызовов можно вызывать функции «add».

Чтобы использовать **EditorInspectorPlugin**, сначала зарегистрируйте его с помощью метода :ref:`EditorPlugin.add_inspector_plugin()<class_EditorPlugin_method_add_inspector_plugin>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Плагины инспектора <../tutorials/plugins/editor/inspector_plugins>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_can_handle<class_EditorInspectorPlugin_private_method__can_handle>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_begin<class_EditorInspectorPlugin_private_method__parse_begin>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_category<class_EditorInspectorPlugin_private_method__parse_category>`\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_end<class_EditorInspectorPlugin_private_method__parse_end>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_group<class_EditorInspectorPlugin_private_method__parse_group>`\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_parse_property<class_EditorInspectorPlugin_private_method__parse_property>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_custom_control<class_EditorInspectorPlugin_method_add_custom_control>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor<class_EditorInspectorPlugin_method_add_property_editor>`\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ )                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor_for_multiple_properties<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorInspectorPlugin_private_method__can_handle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_handle**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const| :ref:`🔗<class_EditorInspectorPlugin_private_method__can_handle>`

Возвращает ``true``, если этот объект может быть обработан этим плагином.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_begin:

.. rst-class:: classref-method

|void| **_parse_begin**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_begin>`

Вызывается, чтобы разрешить добавление элементов управления в начало списка свойств для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_category:

.. rst-class:: classref-method

|void| **_parse_category**\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_category>`

Вызывается, чтобы разрешить добавление элементов управления в начало категории в списке свойств для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_end:

.. rst-class:: classref-method

|void| **_parse_end**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_end>`

Вызывается, чтобы разрешить добавление элементов управления в конец списка свойств для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_group:

.. rst-class:: classref-method

|void| **_parse_group**\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_group>`

Вызывается, чтобы разрешить добавление элементов управления в начало группы или подгруппы в списке свойств для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_parse_property**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_property>`

Вызывается, чтобы разрешить добавление редакторов, специфичных для свойств, в список свойств для ``object``. Добавленный элемент управления редактором должен расширять :ref:`EditorProperty<class_EditorProperty>`. Возврат ``true`` удаляет встроенный редактор для этого свойства, в противном случае позволяет вставить пользовательский редактор перед встроенным.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_custom_control:

.. rst-class:: classref-method

|void| **add_custom_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_custom_control>`

Добавляет пользовательский элемент управления, который не обязательно является редактором свойств.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor:

.. rst-class:: classref-method

|void| **add_property_editor**\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor>`

Добавляет редактор свойств для отдельного свойства. Элемент управления ``editor`` должен расширять :ref:`EditorProperty<class_EditorProperty>`.

Для свойства может быть несколько редакторов свойств. Если ``add_to_end`` равен ``true``, этот недавно добавленный редактор будет отображаться после всех других редакторов свойства, у которых ``add_to_end`` равен ``false``. Например, редактор использует этот параметр для добавления кнопки «Редактировать область» для :ref:`Sprite2D.region_rect<class_Sprite2D_property_region_rect>` под обычным редактором :ref:`Rect2<class_Rect2>`.

\ ``label`` можно использовать для выбора пользовательской метки для редактора свойств в инспекторе. Если оставить пустым, метка вычисляется на основе имени свойства.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties:

.. rst-class:: classref-method

|void| **add_property_editor_for_multiple_properties**\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`

Добавляет редактор, позволяющий изменять несколько свойств. Элемент управления ``editor`` должен расширять :ref:`EditorProperty<class_EditorProperty>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
