:github_url: hide

.. _class_RayCast3D:

RayCast3D
=========

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un rayon dans l'espace 3D, utilisé pour trouver le premier objet de collision qu'il intersecte.

.. rst-class:: classref-introduction-group

Description
-----------

Un raycast représente un rayon de son origine à sa position cible :ref:`target_position<class_RayCast3D_property_target_position>` qui trouve l'objet le plus proche le long de son chemin, s'il en intersecte.

\ **RayCast3D** peut ignorer certains objets en les ajoutant à une liste d'exception, en faisant que son rapport de détection ignore des :ref:`Area3D<class_Area3D>`\ s (:ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`) ou des :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s (:ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`), ou en configurant des couches de physique.

\ **RayCast3D** calcule l'intersection à chaque trame physique, et il contient le résultat jusqu'à la prochaine trame physique. Pour un raycast immédiat, ou si vous voulez configurer un **RayCast3D** plusieurs fois dans la même trame physique, utilisez :ref:`force_raycast_update()<class_RayCast3D_method_force_raycast_update>`.

Pour balayer une région de l'espace 3D, vous pouvez approximer la région avec plusieurs **RayCast3D** ou utiliser :ref:`ShapeCast3D<class_ShapeCast3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Lancer de rayons <../tutorials/physics/ray-casting>`

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_RayCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`debug_shape_thickness<class_RayCast3D_property_debug_shape_thickness>`       | ``2``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_back_faces<class_RayCast3D_property_hit_back_faces>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>`                   | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_RayCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast3D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast3D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast3D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast3D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_face_index<class_RayCast3D_method_get_collision_face_index>`\ (\ ) |const|                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_RayCast3D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_RayCast3D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RayCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`Area3D<class_Area3D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Le masque de collision du rayon. Seuls les objets présents dans au moins une couche de collision activée dans le masque seront détectés. Voir `Couches et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RayCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

La couleur personnalisée à utiliser pour dessiner la forme dans l'éditeur durant l'exécution si **Formes de collision visibles** est activé dans le menu **Débogage**. Cette couleur sera mise en évidence durant l'exécution si le **RayCast3D** entre en collision avec quelque chose.

Si défini à ``Color(0.0, 0.0, 0.0, 0.0)`` (par défaut), la couleur définie dans :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>` est utilisée.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug_shape_thickness** = ``2`` :ref:`🔗<class_RayCast3D_property_debug_shape_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_debug_shape_thickness**\ (\ )

Si défini à ``1``, une ligne est utilisée comme forme de débogage. Sinon, une pyramide tronquée est dessinée pour représenter le **RayCast3D**. Nécessite que **Formes de collision visibles** soit activé dans le menu **Débogage** pour que la forme de débogage soit visible durant l'exécution.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si ``true``, les collisions seront signalées.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Si ``true``, ce raycast ne signale pas les collisions avec son nœud parent. Cette propriété n'a un effet que si le nœud parent est un :ref:`CollisionObject3D<class_CollisionObject3D>`. Voir aussi :ref:`Node.get_parent()<class_Node_method_get_parent>` et :ref:`add_exception()<class_RayCast3D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_back_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_back_faces** = ``true`` :ref:`🔗<class_RayCast3D_property_hit_back_faces>`

.. rst-class:: classref-property-setget

- |void| **set_hit_back_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_back_faces_enabled**\ (\ )

Si ``true``, le rayon entrera en collision avec les faces arrières des formes de polygones concaves avec les faces arrières activées ou des formes de heightmap.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast3D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Si ``true``, le rayon détectera un toucher lorsqu'il commence dans une forme. Dans ce cas, la normale de la collision sera ``Vector3(0, 0, 0)``. N'affecte pas les formes sans volume comme les polygones concaves ou les heightmaps.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_RayCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Le point de destination du rayon, relatif à la position :ref:`Node3D.position<class_Node3D_property_position>` de ce raycast.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RayCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception>`

