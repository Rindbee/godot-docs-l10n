:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**Наследует:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой движение мыши или пера.

.. rst-class:: classref-introduction-group

Описание
----------------

Сохраняет информацию о движении мыши или пера. Сюда входит относительное положение, абсолютное положение и скорость. См. :ref:`Node._input()<class_Node_private_method__input>`.

\ **Примечание:** По умолчанию это событие генерируется только один раз за отрисованный кадр. Если вам нужна более точная отчетность о вводе, установите :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` на ``false``, чтобы события генерировались как можно чаще. Если вы используете InputEventMouseMotion для рисования линий, рассмотрите возможность использования :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>`, чтобы избежать видимых пробелов в линиях, если пользователь быстро перемещает мышь.

\ **Примечание:** Это событие может генерироваться, даже если мышь не двигалась, как операционной системой, так и самим Godot. Если вам действительно нужно знать, переместилась ли мышь (например, чтобы отключить отображение подсказки), вам следует проверить, что ``relative.is_zero_approx()`` равно ``false``.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Мышь и входные координаты <../tutorials/inputs/mouse_and_input_coordinates>`

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Возвращает ``true`` при использовании ластика на конце стилуса.

\ **Примечание:** Это свойство реализовано в Linux, macOS и Windows.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Представляет давление, которое пользователь оказывает на ручку. Диапазон от ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

Положение мыши относительно предыдущего положения (положение в последнем кадре).

\ **Примечание:** Поскольку **InputEventMouseMotion** может быть вызвано только при перемещении мыши, невозможно надежно определить, когда мышь прекратила движение, проверив это свойство. Может потребоваться отдельный короткий таймер.

\ **Примечание:** :ref:`relation<class_InputEventMouseMotion_property_relation>` автоматически масштабируется в соответствии с коэффициентом масштабирования содержимого, который определяется настройками режима растяжения проекта. Это означает, что чувствительность мыши будет отличаться в зависимости от разрешения при использовании :ref:`relation<class_InputEventMouseMotion_property_relation>` в скрипте, который обрабатывает прицеливание мыши с режимом мыши :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`. Чтобы избежать этого, используйте вместо этого :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

Немасштабированное положение мыши относительно предыдущего положения в системе координат экрана (положение в последнем кадре).

\ **Примечание:** Поскольку **InputEventMouseMotion** может быть выдано только при перемещении мыши, невозможно надежно определить, когда мышь прекратила движение, проверив это свойство. Может потребоваться отдельный короткий таймер.

\ **Примечание:** Эта координата *не* масштабируется в соответствии с коэффициентом масштабирования содержимого или вызовами :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Это должно быть предпочтительнее, чем :ref:`relative<class_InputEventMouseMotion_property_relative>` для наведения мыши при использовании режима мыши :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, независимо от режима растяжения проекта.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

Немасштабированная скорость мыши в пикселях в секунду в экранных координатах. Эта скорость *не* масштабируется в соответствии с коэффициентом масштабирования содержимого или вызовами :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Примечание:** Используйте :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` для прицеливания мыши с использованием режима :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Представляет углы наклона пера. Положительное значение координаты X указывает на наклон вправо. Положительное значение координаты Y указывает на наклон в сторону пользователя. Диапазон от ``-1.0`` до ``1.0`` для обеих осей.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Скорость мыши в пикселях в секунду.

\ **Примечание:** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` автоматически масштабируется в соответствии с коэффициентом масштабирования контента, который определяется настройками режима растяжения проекта. Это означает, что чувствительность мыши может отличаться в зависимости от разрешения.

\ **Примечание:** Используйте :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` для наведения мыши с использованием режима мыши :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
