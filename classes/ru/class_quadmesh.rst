:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**Наследует:** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, представляющий собой квадратную сетку, обращенную к камере.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, представляющий квадрат :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Эта плоская сетка не имеет толщины. По умолчанию эта сетка выровнена по осям X и Y; такое вращение больше подходит для использования с материалами для рекламных щитов (billboard). **QuadMesh** эквивалентен :ref:`PlaneMesh<class_PlaneMesh>`, за исключением того, что его :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` по умолчанию равен :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация графического интерфейса пользователя в 3D-окне просмотра <https://godotengine.org/asset-library/asset/2807>`__

- `Демонстрация 2D в 3D-виде <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
