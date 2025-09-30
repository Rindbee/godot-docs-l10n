:github_url: hide

.. _class_EditorSelection:

EditorSelection
===============

**Hérite de :** :ref:`Object<class_Object>`

Gère la sélection du SceneTree depuis l'éditeur.

.. rst-class:: classref-introduction-group

Description
-----------

Cet objet gère la sélection dans le SceneTree dans l'éditeur.

\ **Note :** Cette classe ne devrait pas être instanciée directement. Accédez plutôt à l'instance unique en utilisant :ref:`EditorInterface.get_selection()<class_EditorInterface_method_get_selection>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`add_node<class_EditorSelection_method_add_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                 |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`clear<class_EditorSelection_method_clear>`\ (\ )                                                       |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_selected_nodes<class_EditorSelection_method_get_selected_nodes>`\ (\ )                             |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_top_selected_nodes<class_EditorSelection_method_get_top_selected_nodes>`\ (\ )                     |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_transformable_selected_nodes<class_EditorSelection_method_get_transformable_selected_nodes>`\ (\ ) |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`remove_node<class_EditorSelection_method_remove_node>`\ (\ node\: :ref:`Node<class_Node>`\ )           |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorSelection_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_EditorSelection_signal_selection_changed>`

Émis lorsque la sélection change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorSelection_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_add_node>`

Ajoute un nœud à la sélection.

\ **Note :** Le nouveau nœud sélectionné ne sera pas automatiquement modifié dans l'inspecteur. Si vous souhaitez modifier un nœud, utilisez :ref:`EditorInterface.edit_node()<class_EditorInterface_method_edit_node>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorSelection_method_clear>`

Effacer la sélection.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_selected_nodes>`

Returns the list of selected nodes.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_top_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_top_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_top_selected_nodes>`

Returns the list of top selected nodes only, excluding any children. This is useful for performing transform operations (moving them, rotating, etc.).

For example, if there is a node A with a child B and a sibling C, then selecting all three will cause this method to return only A and C. Changing the global transform of A will affect the global transform of B, so there is no need to change B separately.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_transformable_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_transformable_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_transformable_selected_nodes>`

**Obsolète :** Use :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>` instead.

Returns the list of top selected nodes only, excluding any children. This is useful for performing transform operations (moving them, rotating, etc.). See :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_remove_node>`

Supprime un nœud de la sélection.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
