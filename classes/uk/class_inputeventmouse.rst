:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**Успадковує:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

Базовий вхідний захід типу для подій мишки.

.. rst-class:: classref-introduction-group

Опис
--------

Зберігає загальну інформацію про події мишки.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``             |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

Натиснути кнопку миші ідентифікатор, один з або трохи комбінації клавіш :ref:`MouseButton<enum_@GlobalScope_MouseButton>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

При отриманні в :ref:`Node._input()<class_Node_private_method__input>` або :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, повертає позицію миша в корені :ref:`Viewport<class_Viewport>` за допомогою координаційної системи кореня :ref:`Viewport<class_Viewport>`.

При отриманні в :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, повертає позицію миша в :ref:`CanvasLayer<class_CanvasLayer>`, що :ref:`Control<class_Control>` знаходиться у використанні координаційної системи :ref:`CanvasLayer<class_CanvasLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

При отриманні в :ref:`Node._input()<class_Node_private_method__input>` або :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, повертає позицію миша в :ref:`Viewport<class_Viewport>` цього :ref:`Node<class_Node>` у використанні координаційної системи цього :ref:`Viewport<class_Viewport>`.

При отриманні в :ref:`Control._gui_input()<class_Control_private_method__gui_input>` повертає позицію миша в :ref:`Control<class_Control>` за допомогою локальної координаційної системи :ref:`Control<class_Control>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
