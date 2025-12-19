:github_url: hide

.. _class_VisibleOnScreenEnabler3D:

VisibleOnScreenEnabler3D
========================

**Hérite de :** :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une région en forme de boîte de l'espace 3D qui, lorsqu'elle est visible à l'écran, active un nœud cible.

.. rst-class:: classref-introduction-group

Description
-----------

**VisibleOnScreenEnabler3D** contient une région en forme de boîte de l'espace 3D et un nœud cible. Le nœud cible sera automatiquement activé (via sa propriété :ref:`Node.process_mode<class_Node_property_process_mode>`) lorsque toute partie de cette région devient visible à l'écran, et automatiquement désactivé sinon. Cela peut par exemple être utilisé pour activer les ennemis seulement lorsque le joueur les approche.

Voir :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>` si vous voulez seulement être informé lorsque la région est visible à l'écran.

\ **Note :** **VisibleOnScreenEnabler3D** utilise une heuristique approximative qui ne prend pas en compte les murs et les autres occlusions, à moins que l'occlusion culling ne soit utilisé. Aussi, elle ne fonctionnera pas à moins que :ref:`Node3D.visible<class_Node3D_property_visible>` ne soit défini à ``true``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler3D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler3D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisibleOnScreenEnabler3D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler3D_EnableMode>`

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

Correspond à :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`.

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

Correspond à :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

Correspond à :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisibleOnScreenEnabler3D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **get_enable_mode**\ (\ )

Détermine comment le nœud cible est activé. Correspond à :ref:`ProcessMode<enum_Node_ProcessMode>`. Lorsque le nœud est désactivé, il utilise toujours :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler3D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

Le chemin vers le nœud cible, relatif au **VisibleOnScreenEnabler3D**. Le nœud cible est mis en cache, il n'est assigné que lors du réglage de cette propriété (si le **VisibleOnScreenEnabler3D** est à l'intérieur de l'arborescence de la scène) et à chaque fois que le **VisibleOnScreenEnabler3D** entre dans l'arborescence de la scène. Si le chemin est vide, aucun nœud ne sera affecté. Si le chemin est invalide, une erreur est également générée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
