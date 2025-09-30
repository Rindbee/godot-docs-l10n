:github_url: hide

.. _class_SkeletonModification2DPhysicalBones:

SkeletonModification2DPhysicalBones
===================================

**Expérimental :** Physical bones may be changed in the future to perform the position update of :ref:`Bone2D<class_Bone2D>` on their own, without needing this resource.

**Hérite de :** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une modification qui applique les transformations des nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` aux nœuds :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cette modification prend les transformations des nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` et les applique aux nœuds :ref:`Bone2D<class_Bone2D>`. Cela permet aux nœuds :ref:`Bone2D<class_Bone2D>` de réagir à la physique grâce aux nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` liés.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`physical_bone_chain_length<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>` | ``0`` |
   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **physical_bone_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_physical_bone_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physical_bone_chain_length**\ (\ )

Le nombre de nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` liés à cette modification.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones:

.. rst-class:: classref-method

|void| **fetch_physical_bones**\ (\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`

Vide la liste des nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` et la remplit avec tous les nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` qui sont enfants du :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`

Renvoie le nœud :ref:`PhysicalBone2D<class_PhysicalBone2D>` à l'index ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node:

.. rst-class:: classref-method

|void| **set_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`

Définit le nœud :ref:`PhysicalBone2D<class_PhysicalBone2D>` à l'index ``joint_idx``.

\ **Note :** Ce n'est que l'index utilisé pour cette modification, pas l'index d'os utilisé dans le :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_start_simulation:

.. rst-class:: classref-method

|void| **start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_start_simulation>`

Indique aux nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` de commencer à simuler et à interagir avec le monde physique.

Optionnellement, un tableau de noms d'os peut être transmis à cette fonction, et cela fera que seulement les nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` avec ces noms commencent à simuler.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_stop_simulation:

.. rst-class:: classref-method

|void| **stop_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`

Indique aux nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` d'arrêter de simuler et d'interagir avec le monde physique.

Optionnellement, un tableau de noms d'os peut être transmis à cette fonction, et cela fera que seulement les nœuds :ref:`PhysicalBone2D<class_PhysicalBone2D>` avec ces noms arrêtent de simuler.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
