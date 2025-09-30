:github_url: hide

.. _class_StyleBoxLine:

StyleBoxLine
============

**Наследует:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`StyleBox<class_StyleBox>`, отображающий одну линию заданного цвета и толщины.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`StyleBox<class_StyleBox>`, который отображает одну линию заданного цвета и толщины. Линия может быть как горизонтальной, так и вертикальной. Полезно для разделителей.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_StyleBoxLine_property_color>`           | ``Color(0, 0, 0, 1)`` |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_begin<class_StyleBoxLine_property_grow_begin>` | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_end<class_StyleBoxLine_property_grow_end>`     | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`     | :ref:`thickness<class_StyleBoxLine_property_thickness>`   | ``1``                 |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`vertical<class_StyleBoxLine_property_vertical>`     | ``false``             |
   +---------------------------+-----------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StyleBoxLine_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_StyleBoxLine_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Цвет линии.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_begin** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_begin>`

.. rst-class:: classref-property-setget

- |void| **set_grow_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_begin**\ (\ )

Количество пикселей, на которое линия будет выходить за пределы **StyleBoxLine**. Если задано отрицательное значение, линия начнется внутри границ **StyleBoxLine**.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_end** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_end>`

.. rst-class:: classref-property-setget

- |void| **set_grow_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_end**\ (\ )

Количество пикселей, на которое линия выйдет за пределы границ **StyleBoxLine**. Если задано отрицательное значение, линия закончится внутри границ **StyleBoxLine**.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **thickness** = ``1`` :ref:`🔗<class_StyleBoxLine_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_thickness**\ (\ )

Толщина линии в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_StyleBoxLine_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Если ``true``, линия будет вертикальной. Если ``false``, линия будет горизонтальной.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
