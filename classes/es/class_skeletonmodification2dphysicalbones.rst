:github_url: hide

.. _class_SkeletonModification2DPhysicalBones:

SkeletonModification2DPhysicalBones
===================================

**Experimental:** Physical bones may be changed in the future to perform the position update of :ref:`Bone2D<class_Bone2D>` on their own, without needing this resource.

**Hereda:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificación que aplica las transformaciones de los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` a los nodos :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta modificación toma las transformaciones de los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` y las aplica a los nodos :ref:`Bone2D<class_Bone2D>`. Esto permite que los nodos :ref:`Bone2D<class_Bone2D>` reaccionen a la física gracias a los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` enlazados.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`physical_bone_chain_length<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>` | ``0`` |
   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`fetch_physical_bones<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`\ (\ )                                                                                               |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`start_simulation<class_SkeletonModification2DPhysicalBones_method_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`stop_simulation<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **physical_bone_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_physical_bone_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physical_bone_chain_length**\ (\ )

El número de nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` enlazados en esta modificación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones:

.. rst-class:: classref-method

|void| **fetch_physical_bones**\ (\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`

Vacía la lista de nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` y la llena con todos los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` que son hijos del :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`

Devuelve el nodo :ref:`PhysicalBone2D<class_PhysicalBone2D>` en ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node:

.. rst-class:: classref-method

|void| **set_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`

Establece el nodo :ref:`PhysicalBone2D<class_PhysicalBone2D>` en ``joint_idx``.

\ **Nota:** Este es solo el índice utilizado para esta modificación, no el índice del hueso utilizado en el :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_start_simulation:

.. rst-class:: classref-method

|void| **start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_start_simulation>`

Indica a los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` que comiencen a simular e interactuar con el mundo físico.

Opcionalmente, se puede pasar un array de nombres de huesos a esta función, y eso hará que solo los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` con esos nombres comiencen a simular.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_stop_simulation:

.. rst-class:: classref-method

|void| **stop_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`

Indica a los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` que dejen de simular e interactuar con el mundo físico.

Opcionalmente, se puede pasar un array de nombres de huesos a esta función, y eso hará que solo los nodos :ref:`PhysicalBone2D<class_PhysicalBone2D>` con esos nombres dejen de simular.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
