:github_url: hide

.. _class_AnimationNodeBlendTree:

AnimationNodeBlendTree
======================

**Hérite de :** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un sous-arbre de nombreux types :ref:`AnimationNode<class_AnimationNode>`\ s utilisés pour des animations complexes. Utilisé par :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud d'animation peut contenir un sous-arbre d'autres nœuds de type animation, tels que :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`, :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`, :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`, :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>`, etc. C'est l'une des racines de nœud d'animation la plus couramment utilisée.

Un nœud :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` nommé ``output`` est créé par défaut.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_AnimationNodeBlendTree_property_graph_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_AnimationNodeBlendTree_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_node<class_AnimationNodeBlendTree_method_connect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ )       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_node<class_AnimationNodeBlendTree_method_disconnect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ )                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                        | :ref:`get_node<class_AnimationNodeBlendTree_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_node_list<class_AnimationNodeBlendTree_method_get_node_list>`\ (\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_AnimationNodeBlendTree_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node<class_AnimationNodeBlendTree_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_AnimationNodeBlendTree_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_node<class_AnimationNodeBlendTree_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_AnimationNodeBlendTree_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimationNodeBlendTree_signal_node_changed:

.. rst-class:: classref-signal

**node_changed**\ (\ node_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_signal_node_changed>`

Émis lorsque l'information du port d'entrée est modifiée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AnimationNodeBlendTree_constant_CONNECTION_OK:

.. rst-class:: classref-constant

**CONNECTION_OK** = ``0`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_OK>`

La connexion a réussi.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT** = ``1`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT>`

Le nœud d'entrée est ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT_INDEX** = ``2`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX>`

Le port d’entrée spécifié est hors de portée.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_OUTPUT** = ``3`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT>`

Le nœud de sortie est ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE:

.. rst-class:: classref-constant

**CONNECTION_ERROR_SAME_NODE** = ``4`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE>`

Les nœuds d’entrée et de sortie sont identiques.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS:

.. rst-class:: classref-constant

**CONNECTION_ERROR_CONNECTION_EXISTS** = ``5`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS>`

La connexion spécifiée existe déjà.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeBlendTree_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimationNodeBlendTree_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

Le décalage global de tous les sous-nœuds d'animation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationNodeBlendTree_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_add_node>`

Ajoute un :ref:`AnimationNode<class_AnimationNode>` à la ``position`` donnée. Le nom ``name`` est utilisé pour identifier plus tard le sous nœud d'animation créé.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_connect_node:

.. rst-class:: classref-method

|void| **connect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_connect_node>`

Connecte la sortie d'un :ref:`AnimationNode<class_AnimationNode>` à l'entrée d'un autre :ref:`AnimationNode<class_AnimationNode>`, au port d'entrée spécifié par ``input_index``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_disconnect_node:

.. rst-class:: classref-method

|void| **disconnect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_disconnect_node>`

Déconnecte le nœud d'animation connecté à l'entrée spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node>`

Renvoie le sous nœud d'animation avec le nom ``name`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_list>`

Renvoie une liste contenant les noms de tous les sous nœuds d'animation dans cet arbre de mélange.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_position>`

Renvoie la position du sous nœud d'animation avec le nom ``name`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_has_node>`

Renvoie ``true`` si un sous nœud d'animation avec le nom ``name`` spécifié existe.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_remove_node>`

Supprime un sous-nœud d'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_rename_node>`

Change le nom d'un sous nœud d'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_set_node_position>`

Modifie la position d'un sous nœud d'animation.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