Ajoute une exception de collision pour que le rayon ne signale pas les collisions avec le nœud ``node`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception_rid>`

Ajoute une exception de collision pour que le rayon ne signale pas les collisions avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast3D_method_clear_exceptions>`

Retire tous les exceptions de collision pour ce rayon.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast3D_method_force_raycast_update>`

Met à jour les informations de collision pour le rayon immédiatement, au lieu d'attendre le prochain appel à ``_physics_process``. Utilisez cette méthode, par exemple, si le rayon ou son parent a changé d'état.

\ **Note :** :ref:`enabled<class_RayCast3D_property_enabled>` ne doit pas forcément valoir ``true`` pour que cela fonctionne.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider>`

Renvoie le premier objet que le rayon intersecte, ou ``null`` si aucun objet n'intersecte le rayon (c'est-à-dire :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` renvoie ``false``).

\ **Note :** Cet objet n'est pas garanti d'être un :ref:`CollisionObject3D<class_CollisionObject3D>`. Par exemple, si le rayon intersecte un :ref:`CSGShape3D<class_CSGShape3D>` ou un :ref:`GridMap<class_GridMap>`, la méthode renverra une instance de :ref:`CSGShape3D<class_CSGShape3D>` ou de :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_rid>`

Renvoie le :ref:`RID<class_RID>` du premier objet que le rayon intersecte, ou un :ref:`RID<class_RID>` vide si aucun objet n'intersecte le rayon (c'est-à-dire :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` renvoie ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_shape>`

Renvoie l'identifiant de forme du premier objet que le rayon intersecte, ou ``0`` si aucun objet n'intersecte le rayon (c.-à-d. :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` retourne ``false``).

Pour obtenir le nœud de la forme intersectée, pour une cible :ref:`CollisionObject3D<class_CollisionObject3D>`, utilisez :


.. tabs::

 .. code-tab:: gdscript

    var cible = get_collider() # Un CollisionObject3D.
    var id_forme = get_collider_shape() # L'index de la forme dans le collider.
    var id_proprietaire = cible.shape_find_owner(id_forme) # L'identifiant du propriétaire dans le collider.
    var forme = cible.shape_owner_get_owner(id_proprietaire)

 .. code-tab:: csharp

    var cible = (CollisionObject3D)GetCollider(); // Un CollisionObject3D.
    var idForme = GetColliderShape(); // L'index de la forme dans le collider.
    var idProprietaire = cible.ShapeFindOwner(idForme ); // L'identifiant du propriétaire dans le collider.
    var forme = cible.ShapeOwnerGetOwner(idProprietaire);



.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_face_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_face_index**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_face_index>`

Renvoie l'index de face de l'objet en collision au point de collision, ou ``-1`` si la forme intersectant le rayon n'est pas une :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_RayCast3D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_normal>`

Renvoie la normale à forme de l'objet intersectant au point de collision, ou ``Vector3(0, 0, 0)`` si le rayon commence à l'intérieur de la forme et que :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` vaut ``true``.

\ **Note :** Vérifiez que :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` renvoie ``true`` avant d'appeler cette méthode pour vous assurer que la normale renvoyée est valide et à jour.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_point>`

Renvoie le point de collision auquel le rayon intersecte l'objet le plus proche, dans le système de coordonnées global. Si :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` vaut ``true`` et que le rayon commence à l'intérieur d'une forme de collision, cette fonction renverra le point d'origine du rayon.

\ **Note :** Vérifiez que :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` renvoie ``true`` avant d'appeler cette méthode pour vous assurer que le point renvoyé est valide et à jour.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_is_colliding>`

Renvoie quand un objet intersecte avec le vecteur du rayon (en prenant en compte la longueur du vecteur).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception>`

Retire une exception de collision pour que le rayon prenne en compte les collisions avec le nœud ``node`` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception_rid>`

Retire une exception de collision pour que le rayon prenne en compte les collision avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast3D_method_set_collision_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_mask<class_RayCast3D_property_collision_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
