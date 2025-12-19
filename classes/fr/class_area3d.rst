:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area3D:

Area3D
======

**Hérite de :** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une région de l’espace 3D qui détecte les autres :ref:`CollisionObject3D<class_CollisionObject3D>`\ s qui l'entrent ou en sortent.

.. rst-class:: classref-introduction-group

Description
-----------

**Area3D** est une région de l'espace 3D définie par un ou plusieurs nœuds :ref:`CollisionShape3D<class_CollisionShape3D>` ou :ref:`CollisionPolygon3D<class_CollisionPolygon3D>` enfants. Elle détecte quand d'autres :ref:`CollisionObject3D<class_CollisionObject3D>` l'entrent ou en sortent, et elle garde également la trace de quels objets en collision ne sont pas encore sortis (c.-à-d. lesquels la chevauchent).

Ce nœud peut également altérer ou redéfinir localement les paramètres physiques (gravité, amortissement) et rediriger l'audio vers des bus audio personnalisés.

\ **Note :** Les zones et les corps créés avec le :ref:`PhysicsServer3D<class_PhysicsServer3D>` peuvent ne pas interagir comme prévu avec les **Area3D**\ s, et peuvent ne pas émettre des signaux ou suivre des objets correctement.

\ **Attention :** Utiliser un :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` à l'intérieur d'un :ref:`CollisionShape3D<class_CollisionShape3D>` enfant de ce nœud (créé par exemple en utilisant l'option **Créer maillage de collision frère** dans le menu **Maillage** qui apparaît lors de la sélection d'un nœud :ref:`MeshInstance3D<class_MeshInstance3D>`) peut mener à des résultats inattendus, car la forme de collision est creuse. Si cela n'est pas souhaité, il doit être divisé en plusieurs :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`\ s ou formes primitives comme :ref:`BoxShape3D<class_BoxShape3D>`, ou dans certains cas il peut être remplacé par un :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les Area2D <../tutorials/physics/using_area_2d>`

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de GUI dans un Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area3D_property_angular_damp>`                               | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area3D_property_angular_damp_space_override>` | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area3D_property_audio_bus_name>`                           | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area3D_property_audio_bus_override>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area3D_property_gravity>`                                         | ``9.8``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_direction<class_Area3D_property_gravity_direction>`                     | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area3D_property_gravity_point>`                             | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`               | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area3D_property_gravity_point_unit_distance>` | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`           | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area3D_property_linear_damp>`                                 | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area3D_property_linear_damp_space_override>`   | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area3D_property_monitorable>`                                 | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area3D_property_monitoring>`                                   | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area3D_property_priority>`                                       | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_amount<class_Area3D_property_reverb_bus_amount>`                     | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`reverb_bus_enabled<class_Area3D_property_reverb_bus_enabled>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`reverb_bus_name<class_Area3D_property_reverb_bus_name>`                         | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_uniformity<class_Area3D_property_reverb_bus_uniformity>`             | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`         | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`               | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`wind_source_path<class_Area3D_property_wind_source_path>`                       | ``NodePath("")``      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] | :ref:`get_overlapping_areas<class_Area3D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] | :ref:`get_overlapping_bodies<class_Area3D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area3D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area3D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area3D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area3D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

Émis quand la zone ``area`` reçue entre dans cette zone. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

Émis quand la zone ``area`` reçue quitte cette zone. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

Émis lorsqu'une :ref:`Shape3D<class_Shape3D>` de la zone ``area`` reçue entre dans une forme de cette zone. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

\ ``local_shape_index`` et ``area_shape_index`` contiennent les indices des formes en interaction de cette zone et de l'autre, respectivement. ``area_rid`` contient le :ref:`RID<class_RID>` de l'autre zone. Ces valeurs peuvent être utilisées avec le :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Exemple :** Obtenez le nœud :ref:`CollisionShape3D<class_CollisionShape3D>` depuis l'index de forme :


.. tabs::

 .. code-tab:: gdscript

    var autre_proprietaire_forme = zone.shape_find_owner(area_shape_index)
    var autre_noeud_forme = zone.shape_owner_get_owner(autre_proprietaire_forme)

    var proprietaire_forme_local = shape_find_owner(local_shape_index)
    var noeud_forme_local = shape_owner_get_owner(proprietaire_forme_local)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_exited>`

Émis lorsqu'une :ref:`Shape3D<class_Shape3D>` de la zone ``area`` reçue sort d'une forme de cette zone. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

Voir aussi :ref:`area_shape_entered<class_Area3D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

