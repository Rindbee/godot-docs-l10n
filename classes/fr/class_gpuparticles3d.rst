:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un émetteur de particules 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Nœud de particules 3D utilisé pour créer une variété de systèmes et d'effets de particules. **GPUParticles3D** dispose d'un émetteur qui génère un certain nombre de particules à un taux donné.

Utilisez la propriété :ref:`process_material<class_GPUParticles3D_property_process_material>` pour ajouter un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` pour configurer l'apparence et le comportement des particules. Alternativement, vous pouvez ajouter un :ref:`ShaderMaterial<class_ShaderMaterial>` qui sera appliqué à toutes les particules.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Systèmes de particule (3D) <../tutorials/3d/particles/index>`

- :doc:`Contrôler des milliers de poissons en utilisant les Particles <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`amount<class_GPUParticles3D_property_amount>`                           | ``8``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`               | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`collision_base_size<class_GPUParticles3D_property_collision_base_size>` | ``0.01``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`           | :ref:`draw_order<class_GPUParticles3D_property_draw_order>`                   | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_1<class_GPUParticles3D_property_draw_pass_1>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_2<class_GPUParticles3D_property_draw_pass_2>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_3<class_GPUParticles3D_property_draw_pass_3>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_4<class_GPUParticles3D_property_draw_pass_4>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`draw_passes<class_GPUParticles3D_property_draw_passes>`                 | ``1``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Skin<class_Skin>`                                   | :ref:`draw_skin<class_GPUParticles3D_property_draw_skin>`                     |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`emitting<class_GPUParticles3D_property_emitting>`                       | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`explosiveness<class_GPUParticles3D_property_explosiveness>`             | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>`                     | ``30``                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`fract_delta<class_GPUParticles3D_property_fract_delta>`                 | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`interp_to_end<class_GPUParticles3D_property_interp_to_end>`             | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interpolate<class_GPUParticles3D_property_interpolate>`                 | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`lifetime<class_GPUParticles3D_property_lifetime>`                       | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`local_coords<class_GPUParticles3D_property_local_coords>`               | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`one_shot<class_GPUParticles3D_property_one_shot>`                       | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`preprocess<class_GPUParticles3D_property_preprocess>`                   | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`process_material<class_GPUParticles3D_property_process_material>`       |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`randomness<class_GPUParticles3D_property_randomness>`                   | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`seed<class_GPUParticles3D_property_seed>`                               | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>`                 | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`NodePath<class_NodePath>`                           | :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`                 | ``NodePath("")``              |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>`             | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`trail_lifetime<class_GPUParticles3D_property_trail_lifetime>`           | ``0.3``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` | :ref:`transform_align<class_GPUParticles3D_property_transform_align>`         | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>`           | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>`         | ``AABB(-4, -4, -4, 8, 8, 8)`` |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`capture_aabb<class_GPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`convert_from_particles<class_GPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`emit_particle<class_GPUParticles3D_method_emit_particle>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>` | :ref:`get_draw_pass_mesh<class_GPUParticles3D_method_get_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`request_particles_process<class_GPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`\ )                                                                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`restart<class_GPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_draw_pass_mesh<class_GPUParticles3D_method_set_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

Émis lorsque toutes les particules actives ont terminé le traitement. Pour redémarrer immédiatement le cycle d'émission, appelez :ref:`restart()<class_GPUParticles3D_method_restart>`.

Ce signal n'est jamais émis lorsque :ref:`one_shot<class_GPUParticles3D_property_one_shot>` est désactivé, car les particules seront émises et traitées en continu.

\ **Note :** Pour les émetteurs :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, à cause des particules calculées sur le GPU, il peut y avoir une courte période après avoir reçu le signal :ref:`finished<class_GPUParticles3D_signal_finished>` pendant laquelle définir :ref:`emitting<class_GPUParticles3D_property_emitting>` à ``true`` ne redémarre pas le cycle d'émission. Ce retard est évité en appelant plutôt :ref:`restart()<class_GPUParticles3D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Les particules sont affichées dans l'ordre dans lequel elles ont été émises.

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Les particules sont dessinées dans l'ordre de leur durée de vie restante. En d'autres termes, la particule avec la durée de vie la plus grande est dessinée à l'avant.

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Les particules sont dessinées dans l'ordre inverse du temps de vie restant. En d'autres termes, la particule avec la vie la plus basse est dessinée à l'avant.

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

Les particules sont affichées suivant leur profondeur à l'écran.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

La particule commence à la position spécifiée.

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

La particule commence avec la rotation et l'échelle spécifiées.

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

La particule commence avec le vecteur de vélocité spécifié, qui définit la direction et la vitesse de l'émission.

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

La particule commence avec la couleur spécifiée.

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

La particule commence avec les données personnalisées ``CUSTOM`` spécifiées.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_TransformAlign:

.. rst-class:: classref-enumeration

enum **TransformAlign**: :ref:`🔗<enum_GPUParticles3D_TransformAlign>`

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_DISABLED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Y_TO_VELOCITY** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

