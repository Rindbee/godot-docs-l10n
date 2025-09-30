:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Area2D.xml.

.. _class_Area2D:

Area2D
======

**Hérite de :** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une région d'espace 2D qui détecte d'autres :ref:`CollisionObject2D<class_CollisionObject2D>`\ s qui en entrent ou en sortent.

.. rst-class:: classref-introduction-group

Description
-----------

**Area2D** est une région d'espace 2D définie par un ou plusieurs nœuds enfant :ref:`CollisionShape2D<class_CollisionShape2D>` or :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`. Elle détecte quand d'autres :ref:`CollisionObject2D<class_CollisionObject2D>`\ s en entrent ou en sortent, et elle garde également la trace de quels objets de collision n'en sont pas encore sortis (c.-à-d. lesquels la chevauche).

Ce nœud peut également modifier ou redéfinir localement les paramètres physiques (gravité, amortissement) et dévier l'audio vers des bus audio personnalisés.

\ **Note:** Les zones et corps créés avec :ref:`PhysicsServer2D<class_PhysicsServer2D>` peuvent ne pas interagir comme prévu avec les **Area2D**\ s, et peuvent ne pas émettre des signaux ou suivre des objets correctement.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les Area2D <../tutorials/physics/using_area_2d>`

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

- `Démo 2D « Pong » <https://godotengine.org/asset-library/asset/2728>`__

- `Démo de jeu de plateforme en 2D <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area2D_property_angular_damp>`                               | ``1.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area2D_property_angular_damp_space_override>` | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area2D_property_audio_bus_name>`                           | ``&"Master"``     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area2D_property_audio_bus_override>`                   | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area2D_property_gravity>`                                         | ``980.0``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_direction<class_Area2D_property_gravity_direction>`                     | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area2D_property_gravity_point>`                             | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`               | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area2D_property_gravity_point_unit_distance>` | ``0.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`           | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area2D_property_linear_damp>`                                 | ``0.1``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area2D_property_linear_damp_space_override>`   | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area2D_property_monitorable>`                                 | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area2D_property_monitoring>`                                   | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area2D_property_priority>`                                       | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] | :ref:`get_overlapping_areas<class_Area2D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_overlapping_bodies<class_Area2D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area2D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area2D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area2D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area2D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

Émis quand la zone ``area`` reçue entre dans cette zone. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

Émis quand la zone ``area`` reçue quitte cette zone. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

Émis lorsqu'une :ref:`Shape2D<class_Shape2D>` de la zone ``area`` reçue entre dans une forme de cette zone. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

\ ``local_shape_index`` et ``area_shape_index`` contiennent les indices des formes en interaction de cette zone et de l'autre, respectivement. ``area_rid`` contient le :ref:`RID<class_RID>` de l'autre zone. Ces valeurs peuvent être utilisées avec le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Exemple :** Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` depuis l'index de forme :


.. tabs::

 .. code-tab:: gdscript

    var autre_proprietaire_forme = zone.shape_find_owner(area_shape_index)
    var autre_noeud_forme = zone.shape_owner_get_owner(autre_proprietaire_forme)

    var proprietaire_forme_local = shape_find_owner(local_shape_index)
    var noeud_forme_local = shape_owner_get_owner(proprietaire_forme_local)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_exited>`

Émis lorsqu'une :ref:`Shape2D<class_Shape2D>` de la zone ``area`` reçue sort d'une forme de cette zone. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

Voir aussi :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

Émis lorsque le corps ``body`` reçu entre dans cette zone. ``body`` peut être un :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou une :ref:`TileMap<class_TileMap>`. Les :ref:`TileMap<class_TileMap>`\ s sont détectées si leur :ref:`TileSet<class_TileSet>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

Émis lorsque le corps ``body`` reçu quitte cette zone. ``body`` peut être un :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou une :ref:`TileMap<class_TileMap>`. Les :ref:`TileMap<class_TileMap>`\ s sont détectées si leur :ref:`TileSet<class_TileSet>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

Émis lorsqu'une :ref:`Shape2D<class_Shape2D>` du corps ``body`` reçu entre dans une forme de cette zone. ``body`` peut être un :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou une :ref:`TileMap<class_TileMap>`. Les :ref:`TileMap<class_TileMap>`\ s sont détectées si leur :ref:`TileSet<class_TileSet>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

\ ``local_shape_index`` et ``body_shape_index`` contiennent les indices des formes en interaction de cette zone et du corps en interaction, respectivement. ``body_rid`` contient le :ref:`RID<class_RID>` du corps. Ces valeurs peuvent être utilisées avec le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Exemple :** Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` depuis l'index de forme :


.. tabs::

 .. code-tab:: gdscript

    var autre_proprietaire_forme = zone.shape_find_owner(body_shape_index)
    var autre_noeud_forme = zone.shape_owner_get_owner(autre_proprietaire_forme)

    var proprietaire_forme_local = shape_find_owner(local_shape_index)
    var noeud_forme_local = shape_owner_get_owner(proprietaire_forme_local)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_exited>`

