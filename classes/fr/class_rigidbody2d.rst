:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**Hérite de :** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

Un corps physique 2D qui est déplacé par une simulation physique.

.. rst-class:: classref-introduction-group

Description
-----------

**RigidBody2D** implémente la physique 2D complète. Il ne peut pas être contrôlé directement, au lieu de cela, vous devez appliquer des forces à celui-ci (gravité, impulsions, etc.), et la simulation physique calculera le mouvement résultant, la rotation, la réaction aux collisions et effets sur d'autres corps de physique dans son chemin.

Le comportement du corps peut être ajusté par :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`, :ref:`freeze<class_RigidBody2D_property_freeze>`, et :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`. En changeant diverses propriétés de l'objet, comme :ref:`mass<class_RigidBody2D_property_mass>`, vous pouvez contrôler comment la simulation physique agit sur lui.

Un corps rigide maintiendra toujours sa forme et sa taille, même lorsque des forces lui sont appliquées. Il est utile pour les objets qui peuvent être interagis avec dans un environnement, comme un arbre qui peut être renversé ou une pile de caisses qui peut être bousculée.

Si vous devez directement affecter le corps, préférez :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` car il vous permet d'accéder directement à l'état physique.

Si vous devez redéfinir le comportement physique par défaut, vous pouvez écrire une fonction d'intégration des forces personnalisée. Voir :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`.

\ **Note :** Changer la transformation 2D ou :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` d'un **RigidBody2D** peut très souvent conduire à des comportements imprévisibles. Cela se produit aussi lorsqu'un **RigidBody2D** est le descendant d'un nœud bougeant constamment, comme un autre **RigidBody2D**, car cela fera que sa transformation globale sera définie chaque fois que son ancêtre se déplace.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Dépanner des problèmes de physique <../tutorials/physics/troubleshooting_physics_issues>`

- `Démo d'un jeu de plate-formes avec de la physique 2D <https://godotengine.org/asset-library/asset/2725>`__

- `Démo des instanciations <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`                           | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`                 | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_velocity<class_RigidBody2D_property_angular_velocity>`                   | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`can_sleep<class_RigidBody2D_property_can_sleep>`                                 | ``true``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` | :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>`             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`constant_force<class_RigidBody2D_property_constant_force>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`constant_torque<class_RigidBody2D_property_constant_torque>`                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`                     | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CCDMode<enum_RigidBody2D_CCDMode>`                   | :ref:`continuous_cd<class_RigidBody2D_property_continuous_cd>`                         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`                 | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`freeze<class_RigidBody2D_property_freeze>`                                       | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`             | :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`                             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`gravity_scale<class_RigidBody2D_property_gravity_scale>`                         | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`inertia<class_RigidBody2D_property_inertia>`                                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`                             | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`                   | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`                         | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`mass<class_RigidBody2D_property_mass>`                                           | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                      | :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`              | :ref:`physics_material_override<class_RigidBody2D_property_physics_material_override>` |                   |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sleeping<class_RigidBody2D_property_sleeping>`                                   | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_integrate_forces<class_RigidBody2D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual|         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_central_force<class_RigidBody2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                           |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_force<class_RigidBody2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_torque<class_RigidBody2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_force<class_RigidBody2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_impulse<class_RigidBody2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                   |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_force<class_RigidBody2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_impulse<class_RigidBody2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque<class_RigidBody2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque_impulse<class_RigidBody2D_method_apply_torque_impulse>`\ (\ torque\: :ref:`float<class_float>`\ )                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_colliding_bodies<class_RigidBody2D_method_get_colliding_bodies>`\ (\ ) |const|                                                                                      |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_contact_count<class_RigidBody2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody2D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

Émis lorsqu'une collision avec un autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` or :ref:`TileMap<class_TileMap>` arrive. Nécessite que :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` soit défini à ``true`` et que :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` soit défini assez haut pour détecter toutes les collisions. Les :ref:`TileMap<class_TileMap>` sont détectées si le :ref:`TileSet<class_TileSet>` a des Collision :ref:`Shape2D<class_Shape2D>`\ s.

\ ``body`` le :ref:`Node<class_Node>`, s'il existe dans l'arbre, de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

