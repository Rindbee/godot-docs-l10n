:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

Une classe de base de la collision qui interagit avec :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une collision peut être un enfant de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`. Si ce n'est pas un enfant de :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, elle n'a aucun effet.

La collision et le glissement sont effectués dans le processus de modification du :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` dans l'ordre de sa liste de collision qui est définie par :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>`. Si :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` vaut ``true``, l'ordre correspond à celui du :ref:`SceneTree<class_SceneTree>`.

Si :ref:`bone<class_SpringBoneCollision3D_property_bone>` est défini, il se synchronise avec la pose d'os du :ref:`Skeleton3D<class_Skeleton3D>` ancêtre, ce qui est fait avant le processus de modification du :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` comme un pré-traitement.

\ **Attention :** Une **SpringBoneCollision3D** redimensionnée ne se comportera probablement pas comme prévu. Assurez-vous que le :ref:`Skeleton3D<class_Skeleton3D>` parent et ses os ont une échelle de 1.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`               | :ref:`bone<class_SpringBoneCollision3D_property_bone>`                       | ``-1`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`         | :ref:`bone_name<class_SpringBoneCollision3D_property_bone_name>`             | ``""`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`position_offset<class_SpringBoneCollision3D_property_position_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`rotation_offset<class_SpringBoneCollision3D_property_rotation_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SpringBoneCollision3D_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

L'index de l’os attaché.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Le nom de l’os attaché.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

Le décalage de la position avec la position de pose de l'os :ref:`bone<class_SpringBoneCollision3D_property_bone>` du :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

Le décalage de la rotation avec la rotation de pose de l'os :ref:`bone<class_SpringBoneCollision3D_property_bone>` du :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

Obtient le nœud :ref:`Skeleton3D<class_Skeleton3D>` parent du :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` parent si trouvé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
