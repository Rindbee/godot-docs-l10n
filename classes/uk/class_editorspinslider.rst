:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**Успадковує:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контроль редактора Godot для редагування нумеричних значень.

.. rst-class:: classref-introduction-group

Опис
--------

Цей вузол :ref:`Control<class_Control>` використовується в ідентифікаторі редактора, щоб дозволити редагування нумеричних значень. Може використовуватися з ``РедагорІнспекторПлугін`` для відтворення тієї ж поведінки.

\ ``1``, ``РедагорSpinSlider`` буде відображати стріли / вниз, аналогічні :ref:`SpinBox<class_SpinBox>`. Якщо значення ``пам'ятний діапазон`` не ``1``, слайдер буде відображатися замість.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`ControlState<enum_EditorSpinSlider_ControlState>` | :ref:`control_state<class_EditorSpinSlider_property_control_state>`     | ``0``                                                                        |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`flat<class_EditorSpinSlider_property_flat>`                       | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                | focus_mode                                                              | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)          |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`hide_slider<class_EditorSpinSlider_property_hide_slider>`         | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`label<class_EditorSpinSlider_property_label>`                     | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`read_only<class_EditorSpinSlider_property_read_only>`             | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]  | size_flags_vertical                                                     | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | step                                                                    | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`suffix<class_EditorSpinSlider_property_suffix>`                   | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown<class_EditorSpinSlider_theme_icon_updown>`                   |
   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown_disabled<class_EditorSpinSlider_theme_icon_updown_disabled>` |
   +-----------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

Випробувано, коли шпинделя / болгарка затирається.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

Випробувано, коли хребт/слідер угорбається.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

Випромінюється при натисканні кнопки вгору вниз.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

Увімкніть, коли значення має фокус.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

Випробувано, коли форма значення втрачає фокус.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_EditorSpinSlider_ControlState:

.. rst-class:: classref-enumeration

enum **ControlState**: :ref:`🔗<enum_EditorSpinSlider_ControlState>`

.. _class_EditorSpinSlider_constant_CONTROL_STATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_DEFAULT** = ``0``

The type of control used will depend on the value of :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`. Up-down arrows if ``true``, a slider if ``false``.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_PREFER_SLIDER** = ``1``

A slider will always be used, even if :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` is enabled.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_HIDE** = ``2``

Neither the up-down arrows nor the slider will be shown.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorSpinSlider_property_control_state:

.. rst-class:: classref-property

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **control_state** = ``0`` :ref:`🔗<class_EditorSpinSlider_property_control_state>`

.. rst-class:: classref-property-setget

- |void| **set_control_state**\ (\ value\: :ref:`ControlState<enum_EditorSpinSlider_ControlState>`\ )
- :ref:`ControlState<enum_EditorSpinSlider_ControlState>` **get_control_state**\ (\ )

The state in which the control used to manipulate the value will be.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_editing_integer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editing_integer** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_editing_integer>`

.. rst-class:: classref-property-setget

- |void| **set_editing_integer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_integer**\ (\ )

If ``true``, the **EditorSpinSlider** is considered to be editing an integer value. If ``false``, the **EditorSpinSlider** is considered to be editing a floating-point value. This is used to determine whether a slider should be drawn by default. The slider is only drawn for floats; integers use up-down arrows similar to :ref:`SpinBox<class_SpinBox>` instead, unless :ref:`control_state<class_EditorSpinSlider_property_control_state>` is set to :ref:`CONTROL_STATE_PREFER_SLIDER<class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER>`. It will also use :ref:`EditorSettings.interface/inspector/integer_drag_speed<class_EditorSettings_property_interface/inspector/integer_drag_speed>` instead of :ref:`EditorSettings.interface/inspector/float_drag_speed<class_EditorSettings_property_interface/inspector/float_drag_speed>` if the slider is available.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Якщо ``true``, повзунок не відображатиме фон.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**Застаріло:** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

Якщо ``true``, повзунок і стрілки вгору/вниз приховані.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Текст, який відображає зліва від значення.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Якщо ``true``, з повзунком не можна взаємодіяти.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Підсумок для відображення після значення (у фальшому кольорі). Це повинно бути як правило, багатомовне слово. Ви можете використовувати аббревіацію, якщо suffix занадто довго буде відображатися.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

Одна текстура, що представляє кнопки вгору та вниз.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

Одна текстура, що представляє кнопки вгору та вниз, коли елемент керування доступний лише для читання або вимкнений.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
