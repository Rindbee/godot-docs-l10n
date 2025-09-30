:github_url: hide

.. _class_BaseButton:

BaseButton
==========

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`Button<class_Button>`, :ref:`LinkButton<class_LinkButton>`, :ref:`TextureButton<class_TextureButton>`

Абстрактний базовий клас для кнопок GUI.

.. rst-class:: classref-introduction-group

Опис
--------

**BaseButton** — це абстрактний базовий клас для кнопок GUI. Сам по собі нічого не відображає.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                           | :ref:`action_mode<class_BaseButton_property_action_mode>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ButtonGroup<class_ButtonGroup>`                                   | :ref:`button_group<class_BaseButton_property_button_group>`                 |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_BaseButton_property_button_mask>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`button_pressed<class_BaseButton_property_button_pressed>`             | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`disabled<class_BaseButton_property_disabled>`                         | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                                | focus_mode                                                                  | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`keep_pressed_outside<class_BaseButton_property_keep_pressed_outside>` | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                                         | :ref:`shortcut<class_BaseButton_property_shortcut>`                         |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_feedback<class_BaseButton_property_shortcut_feedback>`       | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_in_tooltip<class_BaseButton_property_shortcut_in_tooltip>`   | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`                   | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_pressed<class_BaseButton_private_method__pressed>`\ (\ ) |virtual|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_toggled<class_BaseButton_private_method__toggled>`\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual|      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`DrawMode<enum_BaseButton_DrawMode>` | :ref:`get_draw_mode<class_BaseButton_method_get_draw_mode>`\ (\ ) |const|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_hovered<class_BaseButton_method_is_hovered>`\ (\ ) |const|                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_pressed_no_signal<class_BaseButton_method_set_pressed_no_signal>`\ (\ pressed\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_BaseButton_signal_button_down:

.. rst-class:: classref-signal

**button_down**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_down>`

Випромінюється, коли кнопку починають утримувати.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_button_up:

.. rst-class:: classref-signal

**button_up**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_up>`

Випромінюється, коли кнопка перестає бути натиснутою.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_BaseButton_signal_pressed>`

Випромінюється під час перемикання або натискання кнопки. Це на :ref:`button_down<class_BaseButton_signal_button_down>`, якщо :ref:`action_mode<class_BaseButton_property_action_mode>` :ref:`ACTION_MODE_BUTTON_PRESS<class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS>` і на :ref:`button_up<class_BaseButton_signal_button_up>` інакше.

 Якщо вам потрібно знати стан натиснутої кнопки (і :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` активний), замість цього використовуйте :ref:`toggled<class_BaseButton_signal_toggled>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_toggled:

.. rst-class:: classref-signal

**toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_signal_toggled>`

Видається, коли кнопку щойно перемикали між натиснутим і нормальним станами (лише якщо :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` активний). Новий стан міститься в аргументі ``toggled_on``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_BaseButton_DrawMode:

.. rst-class:: classref-enumeration

enum **DrawMode**: :ref:`🔗<enum_BaseButton_DrawMode>`

.. _class_BaseButton_constant_DRAW_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_NORMAL** = ``0``

Нормальний стан (тобто не натиснуті, не наведені, не перемикаються та ввімкнені) кнопок.

.. _class_BaseButton_constant_DRAW_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_PRESSED** = ``1``

Стан кнопок натиснуті.

.. _class_BaseButton_constant_DRAW_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER** = ``2``

Стан кнопок наведено.

.. _class_BaseButton_constant_DRAW_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_DISABLED** = ``3``

Стан кнопок вимкнено.

.. _class_BaseButton_constant_DRAW_HOVER_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER_PRESSED** = ``4``

Стан кнопок як наведені, так і натиснуті.

.. rst-class:: classref-item-separator

----

.. _enum_BaseButton_ActionMode:

.. rst-class:: classref-enumeration

enum **ActionMode**: :ref:`🔗<enum_BaseButton_ActionMode>`

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_PRESS** = ``0``

Потрібно лише натиснути, щоб вважати кнопку натиснутою.

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_RELEASE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_RELEASE** = ``1``

Вимагайте натискання та подальшого відпускання, перш ніж вважати кнопку натиснутою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_BaseButton_property_action_mode:

.. rst-class:: classref-property

:ref:`ActionMode<enum_BaseButton_ActionMode>` **action_mode** = ``1`` :ref:`🔗<class_BaseButton_property_action_mode>`

.. rst-class:: classref-property-setget

- |void| **set_action_mode**\ (\ value\: :ref:`ActionMode<enum_BaseButton_ActionMode>`\ )
- :ref:`ActionMode<enum_BaseButton_ActionMode>` **get_action_mode**\ (\ )

Визначає, коли кнопка вважається натиснутою.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_group:

.. rst-class:: classref-property

:ref:`ButtonGroup<class_ButtonGroup>` **button_group** :ref:`🔗<class_BaseButton_property_button_group>`

