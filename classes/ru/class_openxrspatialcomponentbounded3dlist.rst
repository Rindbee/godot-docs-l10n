:github_url: hide

.. _class_OpenXRSpatialComponentBounded3DList:

OpenXRSpatialComponentBounded3DList
===================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries bounded3d result data.

.. rst-class:: classref-introduction-group

Описание
----------------

Object for storing the queries 3d bounding box result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_center_pose<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_size<class_OpenXRSpatialComponentBounded3DList_method_get_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialComponentBounded3DList_method_get_center_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_center_pose**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`

Returns the center of our bounding box for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentBounded3DList_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_size>`

Returns the size of our bounding box for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
