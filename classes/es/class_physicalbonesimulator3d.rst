:github_url: hide

.. _class_PhysicalBoneSimulator3D:

PhysicalBoneSimulator3D
=======================

**Hereda:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo que puede ser el padre de :ref:`PhysicalBone3D<class_PhysicalBone3D>` y puede aplicar los resultados de la simulación a :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Nodo que puede ser el padre de :ref:`PhysicalBone3D<class_PhysicalBone3D>` y puede aplicar los resultados de la simulación a :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`\ (\ ) |const|                                                                                            |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_add_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                               |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_remove_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                         |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_start_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_stop_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                  |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicalBoneSimulator3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`

Devuelve un booleano que indica si el **PhysicalBoneSimulator3D** está funcionando y simulando.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`

Añade una excepción de colisión al hueso físico.

Funciona igual que el nodo :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`

Elimina una excepción de colisión al hueso físico.

Funciona igual que el nodo :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`

Indica a los nodos :ref:`PhysicalBone3D<class_PhysicalBone3D>` en el esqueleto que comiencen a simular y reaccionar al mundo de la física.

Opcionalmente, se puede pasar una lista de nombres de huesos, permitiendo que solo se simulen los huesos pasados.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`

Indica a los nodos :ref:`PhysicalBone3D<class_PhysicalBone3D>` en el esqueleto que dejen de simular.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
