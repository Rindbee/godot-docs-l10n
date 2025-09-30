:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMapEditorPlugin:

GridMapEditorPlugin
===================

**Hérite de :** :ref:`EditorPlugin<class_EditorPlugin>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Éditeur pour les nœuds :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-introduction-group

Description
-----------

GridMapEditorPlugin provides access to the :ref:`GridMap<class_GridMap>` editor functionality.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_selection<class_GridMapEditorPlugin_method_clear_selection>`\ (\ )                                                                             |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GridMap<class_GridMap>` | :ref:`get_current_grid_map<class_GridMapEditorPlugin_method_get_current_grid_map>`\ (\ ) |const|                                                           |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_selected_cells<class_GridMapEditorPlugin_method_get_selected_cells>`\ (\ ) |const|                                                               |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_selected_palette_item<class_GridMapEditorPlugin_method_get_selected_palette_item>`\ (\ ) |const|                                                 |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`get_selection<class_GridMapEditorPlugin_method_get_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_selection<class_GridMapEditorPlugin_method_has_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selected_palette_item<class_GridMapEditorPlugin_method_set_selected_palette_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                   |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selection<class_GridMapEditorPlugin_method_set_selection>`\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GridMapEditorPlugin_method_clear_selection:

.. rst-class:: classref-method

|void| **clear_selection**\ (\ ) :ref:`🔗<class_GridMapEditorPlugin_method_clear_selection>`

Désélectionne toutes les cellules actuellement sélectionnées.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_current_grid_map:

.. rst-class:: classref-method

:ref:`GridMap<class_GridMap>` **get_current_grid_map**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_current_grid_map>`

Renvoie le nœud :ref:`GridMap<class_GridMap>` actuellement édité par l'éditeur de gridmap.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_selected_cells**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_cells>`

Renvoie un tableau de :ref:`Vector3i<class_Vector3i>`\ s avec les coordonnées des cellules sélectionnées.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_palette_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_palette_item**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_palette_item>`

Renvoie l'index de l'élément :ref:`MeshLibrary<class_MeshLibrary>` séléectionné dans la palette de l'éditeur de gridmap ou ``-1`` si aucun élément n'est sélectionné.

\ **Note :** Les indices peuvent ne pas être dans le même ordre qu'ils apparaissent dans l'interface de l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selection>`

Renvoie les limites des coordonnées des cellules de la sélection courante. Utilisez :ref:`has_selection()<class_GridMapEditorPlugin_method_has_selection>` pour vérifier s'il y a une sélection active.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_has_selection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_has_selection>`

Renvoie ``true`` s'il y a des cellules sélectionnées.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selected_palette_item:

.. rst-class:: classref-method

|void| **set_selected_palette_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_set_selected_palette_item>`

Sélectionne l'élément :ref:`MeshLibrary<class_MeshLibrary>` avec l'index donné dans la palette de l'éditeur de gridmap. Si un indice négatif est donné, aucun élément ne sera sélectionné. Si une valeur supérieure au dernier indice est donnée, le dernier élément sera sélectionné.

\ **Note :** Les indices peuvent ne pas être dans le même ordre qu'ils apparaissent dans l'interface de l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selection:

.. rst-class:: classref-method

|void| **set_selection**\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_GridMapEditorPlugin_method_set_selection>`

Selects the cells inside the given bounds from ``begin`` to ``end``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
