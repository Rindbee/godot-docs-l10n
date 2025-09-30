:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/InputEventJoypadButton.xml.

.. _class_InputEventJoypadButton:

InputEventJoypadButton
======================

**Наследует:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой нажатие или отпускание кнопки геймпада.

.. rst-class:: classref-introduction-group

Описание
----------------

Тип входного события для кнопок геймпада. Для аналоговых джойстиков и джойстиков геймпада см. :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`JoyButton<enum_@GlobalScope_JoyButton>` | :ref:`button_index<class_InputEventJoypadButton_property_button_index>` | ``0``     |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                       | :ref:`pressed<class_InputEventJoypadButton_property_pressed>`           | ``false`` |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                     | :ref:`pressure<class_InputEventJoypadButton_property_pressure>`         | ``0.0``   |
   +-----------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventJoypadButton_property_button_index:

.. rst-class:: classref-property

:ref:`JoyButton<enum_@GlobalScope_JoyButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventJoypadButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`JoyButton<enum_@GlobalScope_JoyButton>`\ )
- :ref:`JoyButton<enum_@GlobalScope_JoyButton>` **get_button_index**\ (\ )

Идентификатор кнопки. Одна из констант кнопки :ref:`JoyButton<enum_@GlobalScope_JoyButton>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventJoypadButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Если ``true``, кнопка находится в нажатом состоянии. Если ``false``, кнопка находится в отпущенном состоянии.

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadButton_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventJoypadButton_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

**Устарело:** This property is never set by the engine and is always ``0``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