Émis lorsque le corps ``body`` reçu entre dans cette zone. ``body`` peut être un :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou une :ref:`GridMap<class_GridMap>`. Les :ref:`GridMap<class_GridMap>`\ s sont détectées si leur :ref:`MeshLibrary<class_MeshLibrary>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

Émis lorsque le corps ``body`` reçu quitte cette zone. ``body`` peut être un :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou une :ref:`GridMap<class_GridMap>`. Les :ref:`GridMap<class_GridMap>`\ s sont détectées si leur :ref:`MeshLibrary<class_MeshLibrary>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

Émis lorsqu'une :ref:`Shape3D<class_Shape3D>` du corps ``body`` reçu entre dans une forme de cette zone. ``body`` peut être un :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou une :ref:`GridMap<class_GridMap>`. Les :ref:`GridMap<class_GridMap>`\ s sont détectées si leur :ref:`MeshLibrary<class_MeshLibrary>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

\ ``local_shape_index`` et ``body_shape_index`` contiennent les indices des formes en interaction de cette zone et du corps en interaction, respectivement. ``body_rid`` contient le :ref:`RID<class_RID>` du corps. Ces valeurs peuvent être utilisées avec le :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Exemple :** Obtenez le nœud :ref:`CollisionShape3D<class_CollisionShape3D>` depuis l'index de forme :


.. tabs::

 .. code-tab:: gdscript

    var autre_proprietaire_forme = zone.shape_find_owner(body_shape_index)
    var autre_noeud_forme = zone.shape_owner_get_owner(autre_proprietaire_forme)

    var proprietaire_forme_local = shape_find_owner(local_shape_index)
    var noeud_forme_local = shape_owner_get_owner(proprietaire_forme_local)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_exited>`

Émis lorsqu'une :ref:`Shape3D<class_Shape3D>` du corps ``body`` reçu sort d'une forme de cette zone. ``body`` peut être un :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou une :ref:`GridMap<class_GridMap>`. Les :ref:`GridMap<class_GridMap>`\ s sont détectées si leur :ref:`MeshLibrary<class_MeshLibrary>` a des formes de collision configurées. Nécessite que :ref:`monitoring<class_Area3D_property_monitoring>` soit défini à ``true``.

Voir aussi :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Cette aire n'influe pas sur la gravité/amortissement.

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Cette zone ajoute les valeurs de gravité/amortissement à tout ce qui a été calculé jusqu'à présent (dans l'ordre de :ref:`priority<class_Area3D_property_priority>`).

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Cette zone ajoute sa valeur de gravité/amortissement à tout ce qui a été calculé pour le moment (dans l'ordre de :ref:`priority<class_Area3D_property_priority>`), en ignorant les zones de plus basse priorité.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Cette zone remplace n'importe quelle gravité/amortissement, même les valeurs par défaut, en ignorant les zones de plus basse priorité.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Cette zone remplace n'importe quelle gravité/amortissement calculé pour le moment (dans l'ordre de :ref:`priority<class_Area3D_property_priority>`), mais continue de calculer le reste des zones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La vitesse à laquelle les objets s'arrêtent de tourner dans cette zone. Représente la vitesse angulaire perdue par seconde.

Voir :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs d'amortissement angulaire dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Le nom du bus audio de l'aire.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Si ``true``, le bus audio de la zone remplace le bus audio par défaut.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

L'intensité de la gravité de la zone (en mètres par seconde au carré). Cette valeur multiplie le vecteur de gravité. Ceci est utile pour modifier la force de gravité sans modifier sa direction.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

Le vecteur de gravité de la zone (non normalisé).

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Si ``true``, la gravité est calculée à partir d'un point (défini via :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`). Voir aussi :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

Si la gravité est un point (voir :ref:`gravity_point<class_Area3D_property_gravity_point>`), ce sera le point d'attraction.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distance à laquelle la force de la gravité est égale à :ref:`gravity<class_Area3D_property_gravity>`. Par exemple, sur une planète de 100 mètres de rayon avec une gravité de surface de 4.0 m/s², définissez la :ref:`gravity<class_Area3D_property_gravity>` à 4.0 et la distance unité à 100.0. La gravité aura une décroissance selon la loi carrée inverse, donc dans l'exemple, à 200 mètres du centre la gravité sera de 1.0 m/s² (deux fois la distance, 1/4 de la gravité), à 50 mètres elle sera de 16.0 m/s² (la moitié de la distance, 4x la gravité), et ainsi de suite.

