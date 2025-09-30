:github_url: hide

.. _class_EditorInspectorPlugin:

EditorInspectorPlugin
=====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагін для додавання власних редакторів нерухомості на інспекторі.

.. rst-class:: classref-introduction-group

Опис
--------

Плагін **EditorInspectorPlugin** дозволяє додавати до :ref:`EditorInspector<class_EditorInspector>` власні редактори властивостей.

Коли об'єкт редагується, викликається функція :ref:`_can_handle()<class_EditorInspectorPlugin_private_method__can_handle>`, яка має повернути ``true``, якщо тип об'єкта підтримується.

Якщо підтримується, викликається функція :ref:`_parse_begin()<class_EditorInspectorPlugin_private_method__parse_begin>`, що дозволяє розмістити користувацькі елементи управління на початку класу.

Згода для кожної категорії та властивості викликаються :ref:`_parse_category()<class_EditorInspectorPlugin_private_method__parse_category>` та :ref:`_parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`. Вони також надають можливість додавати кастомні елементи управління до інспектора.

Нарешті, буде викликано :ref:`_parse_end()<class_EditorInspectorPlugin_private_method__parse_end>`.

При кожному з цих викликів можна викликати функції "add".

Щоб використовувати **EditorInspectorPlugin**, спочатку зареєструйте його за допомогою методу :ref:`EditorPlugin.add_inspector_plugin()<class_EditorPlugin_method_add_inspector_plugin>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Інспектор плагінів <../tutorials/plugins/editor/inspector_plugins>`

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_EditorInspectorPlugin_private_method__can_handle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_handle**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const| :ref:`🔗<class_EditorInspectorPlugin_private_method__can_handle>`

Повертає ``true``, якщо цей об'єкт можна керувати цим плагіном.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_begin:

.. rst-class:: classref-method

|void| **_parse_begin**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_begin>`

Викликається, щоб дозволити додавання елементів керування на початок списку властивостей для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_category:

.. rst-class:: classref-method

|void| **_parse_category**\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_category>`

Викликається, щоб дозволити додавання елементів керування на початку категорії у списку властивостей для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_end:

.. rst-class:: classref-method

|void| **_parse_end**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_end>`

Викликається, щоб дозволити додавання елементів керування в кінець списку властивостей для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_group:

.. rst-class:: classref-method

|void| **_parse_group**\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_group>`

Викликається, щоб дозволити додавання елементів керування на початку групи або підгрупи у списку властивостей для ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_parse_property**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_property>`

Зателефоновано, щоб дозволити додавати редакторам майнових прав на ``object``. Додано контроль редактора необхідно продовжити :ref:`EditorProperty<class_EditorProperty>`. Повернення ``true`` видаляє вбудований редактор для цього майна, інакше дозволяє вставляти спеціальний редактор перед вбудованим.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_custom_control:

.. rst-class:: classref-method

|void| **add_custom_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_custom_control>`

Додає індивідуальний контроль, який не обов'язково редактор майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor:

.. rst-class:: classref-method

|void| **add_property_editor**\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor>`

Додавання редактора майна для індивідуального майна. Редактор ``editor`` повинен продовжити :ref:`EditorProperty<class_EditorProperty>`.

Є багато редакторів нерухомості. Якщо ``add_to_end`` є ``true``, цей нещодавно доданий редактор буде відображатися після всіх інших редакторів майна, які ``add_to_end`` ``false``. Наприклад, редактор використовує цей параметр, щоб додати кнопку "Редагувати регіон" для :ref:`Sprite2D.region_rect<class_Sprite2D_property_region_rect>` нижче звичайного редактора :ref:`Rect2<class_Rect2>`.

\ ``label`` може бути використана для вибору на замовлення етикетки для редактора нерухомості в інспекторі. Якщо ліва порожня, етикетка комп'ютерна від імені майна замість того, щоб.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties:

.. rst-class:: classref-method

|void| **add_property_editor_for_multiple_properties**\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`

Додавання редактора, що дозволяє змінювати декілька властивостей. Редактор ``editor`` повинен продовжити :ref:`EditorProperty<class_EditorProperty>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
