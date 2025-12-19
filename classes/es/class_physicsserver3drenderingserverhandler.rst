:github_url: hide

.. _class_PhysicsServer3DRenderingServerHandler:

PhysicsServer3DRenderingServerHandler
=====================================

**Hereda:** :ref:`Object<class_Object>`

A class used to provide :ref:`PhysicsServer3DExtension._soft_body_update_rendering_server()<class_PhysicsServer3DExtension_private_method__soft_body_update_rendering_server>` with a rendering handler for soft bodies.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_aabb<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required|                                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_normal<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_vertex<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_aabb<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ )                                                                               |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_normal<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_vertex<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb:

.. rst-class:: classref-method

|void| **_set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_aabb>`

Llamado por el :ref:`PhysicsServer3D<class_PhysicsServer3D>` para establecer el cuadro delimitador para el :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_normal:

.. rst-class:: classref-method

|void| **_set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_normal>`

Llamado por el :ref:`PhysicsServer3D<class_PhysicsServer3D>` para establecer la normal para el vértice del :ref:`SoftBody3D<class_SoftBody3D>` en el índice especificado por ``vertex_id``.

\ **Nota:** El parámetro ``normal`` solía ser de tipo ``const void*`` antes de Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex:

.. rst-class:: classref-method

|void| **_set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_private_method__set_vertex>`

Llamado por el :ref:`PhysicsServer3D<class_PhysicsServer3D>` para establecer la posición para el vértice del :ref:`SoftBody3D<class_SoftBody3D>` en el índice especificado por ``vertex_id``.

\ **Nota:** El parámetro ``vertex`` solía ser de tipo ``const void*`` antes de Godot 4.2.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_aabb:

.. rst-class:: classref-method

|void| **set_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_aabb>`

Establece el cuadro delimitador para :ref:`SoftBody3D<class_SoftBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_normal:

.. rst-class:: classref-method

|void| **set_normal**\ (\ vertex_id\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_normal>`

Sets the normal for the :ref:`SoftBody3D<class_SoftBody3D>` vertex at the index specified by ``vertex_id``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer3DRenderingServerHandler_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ vertex_id\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsServer3DRenderingServerHandler_method_set_vertex>`

Sets the position for the :ref:`SoftBody3D<class_SoftBody3D>` vertex at the index specified by ``vertex_id``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
