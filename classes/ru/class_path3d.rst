:github_url: hide

.. _class_Path3D:

Path3D
======

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Содержит путь :ref:`Curve3D<class_Curve3D>` для следования узлов :ref:`PathFollow3D<class_PathFollow3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Может иметь :ref:`PathFollow3D<class_PathFollow3D>` дочерних узлов, перемещающихся вдоль :ref:`Curve3D<class_Curve3D>`. См. :ref:`PathFollow3D<class_PathFollow3D>` для получения дополнительной информации об использовании.

Обратите внимание, что путь рассматривается как относительный к перемещенным узлам (дочерним элементам :ref:`PathFollow3D<class_PathFollow3D>`). Таким образом, кривая обычно должна начинаться с нулевого вектора ``(0, 0, 0)``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Curve3D<class_Curve3D>` | :ref:`curve<class_Path3D_property_curve>`                           |                       |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Path3D_signal_curve_changed:

.. rst-class:: classref-signal

**curve_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_curve_changed>`

Выпускается при изменении :ref:`curve<class_Path3D_property_curve>`.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_signal_debug_color_changed:

.. rst-class:: classref-signal

**debug_color_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_debug_color_changed>`

Испускается при изменении :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Path3D_property_curve:

.. rst-class:: classref-property

:ref:`Curve3D<class_Curve3D>` **curve** :ref:`🔗<class_Path3D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve3D<class_Curve3D>`\ )
- :ref:`Curve3D<class_Curve3D>` **get_curve**\ (\ )

:ref:`Curve3D<class_Curve3D>`, описывающая путь.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_property_debug_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Path3D_property_debug_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_custom_color**\ (\ )

Пользовательский цвет, используемый для рисования фигуры в редакторе.

Если задано значение ``Color(0.0, 0.0, 0.0)`` (по умолчанию), используется цвет, заданный в EditorSettings.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
