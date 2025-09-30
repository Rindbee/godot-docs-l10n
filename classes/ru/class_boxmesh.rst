:github_url: hide

.. _class_BoxMesh:

BoxMesh
=======

**Наследует:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Создаёт выровненный по осям куб :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Создайте выровненный по осям ящик :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

UV-макет ящика организован в макете 3×2, что позволяет текстурировать каждую грань по отдельности. Чтобы применить одну и ту же текстуру ко всем граням, измените свойство UV материала на ``Vector3(3, 2, 1)``. Это эквивалентно добавлению ``UV *= vec2(3.0, 2.0)`` в вершинный шейдер.

\ **Примечание:** При использовании большого текстурированного **BoxMesh** (например, в качестве пола) вы можете столкнуться с проблемами дрожания UV в зависимости от угла камеры. Чтобы решить эту проблему, увеличивайте :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`, :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` и :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>` до тех пор, пока вы не перестанете замечать дрожание UV.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_BoxMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Ширина, высота и глубина коробки.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Количество дополнительных краевых петель, вставленных вдоль оси Z.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Количество дополнительных краевых петель, вставленных вдоль оси Y.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Количество дополнительных краевых петель, вставленных вдоль оси X.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