Émis lorsque la collision avec un autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` or :ref:`TileMap<class_TileMap>` se finit. Nécessite que :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` soit défini à ``true`` et que :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` soit défini assez haut pour détecter toutes les collisions. Les :ref:`TileMap<class_TileMap>` sont détectées si le :ref:`TileSet<class_TileSet>` a des Collision :ref:`Shape2D<class_Shape2D>`\ s.

\ ``body`` le :ref:`Node<class_Node>`, s'il existe dans l'arbre, de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

Émis quand une des :ref:`Shape2D<class_Shape2D>` de ce RigidBody2D entre en collision avec un autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou d'une :ref:`Shape2D<class_Shape2D>` d'une :ref:`TileMap<class_TileMap>`. Nécessite que :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` soit défini à ``true`` et que :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` soit défini assez haut pour détecter toutes les collisions. Les :ref:`TileMap<class_TileMap>` sont détectées si le :ref:`TileSet<class_TileSet>` a des Collision :ref:`Shape2D<class_Shape2D>`\ s.

\ ``body_rid`` le :ref:`RID<class_RID>` de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`TileSet<class_TileSet>` utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` le :ref:`Node<class_Node>`, s'il existe dans l'arbre, du :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou du :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` l'index de la :ref:`Shape2D<class_Shape2D>` du :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou du :ref:`TileMap<class_TileMap>` utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` avec ``corps.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` l'index de la :ref:`Shape2D<class_Shape2D>` de ce RigidBody2D utilisée par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` avec ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

Émis lorsque la collision entre l'une des :ref:`Shape2D<class_Shape2D>` de ce RigidBody2D et un autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`Shape2D<class_Shape2D>` de :ref:`TileMap<class_TileMap>` se termine. Nécessite que :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` soit défini à ``true`` et que :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` soit défini assez haut pour détecter toutes les collisions. Les :ref:`TileMap<class_TileMap>`\ s sont détectées si le :ref:`TileSet<class_TileSet>` a des Collision :ref:`Shape2D<class_Shape2D>`\ s.

\ ``body_rid`` le :ref:`RID<class_RID>` de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`CollisionObject2D<class_CollisionObject2D>` d'une :ref:`TileSet<class_TileSet>` utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` le :ref:`Node<class_Node>`, s'il existe dans l'arbre, de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` l'index de la :ref:`Shape2D<class_Shape2D>` de l'autre :ref:`PhysicsBody2D<class_PhysicsBody2D>` ou :ref:`TileMap<class_TileMap>` utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` avec ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index)``.

\ ``local_shape_index`` l'index de la :ref:`Shape2D<class_Shape2D>` de ce RigidBody2D utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Obtenez le nœud :ref:`CollisionShape2D<class_CollisionShape2D>` avec ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index)``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

Émis lorsque le moteur de physique change l'état de sommeil du corps.

\ **Note :** Changer la valeur de :ref:`sleeping<class_RigidBody2D_property_sleeping>` ne déclenchera pas ce signal. Il est seulement émis si l'état de sommeil est changé par le moteur de physique ou si ``emit_signal("sleeping_state_changed")`` est utilisé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

Mode de gel du corps statique (par défaut). Le corps n'est pas affecté par la gravité et les forces. Il ne peut être déplacé que par le code de l'utilisateur et n'entre pas en collision avec d'autres corps le long de son chemin.

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

Mode de gel du corps cinématique. Semblable à :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>`, mais collisionne avec d'autres corps le long de son chemin lorsqu'il est déplacé. Utile pour un corps gelé qui doit être animé.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

Dans ce mode, le centre de masse du corps est calculé automatiquement en fonction de ses formes. Cela suppose que les origines des formes sont aussi leur centre de masse.

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

Dans ce mode, le centre de masse du corps est défini par :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`. La valeur par défaut est à l'origine du corps.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

Dans ce mode, la valeur d'amortissement du corps est ajoutée à toute valeur définie dans les zones ou la valeur par défaut.

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

Dans ce mode, la valeur d'amortissement du corps remplace toute valeur définie dans les zones ou la valeur par défaut.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

Détection de collision continue désactivée. C'est le moyen le plus rapide pour détecter les collisions de corps, mais peut manquer les petits objets en mouvement rapide.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

Détection de collision continue activée par raycasting. C'est plus rapide que le shapecasting mais moins précis.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

Détection de collisions continue activée en utilisant le shapecasting. C'est la méthode de détection de collisions continue la plus lente et la plus précise.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Amortit la rotation du corps. Par défaut, le corps utilisera le paramètre de projet :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` ou toute redéfinition de valeur définie par une :ref:`Area2D<class_Area2D>` où se trouve le corps. Selon :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`, vous pouvez définir que :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` soit ajouté à ou va remplacer la valeur d'amortissement du corps.

