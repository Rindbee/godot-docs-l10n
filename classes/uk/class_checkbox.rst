:github_url: hide

.. _class_CheckBox:

CheckBox
========

**Успадковує:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, яка представляє двійковий вибір.

.. rst-class:: classref-introduction-group

Опис
--------

**CheckBox** дозволяє користувачеві вибрати один із двох можливих варіантів. За функціями він схожий на :ref:`CheckButton<class_CheckButton>`, але має інший вигляд. Щоб слідувати встановленим шаблонам UX, рекомендується використовувати **CheckBox**, коли його перемикання **не** на щось впливає негайно. Наприклад, його можна використовувати, коли перемикання виконуватиме дії лише після натискання кнопки підтвердження.

Дивіться також :ref:`BaseButton<class_BaseButton>`, який містить загальні властивості та методи, пов’язані з цим вузлом.

Коли :ref:`BaseButton.button_group<class_BaseButton_property_button_group>` визначає :ref:`ButtonGroup<class_ButtonGroup>`, **CheckBox** змінює свій вигляд на перемикач і використовує різні властивості теми ``radio_*``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_checked_color<class_CheckBox_theme_color_checkbox_checked_color>`     | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_unchecked_color<class_CheckBox_theme_color_checkbox_unchecked_color>` | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckBox_theme_constant_check_v_offset>`                  | ``0``                 |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckBox_theme_icon_checked>`                                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckBox_theme_icon_checked_disabled>`                  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked<class_CheckBox_theme_icon_radio_checked>`                        |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked_disabled<class_CheckBox_theme_icon_radio_checked_disabled>`      |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked<class_CheckBox_theme_icon_radio_unchecked>`                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked_disabled<class_CheckBox_theme_icon_radio_unchecked_disabled>`  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckBox_theme_icon_unchecked>`                                |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckBox_theme_icon_unchecked_disabled>`              |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_CheckBox_theme_color_checkbox_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_checked_color>`

Колір позначеної значка, коли прапорець натиснуто.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_color_checkbox_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_unchecked_color>`

Колір значка невизначеного пункту, коли прапорець не натиснуто.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckBox_theme_constant_check_v_offset>`

Вертикальне зміщення, яке використовується під час візуалізації значків галочки (у пікселях).

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckBox_theme_icon_checked>`

Значок прапорця, який відображатиметься, коли встановлено прапорець **CheckBox**.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_checked_disabled>`

Значок прапорця, який відображається, коли **CheckBox** позначено та вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked** :ref:`🔗<class_CheckBox_theme_icon_radio_checked>`

Значок прапорця, який відображатиметься, коли **CheckBox** налаштовано як перемикач і позначено.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_checked_disabled>`

Значок прапорця, який відображатиметься, коли **CheckBox** налаштовано як перемикач, вимкнено та знято прапорець.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked>`

Значок прапорця, який відображатиметься, коли **CheckBox** налаштовано як перемикач і не встановлено прапорець.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked_disabled>`

Значок прапорця, який відображатиметься, коли **CheckBox** налаштовано як перемикач, вимкнено та знято прапорець.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckBox_theme_icon_unchecked>`

Значок прапорця, який відображатиметься, коли **CheckBox** знято.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_unchecked_disabled>`

Значок прапорця, який відображатиметься, коли **CheckBox** не позначено та вимкнено.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
