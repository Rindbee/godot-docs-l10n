:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un rayon dans l'espace 2D, utilisé pour trouver le premier objet de collision qu'il croise.

.. rst-class:: classref-introduction-group

Description
-----------

Un raycast représente un rayon de son origine à sa position cible :ref:`target_position<class_RayCast2D_property_target_position>` qui trouve l'objet le plus proche le long de son chemin, s'il en intersecte.

\ **RayCast2D** peut ignorer certains objets en les ajoutant à une liste d'exception, en faisant que son rapport de détection ignore des :ref:`Area2D<class_Area2D>`\ s (:ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`) ou des :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s (:ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`), ou en configurant des couches de physique.

\ **RayCast2D** calcule l'intersection à chaque trame physique, et il contient le résultat jusqu'à la prochaine trame physique. Pour un raycast immédiat, ou si vous voulez configurer un **RayCast2D** plusieurs fois dans la même trame physique, utilisez :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`.

Pour balayer une région de l'espace 2D, vous pouvez approximer la région avec plusieurs **RayCast2D** ou utiliser :ref:`ShapeCast2D<class_ShapeCast2D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Lancer de rayons <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>`         | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_RayCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast2D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast2D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast2D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast2D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_RayCast2D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_RayCast2D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`Area2D<class_Area2D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Le masque de collision du rayon. Seuls les objets présents dans au moins une couche de collision activée dans le masque seront détectés. Voir `Couches et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si ``true``, les collisions seront signalées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Si ``true``, ce raycast ne signale pas les collisions avec son nœud parent. Cette propriété n'a un effet que si le nœud parent est un :ref:`CollisionObject2D<class_CollisionObject2D>`. Voir aussi :ref:`Node.get_parent()<class_Node_method_get_parent>` et :ref:`add_exception()<class_RayCast2D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Si ``true``, le rayon détectera un toucher lorsqu'il commence dans une forme. Dans ce cas, la normale de la collision sera ``Vector2(0, 0)``. N'affecte pas les formes de polygones concaves.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Le point de destination du rayon, relatif à la position :ref:`Node2D.position<class_Node2D_property_position>` de ce raycast.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

Ajoute une exception de collision pour que le rayon ne signale pas les collisions avec le nœud ``node`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

Ajoute une exception de collision pour que le rayon ne signale pas les collisions avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

Retire tous les exceptions de collision pour ce rayon.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

Met à jour les informations de collision pour le rayon immédiatement, au lieu d'attendre le prochain appel à ``_physics_process``. Utilisez cette méthode, par exemple, si le rayon ou son parent a changé d'état.

\ **Note :** :ref:`enabled<class_RayCast2D_property_enabled>` ne doit pas forcément valoir ``true`` pour que cela fonctionne.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

Renvoie le premier objet que le rayon intersecte, ou ``null`` si aucun objet n'intersecte le rayon (c'est-à-dire :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` renvoie ``false``).

\ **Note :** Cet objet n'est pas garanti d'être un :ref:`CollisionObject2D<class_CollisionObject2D>`. Par exemple, si le rayon intersecte un :ref:`TileMapLayer<class_TileMapLayer>`, la méthode renverra une instance de :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

Renvoie le :ref:`RID<class_RID>` du premier objet que le rayon intersecte, ou un :ref:`RID<class_RID>` vide si aucun objet n'intersecte le rayon (c'est-à-dire :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` renvoie ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

Renvoie l'identifiant de forme du premier objet que le rayon intersecte, ou ``0`` si aucun objet n'intersecte le rayon (c.-à-d. que :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` renvoie ``false``).

Pour obtenir le nœud de la forme intersectée, pour une cible :ref:`CollisionObject2D<class_CollisionObject2D>`, utilisez :


.. tabs::

 .. code-tab:: gdscript

    var cible = get_collider() # Un CollisionObject2D.
    var id_forme = get_collider_shape() # L'index de la forme dans le collider.
    var id_proprietaire = cible.shape_find_owner(id_forme) # L'identifiant du propriétaire dans le collider.
    var forme = cible.shape_owner_get_owner(id_proprietaire)

 .. code-tab:: csharp

    var cible = (CollisionObject2D)GetCollider(); // Un CollisionObject2D.
    var idForme = GetColliderShape(); // L'index de la forme dans le collider.
    var idProprietaire = cible.ShapeFindOwner(idForme ); // L'identifiant du propriétaire dans le collider.
    var forme = cible.ShapeOwnerGetOwner(idProprietaire);



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_RayCast2D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

Renvoie la normale à forme de l'objet intersectant au point de collision, ou ``Vector2(0, 0)`` si le rayon commence à l'intérieur de la forme et que :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` vaut ``true``.

\ **Note :** Vérifiez que :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` renvoie ``true`` avant d'appeler cette méthode pour vous assurer que la normale renvoyée est valide et à jour.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

Renvoie le point de collision auquel le rayon intersecte l'objet le plus proche, dans le système de coordonnées global. Si :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` vaut ``true`` et que le rayon commence à l'intérieur d'une forme de collision, cette fonction renverra le point d'origine du rayon.

\ **Note :** Vérifiez que :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` renvoie ``true`` avant d'appeler cette méthode pour vous assurer que le point renvoyé est valide et à jour.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

Renvoie quand un objet intersecte avec le vecteur du rayon (en prenant en compte la longueur du vecteur).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

Retire une exception de collision pour que le rayon prenne en compte les collisions avec le nœud ``node`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

Retire une exception de collision pour que le rayon prenne en compte les collision avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_mask<class_RayCast2D_property_collision_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
