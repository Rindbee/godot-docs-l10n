:github_url: hide

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList:

OpenXRSpatialComponentPlaneSemanticLabelList
============================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries plane semantic label result data.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Object for storing the queries plane semantic label result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` | :ref:`get_plane_semantic_label<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label:

.. rst-class:: classref-method

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **get_plane_semantic_label**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`

Returns the plane semantic label for the parent entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
