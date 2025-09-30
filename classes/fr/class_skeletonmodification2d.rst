:github_url: hide

.. _class_SkeletonModification2D:

SkeletonModification2D
======================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`, :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, :ref:`SkeletonModification2DJiggle<class_SkeletonModification2DJiggle>`, :ref:`SkeletonModification2DLookAt<class_SkeletonModification2DLookAt>`, :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>`, :ref:`SkeletonModification2DStackHolder<class_SkeletonModification2DStackHolder>`, :ref:`SkeletonModification2DTwoBoneIK<class_SkeletonModification2DTwoBoneIK>`

Base class for resources that operate on :ref:`Bone2D<class_Bone2D>`\ s in a :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

This resource provides an interface that can be expanded so code that operates on :ref:`Bone2D<class_Bone2D>` nodes in a :ref:`Skeleton2D<class_Skeleton2D>` can be mixed and matched together to create complex interactions.

This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_SkeletonModification2D_property_enabled>`               | ``true`` |
   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`execution_mode<class_SkeletonModification2D_property_execution_mode>` | ``0``    |
   +-------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_draw_editor_gizmo<class_SkeletonModification2D_private_method__draw_editor_gizmo>`\ (\ ) |virtual|                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_execute<class_SkeletonModification2D_private_method__execute>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                         |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_setup_modification<class_SkeletonModification2D_private_method__setup_modification>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual|          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`clamp_angle<class_SkeletonModification2D_method_clamp_angle>`\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_editor_draw_gizmo<class_SkeletonModification2D_method_get_editor_draw_gizmo>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_is_setup<class_SkeletonModification2D_method_get_is_setup>`\ (\ ) |const|                                                                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_SkeletonModification2D_method_get_modification_stack>`\ (\ )                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_editor_draw_gizmo<class_SkeletonModification2D_method_set_editor_draw_gizmo>`\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ )                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_is_setup<class_SkeletonModification2D_method_set_is_setup>`\ (\ is_setup\: :ref:`bool<class_bool>`\ )                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModification2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_SkeletonModification2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

If ``true``, the modification's :ref:`_execute()<class_SkeletonModification2D_private_method__execute>` function will be called by the :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_property_execution_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **execution_mode** = ``0`` :ref:`🔗<class_SkeletonModification2D_property_execution_mode>`

.. rst-class:: classref-property-setget

- |void| **set_execution_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_execution_mode**\ (\ )

The execution mode for the modification. This tells the modification stack when to execute the modification. Some modifications have settings that are only available in certain execution modes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModification2D_private_method__draw_editor_gizmo:

.. rst-class:: classref-method

|void| **_draw_editor_gizmo**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__draw_editor_gizmo>`

Used for drawing **editor-only** modification gizmos. This function will only be called in the Godot editor and can be overridden to draw custom gizmos.

\ **Note:** You will need to use the Skeleton2D from :ref:`SkeletonModificationStack2D.get_skeleton()<class_SkeletonModificationStack2D_method_get_skeleton>` and it's draw functions, as the **SkeletonModification2D** resource cannot draw on its own.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__execute:

.. rst-class:: classref-method

|void| **_execute**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__execute>`

Executes the given modification. This is where the modification performs whatever function it is designed to do.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__setup_modification:

.. rst-class:: classref-method

|void| **_setup_modification**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__setup_modification>`

Called when the modification is setup. This is where the modification performs initialization.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_clamp_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **clamp_angle**\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_clamp_angle>`

Prends un angle et le borne de sorte à ce qu'il soit à l'intérieur de la plage ``min`` et ``max``. ``invert`` bornera l'angle de manière inverse, le bornant en dehors des bornes données.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_editor_draw_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_editor_draw_gizmo**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_editor_draw_gizmo>`

Renvoie si cette modification appellera :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` dans l'éditeur Godot pour dessiner des manipulateurs spécifiques à la modification.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_is_setup>`

Renvoie si cette modification a été installée avec succès ou non.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) :ref:`🔗<class_SkeletonModification2D_method_get_modification_stack>`

Renvoie le :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` auquel cette modification est liée. Grâce à la pile de modification, vous pouvez accéder au Skeleton2D sur lequel cette modification opère.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_editor_draw_gizmo:

.. rst-class:: classref-method

|void| **set_editor_draw_gizmo**\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_editor_draw_gizmo>`

Définit si cette modification appellera :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` dans l'éditeur Godot pour dessiner des manipulateurs spécifiques à la modification.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_is_setup:

.. rst-class:: classref-method

|void| **set_is_setup**\ (\ is_setup\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_is_setup>`

Manually allows you to set the setup state of the modification. This function should only rarely be used, as the :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` the modification is bound to should handle setting the modification up.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
