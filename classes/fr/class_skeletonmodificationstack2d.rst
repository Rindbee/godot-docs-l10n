:github_url: hide

.. _class_SkeletonModificationStack2D:

SkeletonModificationStack2D
===========================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une ressource qui contient une pile de :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

This resource is used by the Skeleton and holds a stack of :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s.

This controls the order of the modifications and how they are applied. Modification order is especially important for full-body IK setups, as you need to execute the modifications in the correct order to get the desired results. For example, you want to execute a modification on the spine *before* the arms on a humanoid skeleton.

This resource also controls how strongly all of the modifications are applied to the :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`enabled<class_SkeletonModificationStack2D_property_enabled>`                       | ``false`` |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>` | ``0``     |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`strength<class_SkeletonModificationStack2D_property_strength>`                     | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`add_modification<class_SkeletonModificationStack2D_method_add_modification>`\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ )                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`delete_modification<class_SkeletonModificationStack2D_method_delete_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ )                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`enable_all_modifications<class_SkeletonModificationStack2D_method_enable_all_modifications>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`execute<class_SkeletonModificationStack2D_method_execute>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`get_is_setup<class_SkeletonModificationStack2D_method_get_is_setup>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModification2D<class_SkeletonModification2D>` | :ref:`get_modification<class_SkeletonModificationStack2D_method_get_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton2D<class_Skeleton2D>`                         | :ref:`get_skeleton<class_SkeletonModificationStack2D_method_get_skeleton>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_modification<class_SkeletonModificationStack2D_method_set_modification>`\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`setup<class_SkeletonModificationStack2D_method_setup>`\ (\ )                                                                                                                                    |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModificationStack2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_SkeletonModificationStack2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

If ``true``, the modification's in the stack will be called. This is handled automatically through the :ref:`Skeleton2D<class_Skeleton2D>` node.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_modification_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **modification_count** = ``0`` :ref:`🔗<class_SkeletonModificationStack2D_property_modification_count>`

.. rst-class:: classref-property-setget

- |void| **set_modification_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_modification_count**\ (\ )

Le nombre de modifications dans la pile.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_SkeletonModificationStack2D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

The interpolation strength of the modifications in stack. A value of ``0`` will make it where the modifications are not applied, a strength of ``0.5`` will be half applied, and a strength of ``1`` will allow the modifications to be fully applied and override the :ref:`Skeleton2D<class_Skeleton2D>` :ref:`Bone2D<class_Bone2D>` poses.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModificationStack2D_method_add_modification:

.. rst-class:: classref-method

|void| **add_modification**\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_add_modification>`

Ajoute à la pile le :ref:`SkeletonModification2D<class_SkeletonModification2D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_delete_modification:

.. rst-class:: classref-method

|void| **delete_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_delete_modification>`

Deletes the :ref:`SkeletonModification2D<class_SkeletonModification2D>` at the index position ``mod_idx``, if it exists.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_enable_all_modifications:

.. rst-class:: classref-method

|void| **enable_all_modifications**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_enable_all_modifications>`

Active toutes les :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s dans la pile.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_execute:

.. rst-class:: classref-method

|void| **execute**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_execute>`

Executes all of the :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ s in the stack that use the same execution mode as the passed-in ``execution_mode``, starting from index ``0`` to :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>`.

\ **Note:** The order of the modifications can matter depending on the modifications. For example, modifications on a spine should operate before modifications on the arms in order to get proper results.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_is_setup>`

Renvoie un booléen indiquant si la pile de modifications est installée et peut être exécutée.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_modification:

.. rst-class:: classref-method

:ref:`SkeletonModification2D<class_SkeletonModification2D>` **get_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_modification>`

Returns the :ref:`SkeletonModification2D<class_SkeletonModification2D>` at the passed-in index, ``mod_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton2D<class_Skeleton2D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_skeleton>`

Returns the :ref:`Skeleton2D<class_Skeleton2D>` node that the SkeletonModificationStack2D is bound to.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_set_modification:

.. rst-class:: classref-method

|void| **set_modification**\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_set_modification>`

Sets the modification at ``mod_idx`` to the passed-in modification, ``modification``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_setup>`

Sets up the modification stack so it can execute. This function should be called by :ref:`Skeleton2D<class_Skeleton2D>` and shouldn't be manually called unless you know what you are doing.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
