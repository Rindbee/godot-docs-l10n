:github_url: hide

.. _class_IKModifier3D:

IKModifier3D
============

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`ChainIK3D<class_ChainIK3D>`, :ref:`TwoBoneIK3D<class_TwoBoneIK3D>`

A node for inverse kinematics which may modify more than one bone.

.. rst-class:: classref-introduction-group

Description
-----------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s that has some joint lists and applies inverse kinematics. This class has some structs, enums, and helper methods which are useful to solve inverse kinematics.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_IKModifier3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`clear_settings<class_IKModifier3D_method_clear_settings>`\ (\ )                                      |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_setting_count<class_IKModifier3D_method_get_setting_count>`\ (\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`reset<class_IKModifier3D_method_reset>`\ (\ )                                                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_setting_count<class_IKModifier3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_IKModifier3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_IKModifier3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it, which increases performance slightly, but position changes in the bone pose made before processing this **IKModifier3D** are ignored.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_IKModifier3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_IKModifier3D_method_clear_settings>`

Efface tous les paramètres.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_IKModifier3D_method_get_setting_count>`

Returns the number of settings.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_IKModifier3D_method_reset>`

Resets a state with respect to the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IKModifier3D_method_set_setting_count>`

Sets the number of settings.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
