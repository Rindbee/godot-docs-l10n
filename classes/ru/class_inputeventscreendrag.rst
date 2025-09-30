:github_url: hide

.. _class_InputEventScreenDrag:

InputEventScreenDrag
====================

**Наследует:** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет событие перетаскивания экрана.

.. rst-class:: classref-introduction-group

Описание
----------------

Сохраняет информацию о событиях перетаскивания экрана. См. :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenDrag_property_index>`                     | ``0``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventScreenDrag_property_pen_inverted>`       | ``false``         |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenDrag_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventScreenDrag_property_pressure>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventScreenDrag_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventScreenDrag_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventScreenDrag_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventScreenDrag_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenDrag_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

Индекс события перетаскивания в случае события множественного перетаскивания.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventScreenDrag_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Возвращает ``true`` при использовании ластика на конце стилуса.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Положение перетаскивания в области просмотра, в которой находится узел, с использованием системы координат этой области просмотра (viewport)-а.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventScreenDrag_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Представляет давление, которое пользователь оказывает на ручку. Диапазон от ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

Положение перетаскивания относительно предыдущего положения (положение в последнем кадре).

\ **Примечание:** :ref:`relation<class_InputEventScreenDrag_property_relation>` автоматически масштабируется в соответствии с коэффициентом масштабирования содержимого, который определяется настройками режима растяжения проекта. Это означает, что чувствительность к прикосновению будет отличаться в зависимости от разрешения при использовании :ref:`relation<class_InputEventScreenDrag_property_relation>` в скрипте, который обрабатывает сенсорное наведение. Чтобы избежать этого, используйте вместо этого :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

Немасштабированная позиция перетаскивания относительно предыдущей позиции в экранных координатах (позиция в последнем кадре). Эта позиция *не* масштабируется в соответствии с коэффициентом масштабирования содержимого или вызовами :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Это должно быть предпочтительнее, чем :ref:`relation<class_InputEventScreenDrag_property_relation>` для сенсорного наведения независимо от режима растяжения проекта.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

Немасштабированная скорость перетаскивания в пикселях в секунду в экранных координатах. Эта скорость *не* масштабируется в соответствии с коэффициентом масштабирования содержимого или вызовами :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Это должно быть предпочтительнее, чем :ref:`velocity<class_InputEventScreenDrag_property_velocity>` для сенсорного наведения независимо от режима растяжения проекта.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Представляет углы наклона пера. Положительное значение координаты X указывает на наклон вправо. Положительное значение координаты Y указывает на наклон в сторону пользователя. Диапазон от ``-1.0`` до ``1.0`` для обеих осей.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Скорость перетаскивания.

\ **Примечание:** :ref:`velocity<class_InputEventScreenDrag_property_velocity>` автоматически масштабируется в соответствии с коэффициентом масштабирования контента, который определяется настройками режима растяжения проекта. Это означает, что чувствительность к прикосновению будет отличаться в зависимости от разрешения при использовании :ref:`velocity<class_InputEventScreenDrag_property_velocity>` в скрипте, который обрабатывает сенсорное наведение. Чтобы избежать этого, используйте вместо этого :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
