:github_url: hide

.. _class_XRBodyTracker:

XRBodyTracker
=============

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un corps suivi en XR.

.. rst-class:: classref-introduction-group

Description
-----------

Un système de suivi du corps créera une instance de cet objet et l'ajoutera au :ref:`XRServer<class_XRServer>`. Ce système de suivi obtiendra ensuite des données de squelette, les convertira au squelette Godot Humanoid et stockera ces données sur l'objet **XRBodyTracker**.

Utilisez :ref:`XRBodyModifier3D<class_XRBodyModifier3D>` pour animer un maillage de corps en utilisant les données de suivi du corps.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] | :ref:`body_flags<class_XRBodyTracker_property_body_flags>`               | ``0``                                                              |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_tracking_data<class_XRBodyTracker_property_has_tracking_data>` | ``false``                                                          |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                | type                                                                     | ``32`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] | :ref:`get_joint_flags<class_XRBodyTracker_method_get_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                                 |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                          | :ref:`get_joint_transform<class_XRBodyTracker_method_get_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                         |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_flags<class_XRBodyTracker_method_set_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_transform<class_XRBodyTracker_method_set_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )              |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XRBodyTracker_BodyFlags:

.. rst-class:: classref-enumeration

flags **BodyFlags**: :ref:`🔗<enum_XRBodyTracker_BodyFlags>`

.. _class_XRBodyTracker_constant_BODY_FLAG_UPPER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_UPPER_BODY_SUPPORTED** = ``1``

Suivi du corps supérieur supporté.

.. _class_XRBodyTracker_constant_BODY_FLAG_LOWER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_LOWER_BODY_SUPPORTED** = ``2``

Suivi du corps inférieur supporté.

.. _class_XRBodyTracker_constant_BODY_FLAG_HANDS_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_HANDS_SUPPORTED** = ``4``

Le suivi des mains est supporté.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_Joint:

.. rst-class:: classref-enumeration

enum **Joint**: :ref:`🔗<enum_XRBodyTracker_Joint>`

.. _class_XRBodyTracker_constant_JOINT_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_ROOT** = ``0``

Articulation de la racine.

.. _class_XRBodyTracker_constant_JOINT_HIPS:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HIPS** = ``1``

Articulation de la hanche.

.. _class_XRBodyTracker_constant_JOINT_SPINE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_SPINE** = ``2``

Articulation de colonne vertébrale.

.. _class_XRBodyTracker_constant_JOINT_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_CHEST** = ``3``

Articulation de la poitrine.

.. _class_XRBodyTracker_constant_JOINT_UPPER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_UPPER_CHEST** = ``4``

Articulation de la poitrine supérieure.

.. _class_XRBodyTracker_constant_JOINT_NECK:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_NECK** = ``5``

Articulation du cou.

.. _class_XRBodyTracker_constant_JOINT_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD** = ``6``

Articulation de la tête.

.. _class_XRBodyTracker_constant_JOINT_HEAD_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD_TIP** = ``7``

Articulation du haut de la tête.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SHOULDER** = ``8``

Articulation de l'épaule gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_ARM** = ``9``

Articulation du bras supérieur gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_ARM** = ``10``

Articulation du bras inférieur gauche.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SHOULDER** = ``11``

Articulation de l'épaule droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_ARM** = ``12``

Articulation du bras supérieur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_ARM** = ``13``

Articulation du bras inférieur droit.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_LEG** = ``14``

Articulation de la jambe supérieure gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_LEG** = ``15``

Articulation de la jambe inférieure gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT** = ``16``

Articulation du pied gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_TOES** = ``17``

Articulation des orteils gauche.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_LEG** = ``18``

Articulation de la jambe supérieure droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_LEG** = ``19``

Articulation de la jambe inférieure droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT** = ``20``

Articulation du pied droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_TOES** = ``21``

Articulation des orteils droit.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HAND** = ``22``

Articulation de la main gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PALM** = ``23``

Articulation de la paume gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST** = ``24``

Articulation du poignet gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_METACARPAL** = ``25``

Articulation métacarpienne du pouce gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_PROXIMAL** = ``26``

Articulation de phalange proximale du pouce gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_DISTAL** = ``27``

Articulation de phalange distale du pouce gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_TIP** = ``28``

Articulation du bout du pouce gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_METACARPAL** = ``29``

Articulation métacarpienne de l'index gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL** = ``30``

Articulation de phalange proximale de l'index gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``31``

Articulation de phalange intermédiaire de l'index gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL** = ``32``

Articulation de phalange distale de l'index gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_TIP** = ``33``

Articulation du bout de l'index gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_METACARPAL** = ``34``

Articulation métacarpienne du majeur gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``35``

Articulation de phalange proximale du majeur.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``36``

Articulation de phalange intermédiaire du majeur gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL** = ``37``

Articulation de phalange distale du majeur gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_TIP** = ``38``

