:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/InputEventMouseButton.xml.

.. _class_InputEventMouseButton:

InputEventMouseButton
=====================

**Успадковує:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Відображається кнопка миші, що натискається або виділяється.

.. rst-class:: classref-introduction-group

Опис
--------

Зберігайте інформацію про події натискання миші. Див. :ref:`Node._input()<class_Node_private_method__input>`.

\ **Примітка:** На пристроях Wear OS, обертальний вхід на картографію :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_UP<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_UP>` і :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_DOWN<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_DOWN>`. Це може бути змінено до :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_LEFT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_LEFT>` та :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_RIGHT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_RIGHT>` з :ref:`ProjectSettings.input_devices/pointing/android/rotary_input_scroll_axis<class_ProjectSettings_property_input_devices/pointing/android/rotary_input_scroll_axis>` налаштування.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

- :doc:`Мишка і координати введення <../tutorials/inputs/mouse_and_input_coordinates>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`MouseButton<enum_@GlobalScope_MouseButton>` | :ref:`button_index<class_InputEventMouseButton_property_button_index>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`canceled<class_InputEventMouseButton_property_canceled>`         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`double_click<class_InputEventMouseButton_property_double_click>` | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`factor<class_InputEventMouseButton_property_factor>`             | ``1.0``   |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventMouseButton_property_pressed>`           | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventMouseButton_property_button_index:

.. rst-class:: classref-property

:ref:`MouseButton<enum_@GlobalScope_MouseButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventMouseButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`MouseButton<enum_@GlobalScope_MouseButton>`\ )
- :ref:`MouseButton<enum_@GlobalScope_MouseButton>` **get_button_index**\ (\ )

Кнопка мишки ідентифікатор, один з :ref:`MouseButton<enum_@GlobalScope_MouseButton>`, кнопка або кнопка Колеса константи.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

Якщо ``true``, миша кнопка була скасована.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_double_click:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_click** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_double_click>`

.. rst-class:: classref-property-setget

- |void| **set_double_click**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_click**\ (\ )

Якщо ``true``, стан кнопки миші є подвійним клацанням.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **factor** = ``1.0`` :ref:`🔗<class_InputEventMouseButton_property_factor>`

.. rst-class:: classref-property-setget

- |void| **set_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_factor**\ (\ )

Сума (або дельта) заходу. При використанні для високоточних прокруток, це вказує на суму прокрутки (вертична або горизонтальна). Це тільки підтримується на деяких платформах; віддана чутливість змінюється в залежності від платформи. Може бути ``0`` якщо не підтримується.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Якщо ``true``, стан кнопки миші натискається. Якщо ``false``, стан кнопки миші випускається.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
