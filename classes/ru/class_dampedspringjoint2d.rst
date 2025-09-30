:github_url: hide

.. _class_DampedSpringJoint2D:

DampedSpringJoint2D
===================

**Наследует:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Физический шарнир, соединяющий два двумерных физических тела с помощью пружинообразной силы.

.. rst-class:: classref-introduction-group

Описание
----------------

Физический шарнир, соединяющий два 2D физических тела с помощью пружинной силы. Он ведёт себя подобно пружине, которая всегда стремится растянуться до заданной длины.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`damping<class_DampedSpringJoint2D_property_damping>`         | ``1.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_DampedSpringJoint2D_property_length>`           | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`rest_length<class_DampedSpringJoint2D_property_rest_length>` | ``0.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`stiffness<class_DampedSpringJoint2D_property_stiffness>`     | ``20.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_DampedSpringJoint2D_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``1.0`` :ref:`🔗<class_DampedSpringJoint2D_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

Коэффициент демпфирования пружинного соединения. Значение между ``0`` и ``1``. Когда два тела движутся в разных направлениях, система пытается снова выровнять их по оси пружины. Высокое значение ``dempting member`` заставляет прикрепленные тела выравниваться быстрее.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_DampedSpringJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

Максимальная длина пружинного соединения. Два присоединенных тела не могут растянуть его больше этого значения.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **rest_length** = ``0.0`` :ref:`🔗<class_DampedSpringJoint2D_property_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rest_length**\ (\ )

Когда тела, прикрепленные к пружинному соединению, движутся, они растягивают или сжимают его. Соединение всегда пытается изменить размер в сторону этой длины.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``20.0`` :ref:`🔗<class_DampedSpringJoint2D_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

Чем выше значение, тем меньше тела, прикрепленные к суставу, будут его деформировать. Сустав прикладывает к телам противодействующую силу, которая является произведением жесткости, умноженной на разницу размеров от его длины покоя.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
