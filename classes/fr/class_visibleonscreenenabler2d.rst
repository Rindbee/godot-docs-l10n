:github_url: hide

.. _class_VisibleOnScreenEnabler2D:

VisibleOnScreenEnabler2D
========================

**Hérite de :** :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A rectangular region of 2D space that, when visible on screen, enables a target node.

.. rst-class:: classref-introduction-group

Description
-----------

**VisibleOnScreenEnabler2D** contains a rectangular region of 2D space and a target node. The target node will be automatically enabled (via its :ref:`Node.process_mode<class_Node_property_process_mode>` property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them.

See :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>` if you only want to be notified when the region is visible on screen.

\ **Note:** **VisibleOnScreenEnabler2D** uses the render culling code to determine whether it's visible on screen, so it won't function unless :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` is set to ``true``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler2D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler2D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisibleOnScreenEnabler2D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler2D_EnableMode>`

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

Correspond à :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`.

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

Correspond à :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

Correspond à :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisibleOnScreenEnabler2D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **get_enable_mode**\ (\ )

Determines how the target node is enabled. Corresponds to :ref:`ProcessMode<enum_Node_ProcessMode>`. When the node is disabled, it always uses :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler2D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

The path to the target node, relative to the **VisibleOnScreenEnabler2D**. The target node is cached; it's only assigned when setting this property (if the **VisibleOnScreenEnabler2D** is inside the scene tree) and every time the **VisibleOnScreenEnabler2D** enters the scene tree. If the path is empty, no node will be affected. If the path is invalid, an error is also generated.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