L’exemple ci-dessus est vrai seulement lorsque la distance unité est un nombre positif. Lorsque elle est fixée à 0.0, la gravité sera constante indépendamment de la distance.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs de gravité dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La vitesse à laquelle les objets arrêtent de se déplacer dans cette zone. Représente la vitesse linéaire perdue par seconde.

Voir :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Mode de redéfinition pour les calculs d'amortissement linéaire dans cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Si ``true``, les autres aires surveillantes peuvent détecter cette aire.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Si ``true``, l'aire détecte les corps qui y entrent ou qui en sortent.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorité de la zone. Les zone de plus hautes priorités seront gérées en premier. La physique du :ref:`World3D<class_World3D>` est toujours traitée en dernier, après toutes les zones.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

La mesure dans laquelle la zone applique la verbalisation à l'audio associé. Les valeurs vont de ``0`` à ``1`` avec une précision de ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

Si ``true``, la zone applique de la réverbération à l'audio qui lui est associé.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

Le nom de bus de réverbération à utiliser pour l'audio associé à cette zone.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

Le degré de réverbération de cette zone est un effet uniforme. L'intervalle va de ``0`` à ``1`` avec une précision de ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

Le taux exponentiel auquel la force du vent diminue avec la distance à son origine.

\ **Note :** Cette force du vent ne s'applique qu'aux nœuds :ref:`SoftBody3D<class_SoftBody3D>`. Les autres corps physiques ne sont actuellement pas affectés par le vent.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

La magnitude de la force du vent spécifique à la zone.

\ **Note :** Cette force du vent ne s'applique qu'aux nœuds :ref:`SoftBody3D<class_SoftBody3D>`. Les autres corps de physique ne sont actuellement pas affectés par le vent.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

Le :ref:`Node3D<class_Node3D>` qui est utilisé pour préciser la direction et l'origine d'une force du vent spécifique à la zone. La direction est opposée à l'axe z de la transformation locale du :ref:`Node3D<class_Node3D>`, et son origine est l'origine de la transformation locale du :ref:`Node3D<class_Node3D>`.

\ **Note :** Cette force du vent ne s'applique qu'aux nœuds :ref:`SoftBody3D<class_SoftBody3D>`. Les autres corps physiques ne sont actuellement pas affectés par le vent.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

Renvoie une liste des **Area3D**\ s en intersection. Le :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` de la zone chevauchante doit faire partie du :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de la zone afin d'être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

Renvoie une liste des :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s et :ref:`GridMap<class_GridMap>`\ s en intersection. Le :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` du corps chevauchant doit faire partie du :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de la zone afin d'être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

Renvoie ``true`` si la zone chevauche n'importe quelle **Area3D**, sinon renvoie ``false``. Le :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` de la zone chevauchante doit faire parti du :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de cette zone afin d'être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

Renvoie ``true`` si la zone chevauche n'importe quel :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou :ref:`GridMap<class_GridMap>`, sinon renvoie ``false``. Le :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` du corps chevauchant doit faire parti du :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de cette zone afin d'être détecté.

Pour des raisons de performance (les collisions sont toutes traitées en même temps), cette liste est modifiée une fois pendant l'étape physique, mais pas immédiatement après le déplacement des objets. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

Renvoie ``true`` si l'**Area3D** donné intersecte ou chevauche cette **Area3D**, ``false`` sinon.

\ **Note :** Le résultat de ce test n'est pas immédiat après le déplacement des objets. Pour les performances, la liste des chevauchements est mise à jour une fois par trame et avant l'étape physique. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

Renvoie ``true`` si le corps physique donné intersecte ou chevauche cette **Area3D**, sinon renvoie ``false``.

\ **Note :** Le résultat de cet essai n'est pas immédiat après le déplacement des objets. Pour les performances, la liste des chevauchements est mise à jour une fois par trame et avant l'étape physique. Envisagez d'utiliser des signaux à la place.

L'argument ``body`` peut être une instance :ref:`PhysicsBody3D<class_PhysicsBody3D>` ou :ref:`GridMap<class_GridMap>`. Bien que les GridMaps ne sont pas un corps physique eux-mêmes, ils enregistrent leurs tuiles avec des formes de collision comme un corps physique virtuel.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
