:github_url: hide

.. _class_NavigationLink2D:

NavigationLink2D
================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A link between two positions on :ref:`NavigationRegion2D<class_NavigationRegion2D>`\ s that agents can be routed through.

.. rst-class:: classref-introduction-group

Description
-----------

A link between two positions on :ref:`NavigationRegion2D<class_NavigationRegion2D>`\ s that agents can be routed through. These positions can be on the same :ref:`NavigationRegion2D<class_NavigationRegion2D>` or on two different ones. Links are useful to express navigation methods other than traveling along the surface of the navigation polygon, such as ziplines, teleporters, or gaps that can be jumped across.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation de NavigationLinks <../tutorials/navigation/navigation_using_navigationlinks>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`bidirectional<class_NavigationLink2D_property_bidirectional>`         | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_NavigationLink2D_property_enabled>`                     | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end_position<class_NavigationLink2D_property_end_position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` | ``1``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`start_position<class_NavigationLink2D_property_start_position>`       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>`             | ``1.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_end_position<class_NavigationLink2D_method_get_global_end_position>`\ (\ ) |const|                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_start_position<class_NavigationLink2D_method_get_global_start_position>`\ (\ ) |const|                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_navigation_layer_value<class_NavigationLink2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_navigation_map<class_NavigationLink2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_rid<class_NavigationLink2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_end_position<class_NavigationLink2D_method_set_global_end_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_start_position<class_NavigationLink2D_method_set_global_start_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_layer_value<class_NavigationLink2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_map<class_NavigationLink2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_NavigationLink2D_property_bidirectional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bidirectional** = ``true`` :ref:`🔗<class_NavigationLink2D_property_bidirectional>`

.. rst-class:: classref-property-setget

- |void| **set_bidirectional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_bidirectional**\ (\ )

Whether this link can be traveled in both directions or only from :ref:`start_position<class_NavigationLink2D_property_start_position>` to :ref:`end_position<class_NavigationLink2D_property_end_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationLink2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Whether this link is currently active. If ``false``, :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` will ignore this link.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_end_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_end_position>`

.. rst-class:: classref-property-setget

- |void| **set_end_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_end_position**\ (\ )

Ending position of the link.

This position will search out the nearest polygon in the navigation mesh to attach to.

The distance the link will search is controlled by :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationLink2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this link from another regions navigation mesh the :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>` value is added to the path distance for determining the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationLink2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

A bitfield determining all navigation layers the link belongs to. These navigation layers will be checked when requesting a path with :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **start_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_start_position**\ (\ )

Starting position of the link.

This position will search out the nearest polygon in the navigation mesh to attach to.

The distance the link will search is controlled by :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationLink2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

When pathfinding moves along the link the traveled distance is multiplied with :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>` for determining the shortest path.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NavigationLink2D_method_get_global_end_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_end_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_end_position>`

Returns the :ref:`end_position<class_NavigationLink2D_property_end_position>` that is relative to the link as a global position.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_global_start_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_start_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_start_position>`

Returns the :ref:`start_position<class_NavigationLink2D_property_start_position>` that is relative to the link as a global position.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_layer_value>`

Renvoie si la couche spécifiée du masque de bits :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` est activée, selon un numéro de couche ``layer_number`` donné entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_map>`

Returns the current navigation map :ref:`RID<class_RID>` used by this link.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_rid>`

Returns the :ref:`RID<class_RID>` of this link on the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_end_position:

.. rst-class:: classref-method

|void| **set_global_end_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_end_position>`

Sets the :ref:`end_position<class_NavigationLink2D_property_end_position>` that is relative to the link from a global ``position``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_start_position:

.. rst-class:: classref-method

|void| **set_global_start_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_start_position>`

Sets the :ref:`start_position<class_NavigationLink2D_property_start_position>` that is relative to the link from a global ``position``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_layer_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le masque de bits :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>`, selon un numéro de couche ``layer_number`` donné entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_map>`

Sets the :ref:`RID<class_RID>` of the navigation map this link should use. By default the link will automatically join the :ref:`World2D<class_World2D>` default navigation map so this function is only required to override the default map.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