Émis lorsqu'une :ref:`Shape2D<class_Shape2D>` du corps ``body`` reçu sort d'une forme de cette zone. ``body`` peut être un :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou une :ref:`TileMap<class_TileMap>`. Les :ref:`TileMap<class_TileMap>`\ s sont détectées si leur :ref:`TileSet<class_TileSet>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area2D_property_monitoring>` soit défini à ``true``.

Voir aussi :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Cette aire n'influe pas sur la gravité/amortissement.

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Cette zone ajoute les valeurs de gravité/amortissement à tout ce qui a été calculé jusqu'à présent (dans l'ordre de :ref:`priority<class_Area2D_property_priority>`).

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Cette zone ajoute sa valeur de gravité/amortissement à tout ce qui a été calculé pour le moment (dans l'ordre de :ref:`priority<class_Area2D_property_priority>`), en ignorant les zones de plus basse priorité.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Cette zone remplace n'importe quelle gravité/amortissement, même les valeurs par défaut, en ignorant les zones de plus basse priorité.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Cette zone remplace n'importe quelle gravité/amortissement calculé pour le moment (dans l'ordre de :ref:`priority<class_Area2D_property_priority>`), mais continue de calculer le reste des zones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La vitesse à laquelle les objets arrêtent de tourner dans cette zone. Représente la vitesse angulaire perdue par seconde.

Voir :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs d'amortissement angulaire dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Le nom du bus audio de l'aire.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Si ``true``, le bus audio de la zone remplace le bus audio par défaut.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

L'intensité de gravité de la zone (en pixels par seconde au carré). Cette valeur multiplie la direction de la gravité. Ceci est utile pour modifier la force de la gravité sans modifier sa direction.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

Le vecteur de gravité de la zone (non normalisé).

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Si ``true``, la gravité est calculée à partir d'un point (défini via :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`). Voir aussi :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

Si la gravité est un point (voir :ref:`gravity_point<class_Area2D_property_gravity_point>`), ce sera le point d'attraction.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distance à laquelle la force de la gravité est égale à :ref:`gravity<class_Area2D_property_gravity>`. Par exemple, sur une planète de 100 mètres de rayon avec une gravité de surface de 4.0 px/s², définissez la :ref:`gravity<class_Area2D_property_gravity>` à 4.0 et la distance unité à 100.0. La gravité aura une décroissance selon la loi carrée inverse, donc dans l'exemple, à 200 pixels du centre la gravité sera de 1.0 px/s² (deux fois la distance, 1/4 de la gravité), à 50 pixels elle sera de 16.0 px/s² (la moitié de la distance, 4x la gravité), et ainsi de suite.

L’exemple ci-dessus est vrai seulement lorsque la distance unité est un nombre positif. Lorsque elle est fixée à 0.0, la gravité sera constante indépendamment de la distance.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs de gravité dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La vitesse à laquelle les objets arrêtent de se déplacer dans cette zone. Représente la vitesse linéaire perdue par seconde.

Voir :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs d'amortissement linéaire dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Si ``true``, les autres aires surveillantes peuvent détecter cette aire.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Si ``true``, l'aire détecte les corps qui y entrent ou qui en sortent.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorité de la zone. Les zones de plus haute priorité seront traitées en premier. La physique du :ref:`World2D<class_World2D>` est toujours traitée en dernier, après toutes les zones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

Renvoie une liste des **Area2D** qui s'intersectent. Le :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` de l'aire intersectant doit faire partie du :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de cette aire pour être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps) cette liste est modifiée une fois pendant l'étape physique, pas immédiatement après le déplacement des objets. Considérez plutôt utiliser des signaux.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

Renvoie la liste des :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s et :ref:`TileMap<class_TileMap>`\ s en intersection. La couche :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` du corps chevauchant doit être dans le masque :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de cette zone pour être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps) cette liste est modifiée une fois pendant l'étape physique, pas immédiatement après le déplacement des objets. Considérez plutôt utiliser des signaux.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

Renvoie ``true`` si la zone chevauche n'importe quelle **Area2D**, sinon renvoie ``false``. La couche :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` de la zone chevauchante doit faire partie du :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de cette zone afin d'être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

Renvoie ``true`` si la zone intersecte au moins un :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou une :ref:`TileMap<class_TileMap>`, sinon renvoie ``false``. La couche :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` du corps chevauchant doit faire partie du masque de collision :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de cette zone pour être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

Renvoie ``true`` si l'**Area2D** donnée intersecte ou chevauche cette **Area2D**, ``false`` sinon.

\ **Note :** Le résultat de ce test n'est pas immédiat après le déplacement des objets. Pour les performances, la liste des chevauchements est mise à jour une fois par trame et avant l'étape physique. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

Renvoie ``true`` si le corps physique donné intersecte ou chevauche cette **Area2D**, ``false`` sinon.

\ **Note :** Le résultat de ce test n'est pas immédiat après le déplacement des objets. Pour les performances, la liste des chevauchements est mise à jour une fois par trame et avant l'étape physique. Envisagez d'utiliser des signaux à la place.

L'argument ``body`` peut être une instance de :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou de :ref:`TileMap<class_TileMap>`. Bien que les TileMaps ne sont pas des corps physiques elles-mêmes, elles enregistrent leurs tuiles avec des formes de collision comme un corps physique virtuel.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