Voir :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

Définit comment :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` est appliqué.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

La vitesse de rotation du corps en *radians* par seconde.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Si ``true``, le corps peut entrer en mode sommeil lorsqu'il n'y a pas de mouvement. Voir :ref:`sleeping<class_RigidBody2D_property_sleeping>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Le centre de masse personnalisé du corps, relatif à la position d'origine du corps, quand :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` est défini à :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. C'est le point d'équilibre du corps, où les forces appliquées ne provoquent qu'une accélération linéaire. Appliquer des forces en dehors du centre de masse provoque une accélération angulaire.

Lorsque :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` est défini à :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>` (valeur par défaut), le centre de masse est automatiquement calculé, mais cela ne met pas à jour la valeur de :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Définit la manière dont le centre de masse du corps est défini.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

Les forces positionnelles constantes totales du corps appliquées lors de chaque mise à jour de physique.

Voir :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` et :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

Les forces de rotation constantes totales du corps appliquées lors de chaque mise à jour de physique.

Voir :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

Si ``true``, le RigidBody2D émet des signaux lorsqu'il entre en collision avec un autre corps.

\ **Note :** Par défaut, les contacts maximaux indiqués sont fixés à 0, ce qui signifie que rien ne sera enregistré, voir :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

Mode de détection de collision continu.

La détection de collision continue tente de prédire où un corps en mouvement va entrer en collision au lieu de le déplacer et de corriger son mouvement après la collision. La détection de collision continue est plus lente, mais plus précise et manque moins de collisions avec de petits objets en mouvement rapide. Des méthodes de raycasting et de shapecasting sont disponibles.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Si ``true``, l'intégration des forces standardes (comme la gravité ou l'amortissement) sera désactivée pour ce corps. En dehors de la réponse à une collision, le corps ne se déplacera que selon la méthode :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, si cette méthode virtuelle est redéfinie.

Définir cette propriété appellera la méthode :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>` en interne.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

Si ``true``, le corps est gelé. La gravité et les forces ne sont plus appliquées.

Voir :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` pour définir le comportement du corps lorsqu'il est gelé.

Pour un corps qui est toujours gelé, utilisez :ref:`StaticBody2D<class_StaticBody2D>` ou :ref:`AnimatableBody2D<class_AnimatableBody2D>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

Le mode de gel du corps. Peut être utilisé pour définir le comportement du corps lorsque :ref:`freeze<class_RigidBody2D_property_freeze>` est activé.

Pour un corps toujours gelé, utilisez :ref:`StaticBody2D<class_StaticBody2D>` ou :ref:`AnimatableBody2D<class_AnimatableBody2D>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Multiplie la gravité appliquée au corps. La gravité du corps est calculée à partir du paramètre du projet :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` et/ou de tout vecteur de gravité supplémentaire appliqué par des :ref:`Area2D<class_Area2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

Le moment d'inertie du corps. C'est comme la masse, mais pour la rotation : il détermine combien de couple il faut pour tourner le corps. Le moment d'inertie est généralement calculé automatiquement à partir de la masse et des formes, mais cette propriété vous permet de définir une valeur personnalisée.

Si elle est définie à ``0``, l'inertie est automatiquement calculée (valeur par défaut).

\ **Note :** Cette valeur ne change pas lorsque l'inertie est automatiquement calculée. Utilisez :ref:`PhysicsServer2D<class_PhysicsServer2D>` pour obtenir l'inertie calculée.


.. tabs::

 .. code-tab:: gdscript

    @onready var balle = $Balle

    func obtenir_inertie_balle():
        return 1.0 / PhysicsServer2D.body_get_direct_state(ball.get_rid()).inverse_inertia

 .. code-tab:: csharp

    private RigidBody2D _balle;

    public override void _Ready()
    {
        _balle = GetNode<RigidBody2D>("Balle");
    }

    private float ObtenirInertieBalle()
    {
        return 1.0f / PhysicsServer2D.BodyGetDirectState(_ball.GetRid()).InverseInertia;
    }



.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Amortit le mouvement du corps. Par défaut, le corps utilisera le paramètre\ :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` ou toute redéfinition de valeur définie par une :ref:`Area2D<class_Area2D>` où se trouve le corps. Selon :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`, vous pouvez définir que :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` soit ajouté à ou va remplacer la valeur d'amortissement du corps.

Voir :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` pour plus de détails sur l'amortissement.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

Définit comment :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` est appliqué.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

