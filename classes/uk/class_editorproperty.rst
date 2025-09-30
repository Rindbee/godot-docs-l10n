:github_url: hide

.. _class_EditorProperty:

EditorProperty
==============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Користувацький елемент керування для редагування властивостей, який можна додати до :ref:`EditorInspector<class_EditorInspector>`.

.. rst-class:: classref-introduction-group

Опис
--------

Користувацький елемент керування для редагування властивостей, який можна додати до :ref:`EditorInspector<class_EditorInspector>`. Його додають через :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checkable<class_EditorProperty_property_checkable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checked<class_EditorProperty_property_checked>`                   | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`deletable<class_EditorProperty_property_deletable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_background<class_EditorProperty_property_draw_background>`   | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_label<class_EditorProperty_property_draw_label>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_warning<class_EditorProperty_property_draw_warning>`         | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                              | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`keying<class_EditorProperty_property_keying>`                     | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`label<class_EditorProperty_property_label>`                       | ``""``                                                              |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`name_split_ratio<class_EditorProperty_property_name_split_ratio>` | ``0.5``                                                             |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`read_only<class_EditorProperty_property_read_only>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`selectable<class_EditorProperty_property_selectable>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`use_folding<class_EditorProperty_property_use_folding>`           | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_set_read_only<class_EditorProperty_private_method__set_read_only>`\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_update_property<class_EditorProperty_private_method__update_property>`\ (\ ) |virtual|                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_focusable<class_EditorProperty_method_add_focusable>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`deselect<class_EditorProperty_method_deselect>`\ (\ )                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit_changed<class_EditorProperty_method_emit_changed>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_edited_object<class_EditorProperty_method_get_edited_object>`\ (\ )                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_edited_property<class_EditorProperty_method_get_edited_property>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_selected<class_EditorProperty_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`select<class_EditorProperty_method_select>`\ (\ focusable\: :ref:`int<class_int>` = -1\ )                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bottom_editor<class_EditorProperty_method_set_bottom_editor>`\ (\ editor\: :ref:`Control<class_Control>`\ )                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_label_reference<class_EditorProperty_method_set_label_reference>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_object_and_property<class_EditorProperty_method_set_object_and_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ )                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`update_property<class_EditorProperty_method_update_property>`\ (\ )                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorProperty_signal_multiple_properties_changed:

.. rst-class:: classref-signal

