:github_url: hide

.. _class_ChainIK3D:

ChainIK3D
=========

**Hérite de :** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`IterateIK3D<class_IterateIK3D>`, :ref:`SplineIK3D<class_SplineIK3D>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` to apply inverse kinematics to bone chains containing an arbitrary number of bones.

.. rst-class:: classref-introduction-group

Description
-----------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that automatically generates a joint list from the bones between the root bone and the end bone.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_ChainIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_ChainIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_end_bone_length<class_ChainIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_ChainIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_ChainIK3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_ChainIK3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_ChainIK3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_ChainIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_ChainIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_ChainIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_ChainIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_ChainIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_length<class_ChainIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_ChainIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_ChainIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_ChainIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_ChainIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ChainIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone>`

Renvoie l'index de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_direction>`

Returns the tail direction of the end bone of the bone chain when :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_length>`

Returns the end bone tail length of the bone chain when :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_name>`

Renvoie le nom de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone>`

Renvoie l'index de l'os à la liaison ``joint`` dans la liste de liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone_name>`

Renvoie le nom de l'os à la liaison ``joint`` dans la liste de liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_count>`

Renvoie la quantité de liaisons dans la liste des liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone>`

Renvoie l'index de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone_name>`

Renvoie le nom de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_is_end_bone_extended>`

Returns ``true`` if the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone>`

Définit l'index de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_direction>`

Définit la direction de la queue de l'os de fin de la chaîne d'os lorsque :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_length>`

Définit la longueur de la queue de l'os de fin de la chaîne d'os lorsque :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_name>`

Sets the end bone name of the bone chain.

\ **Note:** The end bone must be the root bone or a child of the root bone. If they are the same, the tail must be extended by :ref:`set_extend_end_bone()<class_ChainIK3D_method_set_extend_end_bone>` to modify the bone.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ChainIK3D_method_set_extend_end_bone>`

If ``enabled`` is ``true``, the end bone is extended to have a tail.

The extended tail config is allocated to the last element in the joint list. In other words, if you set ``enabled`` to ``false``, the config of the last element in the joint list has no effect in the simulated result.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone>`

Définit l'index de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone_name>`

Définit le nom de l'os racine de la chaîne d'os.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