Le nombre maximal de passes de dessin supporté.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Le nombre de particules à émettre dans un cycle d'émission. Le taux d'émission effectif est de ``(amount * amount_ratio) / lifetime`` particules par seconde. Des valeurs plus élevées augmenteront le coût sur le GPU, même si toutes les particules ne sont pas visibles à un moment donné ou si :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` est diminué.

\ **Note :** Modifier cette valeur entraînera le redémarrage du système de particules. Pour éviter cela, modifiez plutôt :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Le ratio de particule qui devraient être réellement émises. Si la valeur est inférieure à ``1.0``, cela permettra de définir la quantité de particules émises tout au long de la vie à ``amount * amount_ratio``. Contrairement à la modification de :ref:`amount<class_GPUParticles3D_property_amount>`, modifier :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` tout en émettant n'affecte pas les particules déjà émises et ne provoque pas le redémarrage du système de particules. :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` peut être utilisé pour créer des effets qui font varier le nombre de particules émises au fil du temps.

\ **Note :** La réduction de la valeur de :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` n'a pas d'avantage de performance, puisque les ressources doivent être allouées et traitées pour le nombre total (:ref:`amount<class_GPUParticles3D_property_amount>`) de particules, peu importe :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`. Si vous n'avez pas l'intention de modifier le nombre de particules émises pendant que les particules émettent, assurez-vous que :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` soit défini à ``1`` et changez plutôt :ref:`amount<class_GPUParticles3D_property_amount>` à votre goût.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Le diamètre de base de collision des particules en mètres. Si les particules semblent s'enfoncer dans le sol lors de la collision, augmentez cette valeur. Si les particules semblent flotter lors de la collision, diminuez cette valeur. Seulement effectif si :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` vaut :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` ou :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Note :** Les particules ont toujours une forme de collision sphérique.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Ordre de dessin des particules.

\ **Note :** :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` est la seule option qui supporte les vecteurs de mouvement pour des effets comme le TAA. Il est suggéré d'utiliser cet ordre de dessin si les particules sont opaques pour corriger des artéfacts fantomatiques.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

Le :ref:`Mesh<class_Mesh>` qui est affiché lors de la première passe.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

Le :ref:`Mesh<class_Mesh>` qui est affiché lors de la deuxième passe.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

Le :ref:`Mesh<class_Mesh>` qui est affiché lors de la troisième passe.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

Le :ref:`Mesh<class_Mesh>` qui est affiché lors de la quatrième passe.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

Le nombre de passes de rendu lors du rendu des particules.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **draw_skin** :ref:`🔗<class_GPUParticles3D_property_draw_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Si ``true``, des particules sont émises. :ref:`emitting<class_GPUParticles3D_property_emitting>` peut être utilisé pour démarrer et arrêter l'émission des particules. Toutefois, si :ref:`one_shot<class_GPUParticles3D_property_one_shot>` vaut ``true``, définir :ref:`emitting<class_GPUParticles3D_property_emitting>` à ``true`` ne redémarrera pas le cycle d'émission à moins que toutes les particules actives n'aient fini de traiter. Utilisez le signal :ref:`finished<class_GPUParticles3D_signal_finished>` pour être averti quand toutes les particules actives ont fini de traiter.

\ **Note :** Pour les émetteurs :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, à cause des particules calculées sur le GPU, il peut y avoir une courte période après avoir reçu le signal :ref:`finished<class_GPUParticles3D_signal_finished>` pendant laquelle définir cette valeur à ``true`` ne redémarre pas le cycle d'émission.

\ **Astuce :** Si votre émetteur :ref:`one_shot<class_GPUParticles3D_property_one_shot>` doit immédiatement redémarrer l'émission de particules une fois le signal :ref:`finished<class_GPUParticles3D_signal_finished>` reçu, envisagez d'appeler :ref:`restart()<class_GPUParticles3D_method_restart>` au lieu de définir :ref:`emitting<class_GPUParticles3D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Ratio de temps entre chaque émission. Si ``0``, les particules sont émises en continu. Si ``1``, toutes les particules sont émises simultanément.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Le taux de rafraîchissement du système de particules est fixé à une valeur. Par exemple, changer la valeur à 2 rendra les particules à 2 trames par seconde. Notez que cela ne ralentit pas la simulation du système de particules lui-même.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Si ``true``, utilise un calcul d'étape fractionnelle qui permet affichage plus lisse des particules.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Cause toutes les particules de ce nœud à interpoler vers la fin de leur vie.

\ **Note :** Cela ne fonctionne que lors qu’utilisé avec un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Il doit être implémenté manuellement pour les shaders de traitement personnalisés.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

Active l'interpolation des particules, ce qui rend le mouvement des particules plus fluide lorsque leur taux de rafraichissement :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` est inférieur au taux de rafraîchissement de l'écran.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