**multiple_properties_changed**\ (\ properties\: :ref:`PackedStringArray<class_PackedStringArray>`, value\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EditorProperty_signal_multiple_properties_changed>`

Визначте, якщо ви хочете одночасно кілька властивостей. Не використовуйте, якщо додано :ref:`редакторPlugin._parse_property()<class_редакторPlugin_method__parse_property>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ property\: :ref:`StringName<class_StringName>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_object_id_selected>`

Використовуються субінспекторами. Визначте його, якщо вибраний був ідентифікатор об'єкта.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_can_revert_changed:

.. rst-class:: classref-signal

**property_can_revert_changed**\ (\ property\: :ref:`StringName<class_StringName>`, can_revert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_can_revert_changed>`

Випробувано, коли ревертабельність (тобто, чи має значення невидимості і, таким чином, відображається значок реверта) майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_changed:

.. rst-class:: classref-signal

**property_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>`, changing\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_changed>`

Не випромінюйте це вручну, натомість використовуйте метод :ref:`emit_changed()<class_EditorProperty_method_emit_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_checked:

.. rst-class:: classref-signal

**property_checked**\ (\ property\: :ref:`StringName<class_StringName>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_checked>`

Випробувано при перевірці майна. Використовується внутрішньо.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_deleted>`

При видаленні майнового майна. Використовується внутрішньо.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_favorited:

.. rst-class:: classref-signal

**property_favorited**\ (\ property\: :ref:`StringName<class_StringName>`, favorited\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_favorited>`

Випустіть його, якщо ви хочете позначити властивість як вибране, щоб вона з’явилася у верхній частині інспектора.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed>`

Визначте, якщо ви хочете додати цю вартість як ключ анімації (перевірка для клавіатури ввімкнено першим).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed_with_value:

.. rst-class:: classref-signal

**property_keyed_with_value**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed_with_value>`

Визначте це, якщо ви хочете створити нерухомість з одним значенням.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_overridden:

.. rst-class:: classref-signal

**property_overridden**\ (\ ) :ref:`🔗<class_EditorProperty_signal_property_overridden>`

Видається, коли запитується перевизначення налаштувань для поточного проєкту.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_pinned:

.. rst-class:: classref-signal

**property_pinned**\ (\ property\: :ref:`StringName<class_StringName>`, pinned\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_pinned>`

Визначте, якщо ви хочете відмітити (або немарку) значення майна, що зберігається незалежно від значення за замовчуванням.

Значення за замовчуванням є одним майном буде отримувати, коли вершина просто миттєво і може прийти з позиційного сцени в ланцюжку спадкування / інтенсифікації, скрипт або вбудований клас.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ path\: :ref:`String<class_String>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorProperty_signal_resource_selected>`

Якщо ви хочете змінити субресурс, випромінюючи цей сигнал з ресурсом.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_selected:

.. rst-class:: classref-signal

**selected**\ (\ path\: :ref:`String<class_String>`, focusable_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_selected>`

Випробувано при виборі. Використовується внутрішньо.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorProperty_property_checkable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checkable** = ``false`` :ref:`🔗<class_EditorProperty_property_checkable>`

.. rst-class:: classref-property-setget

- |void| **set_checkable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checkable**\ (\ )

Використовується інспектором, встановленим на ``true`` при перевірці майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checked** = ``false`` :ref:`🔗<class_EditorProperty_property_checked>`

.. rst-class:: classref-property-setget

- |void| **set_checked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checked**\ (\ )

Використовується інспектором, встановленим на ``true`` при перевірці майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_deletable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deletable** = ``false`` :ref:`🔗<class_EditorProperty_property_deletable>`

.. rst-class:: classref-property-setget

- |void| **set_deletable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deletable**\ (\ )

Використовується інспектором, встановленим на ``true``, коли майно може бути видалено користувачем.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_background:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_background** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_background>`

.. rst-class:: classref-property-setget

- |void| **set_draw_background**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_background**\ (\ )

Використовується інспектором, має значення ``true``, коли малюється фон властивості.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_label:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_label** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_label>`

.. rst-class:: classref-property-setget

- |void| **set_draw_label**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_label**\ (\ )

Використовується інспектором, має значення ``true`` під час малювання мітки властивості.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_warning** = ``false`` :ref:`🔗<class_EditorProperty_property_draw_warning>`

.. rst-class:: classref-property-setget

- |void| **set_draw_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_warning**\ (\ )

Використовується інспектором, встановленим на ``true``, коли властивість намальовується за кольором попередження редактора. Використовується для редагування властивостей дітей.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_keying:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keying** = ``false`` :ref:`🔗<class_EditorProperty_property_keying>`

.. rst-class:: classref-property-setget

- |void| **set_keying**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keying**\ (\ )

Використовується інспектором, встановленим на ``true``, коли властивість може додати ключі для анімації.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorProperty_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Встановіть цю властивість для зміни етикетки (якщо ви хочете показати один).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_name_split_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **name_split_ratio** = ``0.5`` :ref:`🔗<class_EditorProperty_property_name_split_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_name_split_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_name_split_ratio**\ (\ )

Співвідношення розподілу простору між міткою та полем редагування.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorProperty_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Використовується інспектором, встановленим на ``true`` при прочитуванні майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_EditorProperty_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Використовується інспектором, має значення ``true``, якщо властивість доступна для вибору.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_use_folding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_folding** = ``false`` :ref:`🔗<class_EditorProperty_property_use_folding>`

.. rst-class:: classref-property-setget

- |void| **set_use_folding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_folding**\ (\ )

Використовується інспектором, має значення ``true``, коли властивість використовує згортання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorProperty_private_method__set_read_only:

.. rst-class:: classref-method

|void| **_set_read_only**\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__set_read_only>`

Зателефоновано при зміні читаного статусу майна. Може використовуватися для зміни користувацького контролю в режимі читання або модифікаційного стану.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_private_method__update_property:

.. rst-class:: classref-method

|void| **_update_property**\ (\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__update_property>`

Коли ця віртуальна функція називається, ви повинні оновити редактор.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_add_focusable:

.. rst-class:: classref-method

|void| **add_focusable**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_add_focusable>`

Якщо будь-який з доданих елементів керування можна отримати фокус клавіатури, додайте його тут. Це забезпечує, що фокус буде відновлений, якщо інспектор освіжається.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_deselect:

.. rst-class:: classref-method

|void| **deselect**\ (\ ) :ref:`🔗<class_EditorProperty_method_deselect>`

Малювати властивість як невибрану. Використовується інспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorProperty_method_emit_changed>`

При зміні одного або декількох властивостей, це необхідно назвати. ``field`` використовується в разі, якщо ваш редактор може змінювати поля окремо (наприклад, Vector3.x). ``changing`` аргумент дозволяє уникнути запиту редактора цього майна, щоб бути оновленим (Зберегти як ``false`` if unsure).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorProperty_method_get_edited_object>`

Повертає відредагований об'єкт.

\ **Примітка:** Цей метод може повернути ``null``, якщо редактор ще не пов'язано з властивістю. Однак у :ref:`_update_property()<class_EditorProperty_private_method__update_property>` та :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>` це значення *гарантовано* буде відмінним від ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_property:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_edited_property**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_get_edited_property>`

Повертає відредаговану властивість. Якщо ваш редактор призначений для однієї властивості (доданої через :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`), тоді цей метод поверне цю властивість.

\ **Примітка:** Цей метод може повернути ``null``, якщо редактор ще не пов'язаний з властивістю. Однак у :ref:`_update_property()<class_EditorProperty_private_method__update_property>` та :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>` це значення *гарантовано* буде відмінним від ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_is_selected>`

Повертає ``true``, якщо властивість намальована як вибрана. Використовується інспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ focusable\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_EditorProperty_method_select>`

Намалювати властивість як вибрано. Використовується інспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_bottom_editor:

.. rst-class:: classref-method

|void| **set_bottom_editor**\ (\ editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_bottom_editor>`

Поставить ``editor`` контроль за міткою майна. Контроль необхідно попередньо додавати за допомогою :ref:`Node.add_child()<class_Node_method_add_child>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_label_reference:

.. rst-class:: classref-method

|void| **set_label_reference**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_label_reference>`

Використовується інспектором, установлюється на елемент керування, який використовуватиметься як еталон для розрахунку розміру етикетки.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_object_and_property:

.. rst-class:: classref-method

|void| **set_object_and_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_method_set_object_and_property>`

Призначає об’єкт і властивість для редагування.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_update_property:

.. rst-class:: classref-method

|void| **update_property**\ (\ ) :ref:`🔗<class_EditorProperty_method_update_property>`

Примусово оновлює відображення властивостей.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
