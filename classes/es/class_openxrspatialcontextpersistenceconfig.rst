:github_url: hide

.. _class_OpenXRSpatialContextPersistenceConfig:

OpenXRSpatialContextPersistenceConfig
=====================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for spatial persistence.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Configuration header for spatial persistence. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` as the next parameter to create a spatial context with spatial persistence capabilities.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context:

.. rst-class:: classref-method

|void| **add_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`

Adds a persistence context to this configuration. You must add at least one persistence context to create a valid configuration. You can create a persistence context by calling :ref:`OpenXRSpatialAnchorCapability.create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context:

.. rst-class:: classref-method

|void| **remove_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`

Removes a persistence context.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