.. rst-class:: classref-property-setget

- |void| **set_button_group**\ (\ value\: :ref:`ButtonGroup<class_ButtonGroup>`\ )
- :ref:`ButtonGroup<class_ButtonGroup>` **get_button_group**\ (\ )

:ref:`ButtonGroup<class_ButtonGroup>`, пов’язаний із кнопкою. Не плутати з групами вузлів.

\ **Примітка:** Кнопку буде налаштовано як перемикач, якщо їй призначено :ref:`ButtonGroup<class_ButtonGroup>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``1`` :ref:`🔗<class_BaseButton_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

Бінарна маска, щоб вибрати, на які кнопки миші ця кнопка реагуватиме.

 Щоб дозволити клацання як лівою, так і правою кнопкою миші, використовуйте ``MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT``.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **button_pressed** = ``false`` :ref:`🔗<class_BaseButton_property_button_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Якщо ``true``, кнопка натиснута. Означає, що кнопку натиснуто або перемикається (якщо :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` активний). Працює, лише якщо :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` має значення ``true``. 

\ **Примітка:** Зміна значення :ref:`button_pressed<class_BaseButton_property_button_pressed>` призведе до випромінювання :ref:`toggled<class_BaseButton_signal_toggled>`. Якщо ви хочете змінити натиснутий стан без випромінювання цього сигналу, використовуйте :ref:`set_pressed_no_signal()<class_BaseButton_method_set_pressed_no_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_BaseButton_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Якщо ``true``, кнопка вимкнена і її не можна натиснути або перемкнути.

\ **Примітка:** Якщо кнопка вимкнена під час утримання, буде випущено :ref:`button_up<class_BaseButton_signal_button_up>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_keep_pressed_outside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_pressed_outside** = ``false`` :ref:`🔗<class_BaseButton_property_keep_pressed_outside>`

.. rst-class:: classref-property-setget

- |void| **set_keep_pressed_outside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_pressed_outside**\ (\ )

Якщо ``true``, кнопка залишається натиснутою під час переміщення курсору за межі кнопки під час її натискання.

\ **Примітка:** Ця властивість впливає лише на візуальний вигляд кнопки. Сигнали будуть випромінюватися в той самий момент, незалежно від значення цієї властивості.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_BaseButton_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

``Ярлик``, пов’язаний із кнопкою.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_feedback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_feedback** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_feedback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_feedback**\ (\ )

Якщо ``true``, кнопка підсвічується на короткий проміжок часу, коли її ярлик активовано. Якщо ``false`` і :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` має значення ``false``, ярлик активується без візуального зворотного зв’язку.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_in_tooltip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_in_tooltip** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_in_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_in_tooltip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_in_tooltip_enabled**\ (\ )

Якщо ``true``, кнопка додасть інформацію про свій ярлик у спливаючу підказку. 

\ **Примітка.** Ця властивість нічого не робить, якщо елемент керування підказкою налаштовано за допомогою :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_BaseButton_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

Якщо ``true``, кнопка перебуває в режимі перемикання. Перемикає стан кнопки між натиснутим і не натиснутим щоразу, коли її область клацає.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_BaseButton_private_method__pressed:

.. rst-class:: classref-method

|void| **_pressed**\ (\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__pressed>`

Викликається при натисканні кнопки. Якщо вам потрібно знати стан натиснутої кнопки (і :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` активний), замість цього використовуйте :ref:`_toggled()<class_BaseButton_private_method__toggled>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_private_method__toggled:

.. rst-class:: classref-method

|void| **_toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__toggled>`

Викликається, коли кнопка перемикається (тільки якщо :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` активний).

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_get_draw_mode:

.. rst-class:: classref-method

:ref:`DrawMode<enum_BaseButton_DrawMode>` **get_draw_mode**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_get_draw_mode>`

Повертає візуальний стан, використаний для малювання кнопки. Це корисно головним чином під час реалізації вашого власного коду малювання шляхом заміни _draw() або підключення до сигналу "draw". Візуальний стан кнопки визначається переліком :ref:`DrawMode<enum_BaseButton_DrawMode>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_is_hovered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hovered**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_is_hovered>`

Повертає ``true``, якщо миша натиснула кнопку, але ще не залишила її.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_set_pressed_no_signal:

.. rst-class:: classref-method

|void| **set_pressed_no_signal**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_method_set_pressed_no_signal>`

Змінює :ref:`button_pressed<class_BaseButton_property_button_pressed>` стан кнопки, не випромінюючи :ref:`toggled<class_BaseButton_signal_toggled>`. Використовуйте, коли ви просто хочете змінити стан кнопки без надсилання натиснутої події (наприклад, під час ініціалізації сцени). Працює, лише якщо :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` має значення ``true``.

\ **Примітка.** Цей метод не скасовує натискання інших кнопок у :ref:`button_group<class_BaseButton_property_button_group>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