Articulation du bout du majeur.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_METACARPAL** = ``39``

Articulation métacarpienne de l’annulaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL** = ``40``

Articulation de phalange proximale de l'annulaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE** = ``41``

Articulation de phalange intermédiaire de l'annulaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_DISTAL** = ``42``

Articulation de phalange distale de l'annulaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_TIP** = ``43``

Articulation du bout de l'annulaire.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_METACARPAL** = ``44``

Articulation métacarpienne de l'auriculaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL** = ``45``

Articulation de phalange proximale de l'auriculaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``46``

Articulation de phalange intermédiaire de l'auriculaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL** = ``47``

Articulation de phalange distale de l'auriculaire gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_TIP** = ``48``

Articulation du bout de l'auriculaire.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HAND** = ``49``

Articulation de la main droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PALM** = ``50``

Articulation de la paume droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST** = ``51``

Articulation du poignet droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_METACARPAL** = ``52``

Articulation métacarpienne du pouce droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_PROXIMAL** = ``53``

Articulation de la phalange proximale du pouce droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_DISTAL** = ``54``

Articulation de la phalange distale du pouce droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_TIP** = ``55``

Articulation du bout du pouce gauche.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_METACARPAL** = ``56``

Articulation métacarpienne de l'index droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL** = ``57``

Articulation de phalange proximale de l'index droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``58``

Articulation de phalange intermédiaire de l'index droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL** = ``59``

Articulation de phalange distale de l'index droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_TIP** = ``60``

Articulation du bout de l'index droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_METACARPAL** = ``61``

Articulation métacarpienne du majeur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``62``

Articulation de phalange proximale du majeur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``63``

Articulation de phalange intermédiaire du majeur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL** = ``64``

Articulation de phalange distale du majeur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_TIP** = ``65``

Articulation du bout du majeur droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_METACARPAL** = ``66``

Articulation métacarpienne de l'annulaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL** = ``67``

Articulation de phalange proximale de l'annulaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE** = ``68``

Articulation de phalange intermédiaire de l'annulaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL** = ``69``

Articulation de phalange distale de l'annulaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_TIP** = ``70``

Articulation du bout de l'annulaire.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_METACARPAL** = ``71``

Articulation métacarpienne de l'auriculaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL** = ``72``

Articulation de phalange proximale d'auriculaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``73``

Articulation de phalange intermédiaire de l'auriculaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL** = ``74``

Articulation de phalange distale de l'auriculaire droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_TIP** = ``75``

Articulation du bout de l'auriculaire droit.

.. _class_XRBodyTracker_constant_JOINT_LOWER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LOWER_CHEST** = ``76``

Articulation de la poitrine inférieure.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SCAPULA** = ``77``

Articulation de la scapula gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST_TWIST** = ``78``

Left wrist twist joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SCAPULA** = ``79``

Articulation de la scapula droite.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST_TWIST** = ``80``

Right wrist twist joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT_TWIST** = ``81``

Left foot twist joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HEEL** = ``82``

Articulation du talon gauche.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FOOT** = ``83``

Articulation du milieu du pied gauche.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT_TWIST** = ``84``

Right foot twist joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HEEL** = ``85``

Articulation du talon droit.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FOOT** = ``86``

Articulation du milieu du pied droit.

.. _class_XRBodyTracker_constant_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_MAX** = ``87``

Représente la taille de l'énumération :ref:`Joint<enum_XRBodyTracker_Joint>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_JointFlags:

.. rst-class:: classref-enumeration

flags **JointFlags**: :ref:`🔗<enum_XRBodyTracker_JointFlags>`

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_VALID** = ``1``

Les données d'orientation de l'articulation sont valides.

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

L'orientation de l'articulation est activement suivie. Peut ne pas être défini si le suivi a été temporairement perdu.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_VALID** = ``4``

Les données de position de l'articulation sont valides.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_TRACKED** = ``8``

La position de l'articulation est activement suivie. Peut ne pas être défini si le suivi a été temporairement perdu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRBodyTracker_property_body_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **body_flags** = ``0`` :ref:`🔗<class_XRBodyTracker_property_body_flags>`

.. rst-class:: classref-property-setget

- |void| **set_body_flags**\ (\ value\: |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\]\ )
- |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **get_body_flags**\ (\ )

Le type de données de suivi du corps capturées.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRBodyTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Si ``true``, les données de suivi du corps sont valides.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRBodyTracker_method_get_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] **get_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_flags>`

Renvoie des drapeaux sur la validité des données de suivi pour l'articulation du corps donnée.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_get_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_transform>`

Renvoie la transformation pour l'articulation du corps donnée.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_flags:

.. rst-class:: classref-method

|void| **set_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_flags>`

Définit des drapeaux sur la validité des données de suivi pour l'articulation du corps donnée.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_transform:

.. rst-class:: classref-method

|void| **set_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_transform>`

Définit la transformation pour l'articulation du corps donnée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
