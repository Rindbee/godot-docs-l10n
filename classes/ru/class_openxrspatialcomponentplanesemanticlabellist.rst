:github_url: hide

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList:

OpenXRSpatialComponentPlaneSemanticLabelList
============================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries plane semantic label result data.

.. rst-class:: classref-introduction-group

Описание
----------------

Object for storing the queries plane semantic label result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` | :ref:`get_plane_semantic_label<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel:

.. rst-class:: classref-enumeration

enum **PlaneSemanticLabel**: :ref:`🔗<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>`

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_UNCATEGORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_UNCATEGORIZED** = ``1``

Uncategorized plane.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_FLOOR** = ``2``

Plane represents a floor.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_WALL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_WALL** = ``3``

Plane represents a wall.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_CEILING:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_CEILING** = ``4``

Plane represents a ceiling.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_TABLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_TABLE** = ``5``

Plane represents the surface of a table.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label:

.. rst-class:: classref-method

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **get_plane_semantic_label**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`

Returns the plane semantic label for the parent entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
