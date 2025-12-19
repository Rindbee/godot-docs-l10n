:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking:

OpenXRSpatialCapabilityConfigurationPlaneTracking
=================================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for plane tracking.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Configuration header for plane tracking. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context with plane tracking capabilities.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_labels<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`\ (\ )                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_mesh_2d<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`\ (\ )                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_polygons<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`\ (\ )                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`

Returns the components enabled by this configuration.

\ **Note:** Only valid after this configuration was used to create a spatial context.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_labels**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`

Returns ``true`` if we support the plane semantic label component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>` data object.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_mesh_2d**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`

Returns ``true`` if we support the mesh 2D component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>` data object.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_polygons**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`

Returns ``true`` if we support the polygon 2D component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>` data object.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
