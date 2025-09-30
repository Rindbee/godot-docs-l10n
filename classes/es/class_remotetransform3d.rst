:github_url: hide

.. _class_RemoteTransform3D:

RemoteTransform3D
=================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

RemoteTransform3D pushes its own :ref:`Transform3D<class_Transform3D>` to another :ref:`Node3D<class_Node3D>` derived Node in the scene.

.. rst-class:: classref-introduction-group

Descripción
----------------------

RemoteTransform3D pushes its own :ref:`Transform3D<class_Transform3D>` to another :ref:`Node3D<class_Node3D>` derived Node (called the remote node) in the scene.

It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`remote_path<class_RemoteTransform3D_property_remote_path>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_position<class_RemoteTransform3D_property_update_position>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_rotation<class_RemoteTransform3D_property_update_rotation>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_scale<class_RemoteTransform3D_property_update_scale>`                     | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_global_coordinates<class_RemoteTransform3D_property_use_global_coordinates>` | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------+
   | |void| | :ref:`force_update_cache<class_RemoteTransform3D_method_force_update_cache>`\ (\ ) |
   +--------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RemoteTransform3D_property_remote_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **remote_path** = ``NodePath("")`` :ref:`🔗<class_RemoteTransform3D_property_remote_path>`

.. rst-class:: classref-property-setget

- |void| **set_remote_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_remote_node**\ (\ )

El :ref:`NodePath<class_NodePath>` al nodo remoto, relativo a la posición del RemoteTransform3D en la escena.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_position:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_position** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_position>`

.. rst-class:: classref-property-setget

- |void| **set_update_position**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_position**\ (\ )

Si es ``true``, la posición del nodo remoto se actualiza.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_rotation** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_update_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_rotation**\ (\ )

Si es ``true``, la rotación del nodo remoto se actualiza.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_scale** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_scale>`

.. rst-class:: classref-property-setget

- |void| **set_update_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_scale**\ (\ )

Si es ``true``, la rotación del nodo remoto se actualiza.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_use_global_coordinates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_coordinates** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_use_global_coordinates>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_global_coordinates**\ (\ )

Si es ``true``, se utilizan las coordenadas globales. Si ``false``, se utilizan las coordenadas locales.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RemoteTransform3D_method_force_update_cache:

.. rst-class:: classref-method

|void| **force_update_cache**\ (\ ) :ref:`🔗<class_RemoteTransform3D_method_force_update_cache>`

**RemoteTransform3D** caches the remote node. It may not notice if the remote node disappears; :ref:`force_update_cache()<class_RemoteTransform3D_method_force_update_cache>` forces it to update the cache again.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
