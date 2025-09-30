:github_url: hide

.. _class_PrismMesh:

PrismMesh
=========

**Наследует:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, представляющий призматическую форму :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, представляющий призматическую форму :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`left_to_right<class_PrismMesh_property_left_to_right>`       | ``0.5``              |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_PrismMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_PrismMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_PrismMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_PrismMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PrismMesh_property_left_to_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **left_to_right** = ``0.5`` :ref:`🔗<class_PrismMesh_property_left_to_right>`

.. rst-class:: classref-property-setget

- |void| **set_left_to_right**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_left_to_right**\ (\ )

Смещение верхнего края вдоль оси X. 0,0 располагает край прямо над нижним левым краем.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_PrismMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Размер призмы.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Количество добавленных краевых петель по оси Z.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Количество добавленных краевых петель по оси Y.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Количество добавленных краевых петель по оси X.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
