:github_url: hide

.. _class_BoneMap:

BoneMap
=======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Décrit une association de noms d'os pour un :ref:`Skeleton3D<class_Skeleton3D>` re-ciblé en noms communs définis par un :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe contient un dictionnaire qui utilise une liste de noms d'os dans un :ref:`SkeletonProfile<class_SkeletonProfile>` comme nom de clé.

En assignant le nom d'os du :ref:`Skeleton3D<class_Skeleton3D>` réel comme valeur de clé, il associe le :ref:`Skeleton3D<class_Skeleton3D>` au :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Re-ciblage des squelettes 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>` | :ref:`profile<class_BoneMap_property_profile>` |
   +-----------------------------------------------+------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`find_profile_bone_name<class_BoneMap_method_find_profile_bone_name>`\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_skeleton_bone_name<class_BoneMap_method_get_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_skeleton_bone_name<class_BoneMap_method_set_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_BoneMap_signal_bone_map_updated:

.. rst-class:: classref-signal

**bone_map_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_bone_map_updated>`

Ce signal est émis lorsque vous modifiez la valeur de clé dans la **BoneMap**. Ceci est utilisé pour valider l'association et pour mettre à jour l'éditeur **BoneMap**.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_profile_updated>`

Ce signal est émis lorsque la valeur du profil ou la référence du profil sont modifiés. Ceci est utilisé pour mettre à jour les noms de clés dans la **BoneMap** et pour redessiner l'éditeur **BoneMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_BoneMap_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_BoneMap_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

Un :ref:`SkeletonProfile<class_SkeletonProfile>` de la cible d'association. Les noms de clés dans le **BoneMap** sont synchronisés avec lui.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_BoneMap_method_find_profile_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_profile_bone_name**\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_find_profile_bone_name>`

Renvoie un nom d'os du profil ayant comme nom de squelette ``skeleton_bone_name``. S'il n'est pas trouvé, un :ref:`StringName<class_StringName>` vide sera renvoyé.

Dans le processus de re-ciblage, le nom de l'os renvoyé est le nom de l'os du squelette cible.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_get_skeleton_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_get_skeleton_bone_name>`

Renvoie un nom d'os de squelette associé au nom d'os de profil ``profile_bone_name``.

Dans le processus de re-ciblage, le nom de l'os renvoyé est le nom de l'os du squelette source.

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_set_skeleton_bone_name:

.. rst-class:: classref-method

|void| **set_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_BoneMap_method_set_skeleton_bone_name>`

Associe un nom d'os de squelette au nom d'os de profil ``profile_bone_name``.

Dans le processus de re-ciblage, le nom de l'os défini est le nom de l'os du squelette source.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
