:github_url: hide

.. _class_XRBodyModifier3D:

XRBodyModifier3D
================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud pour contrôler les maillage de corps depuis des données :ref:`XRBodyTracker<class_XRBodyTracker>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud utilise les données de suivi du corps d'un :ref:`XRBodyTracker<class_XRBodyTracker>` pour rendre les poses du squelette d'un maillage de corps.

Le positionnement du corps est effectué en créant un ancêtre :ref:`XRNode3D<class_XRNode3D>` du maillage de corps conduit par le même :ref:`XRBodyTracker<class_XRBodyTracker>`.

Les données de position du corps sont dimensionnées par :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` lorsqu'elles sont appliquées au squelette, ce qui peut être utilisé pour ajuster le corps suivi afin de correspondre à l'échelle du modèle de corps.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`body_tracker<class_XRBodyModifier3D_property_body_tracker>` | ``&"/user/body_tracker"`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] | :ref:`body_update<class_XRBodyModifier3D_property_body_update>`   | ``7``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`               | :ref:`bone_update<class_XRBodyModifier3D_property_bone_update>`   | ``0``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XRBodyModifier3D_BodyUpdate:

.. rst-class:: classref-enumeration

flags **BodyUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BodyUpdate>`

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_UPPER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_UPPER_BODY** = ``1``

Les articulations supérieures du squelette sont mises à jour.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_LOWER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_LOWER_BODY** = ``2``

Les articulations inférieures du squelette sont mises à jour.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_HANDS:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_HANDS** = ``4``

Les articulations des mains du squelette sont mises à jour.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BoneUpdate>`

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Les os du squelette sont complètement mis à jour (à la fois en position et en rotation) pour correspondre aux os suivis.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Les os du squelette ne sont tournés que pour s'aligner avec les os suivis, préservant la longueur des os.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Représente la taille de l'énumération :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRBodyModifier3D_property_body_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **body_tracker** = ``&"/user/body_tracker"`` :ref:`🔗<class_XRBodyModifier3D_property_body_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_body_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_body_tracker**\ (\ )

Le nom du :ref:`XRBodyTracker<class_XRBodyTracker>` enregistré avec :ref:`XRServer<class_XRServer>` d'où obtenir les données de suivi du corps.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_body_update:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **body_update** = ``7`` :ref:`🔗<class_XRBodyModifier3D_property_body_update>`

.. rst-class:: classref-property-setget

- |void| **set_body_update**\ (\ value\: |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\]\ )
- |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **get_body_update**\ (\ )

Spécifie les parties du corps à mettre à jour.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRBodyModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Spécifie le type de mises à jour à effectuer sur les os.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