La durée pendant laquelle chaque particule existera (en secondes). Le taux d'émission effectif est de ``(amount * amount_ratio) / lifetime`` particules par seconde.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Si ``true``, les particules utilisent l'espace de coordonnées du nœud parent (aussi appelées coordonnées locales). Cela causera les particules de se déplacer et tourner avec le nœud **GPUParticles3D** (et ses parents) lorsqu'il est déplacé ou tourné. Si ``false``, les particules utilisent des coordonnées globales, cela ne causera pas les particules de se déplacer et tourner avec le nœud **GPUParticles3D** (et ses parents) lorsqu'il est déplacé ou en tourné.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Si ``true``, seul un nombre de particules égal à :ref:`amount<class_GPUParticles3D_property_amount>` sera émis.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Durée durant laquelle pré-traiter les particules avant que l'animation commence. Vous permet de commencer l'animation un certain temps après que les particules ont commencé d'émettre.

\ **Note :** Cela peut être très cher si défini à un nombre élevé car il nécessite l'exécution du shader de particules un certain nombre de fois égal à :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` (ou 30, si :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` vaut 0) pour chaque seconde. Dans les cas extrêmes, il peut même conduire à un crash GPU en raison du volume de travail effectué en une seule trame.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

:ref:`Material<class_Material>` pour le traitement des particules. Peut être un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` ou un :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Facteur d'aléatoire de l'émission.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Définit la graine de l'aléatoire utilisée par le système de particules. Seulement effectif si :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Facteur d'échelle de vitesse. Une valeur de ``0`` peut être utilisée pour mettre en pause les particules.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Chemin vers un autre nœud **GPUParticles3D** qui sera utilisé comme sous-émetteur (voir :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Les sous-émetteurs peuvent être utilisés pour réaliser des effets comme des feux d'artifice, des étincelles sur les collisions, des bulles éclatant en des gouttes d'eau, et plus encore.

\ **Note :** Lorsque :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>` est défini, le nœud **GPUParticles3D** cible n'émettra plus de particules tout seul.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

If ``true``, enables particle trails using a mesh skinning system. Designed to work with :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` and :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

\ **Note:** :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>` must also be enabled on the particle mesh's material. Otherwise, setting :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` to ``true`` will have no effect.

\ **Note:** Unlike :ref:`GPUParticles2D<class_GPUParticles2D>`, the number of trail sections and subdivisions is set in the :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` or the :ref:`TubeTrailMesh<class_TubeTrailMesh>`'s properties.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

La durée que chaque traînée de particule devrait représenter (en secondes). Seulement effectif si :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align:

.. rst-class:: classref-property

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **transform_align** = ``0`` :ref:`🔗<class_GPUParticles3D_property_transform_align>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align**\ (\ value\: :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`\ )
- :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **get_transform_align**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Si ``true``, les particules utiliseront la même graine pour chaque simulation en utilisant la graine définie dans :ref:`seed<class_GPUParticles3D_property_seed>`. Ceci est utile pour les situations où le résultat visuel devrait être consistant entre les replays, par exemple en utilisant le mode Création de film.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

La :ref:`AABB<class_AABB>` qui détermine la région du nœud qui doit être visible à l'écran pour que le système de particules soit actif. :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` est ajouté sur chaque axe de l'AABB. Les attractions et collisions de particules ne se produiront que dans cette zone.

Agrandissez la boîte si les particules apparaissent/disparaissent soudainement lorsque le nœud entre/sort de l'écran. La :ref:`AABB<class_AABB>` peut être agrandie par code ou avec l'outil de l'éditeur **Particules → Générer AABB**.

\ **Note :** :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>` est redéfini par :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>` si cette propriété est définie à une valeur non par défaut.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

Renvoie la boîte délimitante alignée sur les axes qui contient toutes les particules qui sont actives dans la trame actuelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

Défini les propriétés de ce nœud pour correspondre à un nœud :ref:`CPUParticles3D<class_CPUParticles3D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

Émet une seule particule. Si ``xform``, ``velocity``, ``color`` et ``custom`` sont appliqués ou non dépend de la valeur de ``flags``. Voir :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`.

Par défaut, ParticleProcessMaterial va écraser ``color`` et utiliser le contenu de ``custom`` comme ``(rotation, âge, animation, durée de vie)``.

\ **Note :** :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` n'est supporté que sur les méthodes de rendu Forward+ et Mobile, pas Compatibilité.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

Renvoie le :ref:`Mesh<class_Mesh>` qui est dessiné à la passe d'index ``pass``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_GPUParticles3D_method_request_particles_process>`

Demande aux particules de traiter pour un temps de processus supplémentaire pendant une seule trame.

Utile pour la lecture de particules, si utilisé en combinaison avec :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` ou en appelant :ref:`restart()<class_GPUParticles3D_method_restart>` avec le paramètre ``keep_seed`` défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles3D_method_restart>`

Redémarre le cycle d'émission de particules, enlevant les particules existantes. Pour éviter que les particules ne disparaissent du viewport, attendez le signal :ref:`finished<class_GPUParticles3D_signal_finished>` avant d'appeler.

\ **Note :** Le signal :ref:`finished<class_GPUParticles3D_signal_finished>` n'est émis que par des émetteurs :ref:`one_shot<class_GPUParticles3D_property_one_shot>`.

Si ``keep_seed`` vaut ``true``, la graine actuelle de l'aléatoire sera préservée. Utile pour l'avancement et la lecture.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

Définit le :ref:`Mesh<class_Mesh>` qui est dessiné à la passe d'index ``pass``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