La vitesse linéaire du corps en pixels par seconde. Peut être utilisé sporadiquement, mais **ne pas définir à chaque trame**, car la physique peut s'exécuter dans un autre fil d'exécution et s'exécute à une granularité différente. Utilisez :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` comme boucle de traitement pour un contrôle précis de l'état du corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

Si ``true``, le corps ne peut pas pivoter. La gravité et les forces n'appliquent qu'un mouvement linéaire.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

La masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

Le nombre maximal de contacts qui seront enregistrés. Nécessite une valeur supérieure à 0 et :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` défini à ``true`` pour commencer à enregistrer les contacts. Utilisez :ref:`get_contact_count()<class_RigidBody2D_method_get_contact_count>` pour récupérer le compte ou :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` pour récupérer les corps qui sont entrés en collision avec.

\ **Note :** Le nombre de contacts est différent du nombre de collisions. Les collisions entre des bords parallèles se traduiront par deux contacts (un à chaque extrémité), et les collisions entre les faces parallèles se traduiront par quatre contacts (un à chaque coin).

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Le matériau physique de remplacement pour le corps.

Si un matériau est affecté à cette propriété, il sera utilisé au lieu de tout autre matériau physique, tel qu'un matériau hérité.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Si ``true``, le corps ne bougera pas et ne calculera pas les forces jusqu'à ce qu'un autre corps le réveille à cause, par exemple, d'une collision, ou en utilisant les méthodes :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` ou :ref:`apply_force()<class_RigidBody2D_method_apply_force>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

Appelé pendant le traitement physique, vous permettant de lire et de modifier en toute sécurité l'état de simulation de l'objet. Par défaut, elle est appelée avant l'intégration des forces standardes, mais la propriété :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` vous permet de désactiver l'intégration des forces standardes et de faire une intégration des forces entièrement personnalisée pour un corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

Ajoute une force directionnelle constante n'affectant pas la rotation, qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit enlevée avec ``constant_force = Vector2(0, 0)``.

Ceci est équivalent à utiliser :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

Ajoute une force positionnée constante au corps qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit enlevée avec ``constant_force = Vector2(0, 0)``.

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

Ajoute une force de rotation constante n'affectant pas la positon, qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit enlevée avec ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

Applique une force directionnelle n'affectant pas la rotation. Une force est dépendante du temps et destinée à être appliquée chaque mise à jour physique.

Ceci est équivalent à utiliser :ref:`apply_force()<class_RigidBody2D_method_apply_force>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

Applique une impulsion directionnelle n'affectant pas la rotation.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

Ceci est équivalent à utiliser :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

Applique une force positionnée au corps. Une force est dépendante du temps et destinée à être appliquée à chaque mise à jour physique.

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

Applique une impulsion positionnée au corps.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

Applique une force de rotation sans affecter la position. Une force est dépendante du temps et destinée à être appliquée à chaque mise à jour physique.

\ **Note :** L'inertie (:ref:`inertia<class_RigidBody2D_property_inertia>`) est nécessaire pour que cela fonctionne. Pour avoir de l’inertie (:ref:`inertia<class_RigidBody2D_property_inertia>`), un :ref:`CollisionShape2D<class_CollisionShape2D>` actif doit être un enfant du nœud, ou vous pouvez définir manuellement :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

Applique une impulsion de rotation au corps sans affecter la position.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

\ **Note :** L'inertie (:ref:`inertia<class_RigidBody2D_property_inertia>`) est nécessaire pour que cela fonctionne. Pour avoir de l’inertie (:ref:`inertia<class_RigidBody2D_property_inertia>`), un :ref:`CollisionShape2D<class_CollisionShape2D>` actif doit être un enfant du nœud, ou vous pouvez définir manuellement :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

Renvoie une liste des corps en collision avec celui-ci. Nécessite :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` d'être défini à ``true`` et :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` d'être défini assez haut pour détecter toutes les collisions.

\ **Note :** Le résultat de ce test n'est pas immédiat après le déplacement des objets. Pour la performance, la liste des collisions est mise à jour une fois par trame et avant l'étape de physique. Envisagez d'utiliser des signaux à la place.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

Renvoie le nombre de contacts que ce corps a avec d'autres corps. Par défaut, cela renvoie 0 sauf si les corps sont configurés pour surveiller les contacts (voir :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`).

\ **Note :** Pour récupérer les corps en collision, utilisez :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

Définit la vélocité du corps sur l'axe donné. La vélocité dans l'axe du vecteur donné sera définie comme la longueur du vecteur donné. Utile pour le comportement lors d'un saut.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
