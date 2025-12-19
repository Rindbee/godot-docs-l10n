:github_url: hide

.. _class_TileMapPattern:

TileMapPattern
==============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contient un motif à copier ou à coller dans des :ref:`TileMap<class_TileMap>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Cette ressource contient un ensemble de cellules pour aider les manipulations en masse de :ref:`TileMap<class_TileMap>`.

Un motif commence toujours aux coordonnées ``(0, 0)`` et ne peut pas avoir de cellules avec des coordonnées négatives.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapPattern_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapPattern_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                         |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapPattern_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_size<class_TileMapPattern_method_get_size>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapPattern_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_cell<class_TileMapPattern_method_has_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_empty<class_TileMapPattern_method_is_empty>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_cell<class_TileMapPattern_method_remove_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ )                                                                                                              |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapPattern_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_TileMapPattern_method_set_size>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TileMapPattern_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_alternative_tile>`

Renvoie l'identifiant alternatif de tuile de la cellule aux coordonnées ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_atlas_coords>`

Renvoie l'identifiant des coordonnées d'atlas de tuile de la cellule aux coordonnées ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_source_id>`

Returns the tile source ID of the cell at ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_size>`

Renvoie la taille, en cellules, du motif.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_used_cells>`

Renvoie la liste des coordonnées des cellules utilisées dans le motif.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_has_cell:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_has_cell>`

Renvoie si le motif a une tuile aux coordonnées données.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_is_empty>`

Renvoie si le motif est vide ou non.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_remove_cell:

.. rst-class:: classref-method

|void| **remove_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileMapPattern_method_remove_cell>`

Supprime la cellule aux coordonnées données.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileMapPattern_method_set_cell>`

Définit les identifiants de tuile pour la cellule aux coordonnées ``coords``. Voir :ref:`TileMap.set_cell()<class_TileMap_method_set_cell>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapPattern_method_set_size>`

Définit la taille du motif.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
