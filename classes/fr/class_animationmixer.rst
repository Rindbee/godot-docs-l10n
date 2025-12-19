:github_url: hide

.. _class_AnimationMixer:

AnimationMixer
==============

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AnimationPlayer<class_AnimationPlayer>`, :ref:`AnimationTree<class_AnimationTree>`

Classe de base pour :ref:`AnimationPlayer<class_AnimationPlayer>` et :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base pour :ref:`AnimationPlayer<class_AnimationPlayer>` et :ref:`AnimationTree<class_AnimationTree>` pour gérer les listes d'animation. Elle possède également des propriétés générales et des méthodes de lecture et de mélange.

Après avoir instancié les données d'information de lecture dans la classe étendue, le mélange est traité par **AnimationMixer**.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Migrer des animations de Godot 4.0 à 4.3 <https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`active<class_AnimationMixer_property_active>`                                 | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                   | :ref:`audio_max_polyphony<class_AnimationMixer_property_audio_max_polyphony>`       | ``32``             |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`     | :ref:`callback_mode_method<class_AnimationMixer_property_callback_mode_method>`     | ``0``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`   | :ref:`callback_mode_process<class_AnimationMixer_property_callback_mode_process>`   | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`deterministic<class_AnimationMixer_property_deterministic>`                   | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`reset_on_save<class_AnimationMixer_property_reset_on_save>`                   | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>`           | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>`           | ``NodePath("")``   |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_node<class_AnimationMixer_property_root_node>`                           | ``NodePath("..")`` |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_post_process_key_value<class_AnimationMixer_private_method__post_process_key_value>`\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation_library<class_AnimationMixer_method_add_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ )                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_AnimationMixer_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`capture<class_AnimationMixer_method_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ )                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_caches<class_AnimationMixer_method_clear_caches>`\ (\ )                                                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation<class_AnimationMixer_method_find_animation>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation_library<class_AnimationMixer_method_find_animation_library>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationMixer_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationLibrary<class_AnimationLibrary>`                  | :ref:`get_animation_library<class_AnimationMixer_method_get_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_library_list<class_AnimationMixer_method_get_animation_library_list>`\ (\ ) |const|                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_animation_list<class_AnimationMixer_method_get_animation_list>`\ (\ ) |const|                                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position<class_AnimationMixer_method_get_root_motion_position>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position_accumulator<class_AnimationMixer_method_get_root_motion_position_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation<class_AnimationMixer_method_get_root_motion_rotation>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation_accumulator<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale<class_AnimationMixer_method_get_root_motion_scale>`\ (\ ) |const|                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale_accumulator<class_AnimationMixer_method_get_root_motion_scale_accumulator>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationMixer_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation_library<class_AnimationMixer_method_has_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation_library<class_AnimationMixer_method_remove_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation_library<class_AnimationMixer_method_rename_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimationMixer_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_finished>`

Notifie quand une animation a fini de jouer.

\ **Note :** Ce signal n'est pas émis si une animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_libraries_updated:

.. rst-class:: classref-signal

**animation_libraries_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_libraries_updated>`

Notifie quand les bibliothèques d'animation ont changé.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_list_changed:

.. rst-class:: classref-signal

**animation_list_changed**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_list_changed>`

Notifie quand une liste d'animation est changée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_started:

.. rst-class:: classref-signal

**animation_started**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_started>`

Notifie quand une animation commence à jouer.

\ **Note :** Ce signal n'est pas émis si une animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_caches_cleared:

.. rst-class:: classref-signal

**caches_cleared**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_caches_cleared>`

Notifie quand les caches ont été effacées, soit automatiquement ou soit manuellement par :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_applied:

.. rst-class:: classref-signal

**mixer_applied**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_applied>`

Notifie quand le résultat de mélange a été appliqué aux objets cibles.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_updated:

.. rst-class:: classref-signal

**mixer_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_updated>`

Notifie quand une propriété liée au traitement a été mise à jour.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AnimationMixer_AnimationCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeProcess**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeProcess>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Traite l'animation pendant les trames de physique (voir :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`). Ceci est particulièrement utile lors de l'animation de corps physiques.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Traite l'animation pendant les trames de traitement (voir :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Ne met à jour l'animation. Utilisez :ref:`advance()<class_AnimationMixer_method_advance>` pour mettre à jour l'animation manuellement.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeMethod:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeMethod**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeMethod>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_DEFERRED** = ``0``

Regroupe les appels de méthodes durant le processus d'animation, puis effectue les appels après que les évènements ont été traités. Cela évite des bugs impliquant la suppression de nœuds ou la modification de l'AnimationPlayer durant la lecture.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE** = ``1``

Appelle la méthode aussitôt qu'elle est précisée lors de la lecture de l'animation.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeDiscrete:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeDiscrete**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeDiscrete>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT** = ``0``

Une valeur de piste :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` a la priorité lors du mélange avec des valeurs de piste :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` ou :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` et une valeur de piste :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE** = ``1``

Une valeur de piste :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` ou :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` a la priorité lors du mélange avec des valeurs de piste :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` ou :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` et une valeur de piste :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`. C'est le comportement par défaut d':ref:`AnimationPlayer<class_AnimationPlayer>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS** = ``2``

Toujours traiter la valeur de piste :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` comme :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` avec :ref:`Animation.INTERPOLATION_NEAREST<class_Animation_constant_INTERPOLATION_NEAREST>`. C'est le comportement par défaut d':ref:`AnimationTree<class_AnimationTree>`.

Si une piste de valeur a des valeurs clés d'un type non-interpolable, elle est convertie en interne pour utiliser :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE>` avec :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

Liste des types non-interpolables :

- :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 

- :ref:`@GlobalScope.TYPE_NODE_PATH<class_@GlobalScope_constant_TYPE_NODE_PATH>`\ 

- :ref:`@GlobalScope.TYPE_RID<class_@GlobalScope_constant_TYPE_RID>`\ 

- :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ 

- :ref:`@GlobalScope.TYPE_CALLABLE<class_@GlobalScope_constant_TYPE_CALLABLE>`\ 

- :ref:`@GlobalScope.TYPE_SIGNAL<class_@GlobalScope_constant_TYPE_SIGNAL>`\ 

- :ref:`@GlobalScope.TYPE_DICTIONARY<class_@GlobalScope_constant_TYPE_DICTIONARY>`\ 

- :ref:`@GlobalScope.TYPE_PACKED_BYTE_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_BYTE_ARRAY>`\ 

\ :ref:`@GlobalScope.TYPE_BOOL<class_@GlobalScope_constant_TYPE_BOOL>` et :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>` sont traités comme :ref:`@GlobalScope.TYPE_FLOAT<class_@GlobalScope_constant_TYPE_FLOAT>` pendant le mélange et arrondis lorsque le résultat est récupéré.

Il en va de même pour les tableaux et les vecteurs avec eux tels que :ref:`@GlobalScope.TYPE_PACKED_INT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_INT32_ARRAY>` ou :ref:`@GlobalScope.TYPE_VECTOR2I<class_@GlobalScope_constant_TYPE_VECTOR2I>`, ils sont traités comme :ref:`@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_FLOAT32_ARRAY>` ou :ref:`@GlobalScope.TYPE_VECTOR2<class_@GlobalScope_constant_TYPE_VECTOR2>`. Notez également que pour les tableaux, la taille est également interpolée.

\ :ref:`@GlobalScope.TYPE_STRING<class_@GlobalScope_constant_TYPE_STRING>` et :ref:`@GlobalScope.TYPE_STRING_NAME<class_@GlobalScope_constant_TYPE_STRING_NAME>` sont interpolés entre les codes de caractères et les longueurs, mais notez qu'il y a une différence d'algorithme entre l'interpolation par clé et l'interpolation par mélange.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationMixer_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_AnimationMixer_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si ``true``, l’\ **AnimationMixer** fera le traitement.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_audio_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_max_polyphony** = ``32`` :ref:`🔗<class_AnimationMixer_property_audio_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_audio_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_max_polyphony**\ (\ )

Le nombre de sons simultanés possibles pour chacun des AudioStreamPlayers assignés.

Par exemple, si cette valeur est ``32`` et que l'animation a deux pistes audio, les deux :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ s assignés peuvent jouer simultanément jusqu'à ``32`` voix chacun.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_discrete:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **callback_mode_discrete** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_discrete>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_discrete**\ (\ value\: :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ )
- :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **get_callback_mode_discrete**\ (\ )

Habituellement, les pistes peuvent être définies à :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` pour se mettre à jour infréquemment, habituellement en utilisant l'interpolation du plus proche.

Cependant, lors du mélange avec :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>`, plusieurs résultats sont pris en considération. Le :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` le spécifie explicitement. Voir aussi :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`.

Pour que les résultats mélangés soient bons, il est recommandé de définir ceci à :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS>` pour se mettre à jour à chaque trame pendant le mélange. D'autres valeurs existent pour la compatibilité et elles sont bonnes s'il n'y a pas de mélange, mais pas ainsi, peuvent produire des artéfacts.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_method:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **callback_mode_method** = ``0`` :ref:`🔗<class_AnimationMixer_property_callback_mode_method>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_method**\ (\ value\: :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`\ )
- :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **get_callback_mode_method**\ (\ )

Le mode d'appel utilisé pour les pistes "Appel de méthode".

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_process:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **callback_mode_process** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_process**\ (\ value\: :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`\ )
- :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **get_callback_mode_process**\ (\ )

La notification de processus dans laquelle mettre à jour les animations.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_AnimationMixer_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Si ``true``, le mélange utilise l'algorithme déterministe. Le poids total n'est pas normalisé et le résultat est accumulé avec une valeur initiale (``0`` ou une animation ``"RESET"`` si elle est présente).

Cela signifie que si la quantité totale du mélange est de ``0.0``, le résultat est égal à l'animation ``"RESET"``.

Si le nombre de pistes entre les animations mélangées est différent, l'animation avec la piste manquante est traitée comme si elle avait la valeur initiale.

Si ``false``, Le mélange n'utilise pas l'algorithme déterministe. Le poids total est normalisé et vaut toujours ``1.0``. Si le nombre de pistes entre les animations mélangées est différent, rien n'est fait pour l'animation à laquelle il manque une piste.

\ **Note :** Dans :ref:`AnimationTree<class_AnimationTree>`, le mélange avec :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>` ou un poids supérieur à ``1.0`` peut produire des résultats inattendus.

Par exemple, si :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` mélange deux nœuds avec la quantité ``1.0``, alors le poids total est de ``2.0`` mais il sera normalisé pour rendre le montant total égal à ``1.0`` et le résultat sera égal à :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>` avec la quantité ``0.5``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_reset_on_save:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_on_save** = ``true`` :ref:`🔗<class_AnimationMixer_property_reset_on_save>`

.. rst-class:: classref-property-setget

- |void| **set_reset_on_save_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset_on_save_enabled**\ (\ )

Ceci est utilisé par l'éditeur. Si défini à ``true``, la scène sera sauvegardée avec les effets de l'animation de réinitialisation (l'animation avec la clé ``"RESET"``) appliqués comme si elle avait été positionnée au temps 0, avec l'éditeur gardant les valeurs que la scène avait avant la sauvegarde.

Cela rend plus commode la prévisualisation et la modification des animations dans l'éditeur, car les modifications de la scène ne seront pas sauvegardées tant qu'elles sont définies dans l'animation de réinitialisation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **root_motion_local** = ``false`` :ref:`🔗<class_AnimationMixer_property_root_motion_local>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_root_motion_local**\ (\ )

Si ``true``, la valeur de :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>` est extraite en tant que valeur de translation locale avant le mélange. En d'autres termes, c'est traité comme si la translation est faite après la rotation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_track:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_motion_track** = ``NodePath("")`` :ref:`🔗<class_AnimationMixer_property_root_motion_track>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_track**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_motion_track**\ (\ )

Le chemin vers la piste d'animation utilisée pour le mouvement racine. Les chemins doivent être des chemins d’arborescence de scène valides vers un nœud, et doivent être spécifiés à partir du nœud parent du nœud qui va reproduire l'animation. La piste du mouvement racine :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` utilise le même format que :ref:`Animation.track_set_path()<class_Animation_method_track_set_path>`, mais notez qu'un os doit être spécifié.

Si la piste est du type :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, ou :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>` la transformation sera annulée visuellement, et l'animation semblera rester sur place. Voir aussi :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`, :ref:`get_root_motion_rotation()<class_AnimationMixer_method_get_root_motion_rotation>`, :ref:`get_root_motion_scale()<class_AnimationMixer_method_get_root_motion_scale>`, et :ref:`RootMotionView<class_RootMotionView>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_node** = ``NodePath("..")`` :ref:`🔗<class_AnimationMixer_property_root_node>`

.. rst-class:: classref-property-setget

- |void| **set_root_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_node**\ (\ )

Le nœud à partir duquel les références de chemin de nœud vont commencer.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationMixer_private_method__post_process_key_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_post_process_key_value**\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AnimationMixer_private_method__post_process_key_value>`

Une fonction virtuelle pour le traitement après avoir obtenu une clé pendant la lecture.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_add_animation_library:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ ) :ref:`🔗<class_AnimationMixer_method_add_animation_library>`

Ajoute la bibliothèque ``library`` au lecteur d'animation, avec la clé ``name``.

AnimationMixer a une bibliothèque globale par défaut avec une chaîne vide comme clé. Pour ajouter une animation à la bibliothèque globale :


.. tabs::

 .. code-tab:: gdscript

    var biblio_globale = mixer.get_animation_library(")
    biblio_globale.add_animation("nom_animation", ressource_animation)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationMixer_method_advance>`

Avance manuellement les animations par le temps spécifié (en secondes).

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_capture:

.. rst-class:: classref-method

|void| **capture**\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ ) :ref:`🔗<class_AnimationMixer_method_capture>`

Si la piste d'animation spécifiée par ``name`` a une option :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>`, stocke les valeurs actuelles des objets indiqués par le chemin de piste en tant que cache. S'il y a déjà un cache capturé, l'ancien cache est supprimé.

Après cela, elle interpolera avec le résultat de mélange d'animation actuel pendant le processus de lecture pendant le temps spécifié par ``duration``, fonctionnant comme un fondu enchaîné.

Vous pouvez spécifier ``trans_type`` pour la courbe de l'interpolation. Pour de meilleurs résultats, il peut être approprié de préciser :ref:`Tween.TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>` pour les cas où la première clé de la piste commence par une valeur non nulle ou où la valeur clé ne change pas, et :ref:`Tween.TRANS_QUAD<class_Tween_constant_TRANS_QUAD>` pour les cas où la valeur clé change linéairement.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_clear_caches:

.. rst-class:: classref-method

|void| **clear_caches**\ (\ ) :ref:`🔗<class_AnimationMixer_method_clear_caches>`

**AnimationMixer** met en cache des nœuds animés. Il peut ne pas remarquer si un nœud disparaît, :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` le force à mettre à jour le cache à nouveau.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation>`

Renvoie la clé de ``animation`` ou une chaîne :ref:`StringName<class_StringName>` vide si elle n'est pas trouvée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation_library:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation_library**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation_library>`

Renvoie la clé pour l':ref:`AnimationLibrary<class_AnimationLibrary>` qui contient ``animation`` ou une chaîne :ref:`StringName<class_StringName>` vide si elle n'est pas trouvée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation>`

Renvoie l':ref:`Animation<class_Animation>` avec la clé ``name``. Si l'animation n'existe pas, ``null`` est renvoyé est une erreur est enregistrée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library:

.. rst-class:: classref-method

:ref:`AnimationLibrary<class_AnimationLibrary>` **get_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library>`

Renvoie la première :ref:`AnimationLibrary<class_AnimationLibrary>` avec la clé ``name`` ou ``null`` si aucune n'est trouvée.

Pour obtenir la bibliothèque d'animation globale d'**AnimationMixer**, utilisez ``get_animation_library(")``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_library_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library_list>`

Renvoie la liste des clés de bibliothèque stockées.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_list>`

Renvoie la liste des clés d'animations stockées.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position>`

Récupère le différentiel de position du mouvement avec :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Vector3<class_Vector3>` qui peut être utilisé autre part.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` n'est pas un chemin vers une piste de type :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, renvoie ``Vector3(0,0,0)``.

Voir aussi :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` et :ref:`RootMotionView<class_RootMotionView>`;

Le plus simple example est d'appliquer la position à :ref:`CharacterBody3D<class_CharacterBody3D>`\  :


.. tabs::

 .. code-tab:: gdscript

    var rotation_actuelle

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            rotation_actuelle = get_quaternion()
            state_machine.travel("Animate")
        var velocite = rotation_actuelle * animation_tree.get_root_motion_position() / delta
        set_velocity(velocite)
        move_and_slide()



En utilisant ceci en combinaison avec :ref:`get_root_motion_rotation_accumulator()<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`, vous pouvez appliquer la position du mouvement racine correctement pour prendre en compte la rotation du nœud.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var vitesse = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
        set_velocity(vitesse)
        move_and_slide()



Si :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>` vaut ``true``, renvoie la valeur de translation pré-multipliée avec la rotation inversée.

Dans ce cas, le code peut être écrit comme suit :


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var vitesse = get_quaternion() * animation_tree.get_root_motion_position() / delta
        set_velocity(vitesse)
        move_and_slide()



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position_accumulator>`

Récupère la valeur mélangée des pistes de position avec :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Vector3<class_Vector3>` qui peut être utilisé autre part.

Ceci est utile dans les cas où vous voulez respecter les valeurs de clés initiales de l'animation.

Par exemple, si une animation avec seulement une clé ``Vector3(0, 0, 0)`` est jouée dans la trame précédente et ensuite une animation avec seulement une clé ``Vector3(1, 0, 1)`` est jouée à la trame suivante, la différence peut-être calculée comme suit :


.. tabs::

 .. code-tab:: gdscript

    var accumulateur_position_mouvement_racine_precedent

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var accumulateur_position_mouvement_racine_actuel = animation_tree.get_root_motion_position_accumulator()
        var difference = accumulateur_position_mouvement_racine_actuel - accumulateur_position_mouvement_racine_precedent
        accumulateur_position_mouvement_racine_precedent = accumulateur_position_mouvement_racine_actuel
        transform.origin += difference



Cependant, si l'animation boucle, un changement discret non intentionnel peut se produire, donc cela n'est utile que pour certains cas d'utilisation simples.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation>`

Récupère le différentiel de rotation du mouvement avec :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Quaternion<class_Quaternion>` qui peut être utilisé autre part.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` n'est pas un chemin vers une piste de type :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, renvoie ``Quaternion(0, 0, 0, 1)``.

Voir aussi :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` et :ref:`RootMotionView<class_RootMotionView>`;

Le plus simple example est d'appliquer la rotation à :ref:`CharacterBody3D<class_CharacterBody3D>`\  :


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation_accumulator:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`

Récupère la valeur du mélange des pistes de rotation avec le :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Quaternion<class_Quaternion>` qui peut être utilisé ailleurs.

Ceci est nécessaire pour appliquer correctement la position du mouvement racine, en tenant compte de la rotation. Voir aussi :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`.

En outre, cela est utile dans les cas où vous voulez respecter les valeurs de clés initiales de l'animation.

Par exemple, si une animation avec une seule clé ``Quaternion(0, 0, 1)`` est jouée dans la trame précédente, puis une animation avec une seule clé ``Quaternion(0, 0.707, 0, 0.707)`` est jouée dans la trame suivante, la différence peut être calculée comme suit :


.. tabs::

 .. code-tab:: gdscript

    var accumulateur_rotation_mouvement_source_precedent

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var accumulateur_rotation_mouvement_source_actuel = animation_tree.get_root_motion_rotation_accumulator()
        var difference = accumulateur_rotation_mouvement_source_precedent.inverse() * accumulateur_rotation_mouvement_source_actuel
        accumulateur_rotation_mouvement_source_precedent = accumulateur_rotation_mouvement_source_actuel
        transform.basis *=  Basis(difference)



Cependant, si l'animation boucle, un changement discret non intentionnel peut se produire, donc cela n'est utile que pour certains cas d'utilisation simples.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale>`

Récupère le différentiel d'échelle du mouvement avec :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Vector3<class_Vector3>` qui peut être utilisé autre part.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` n'est pas un chemin vers une piste de type :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>`, renvoie ``Vector3(0, 0, 0)``.

Voir aussi :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` et :ref:`RootMotionView<class_RootMotionView>`;

Le plus simple exemple est d'appliquer l'échelle à :ref:`CharacterBody3D<class_CharacterBody3D>`\  :


.. tabs::

 .. code-tab:: gdscript

    var echelle_actuelle = Vector3(1, 1, 1)
    var accum_echelle = Vector3(1, 1, 1)

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            echelle_actuelle = get_scale()
            accum_echelle = Vector3(1, 1, 1)
            state_machine.travel("Animate")
        accum_echelle += animation_tree.get_root_motion_scale()
        set_scale(echelle_actuelle * accum_echelle)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale_accumulator>`

Récupère la valeur du mélange des pistes d'échelle avec le :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` en tant que :ref:`Vector3<class_Vector3>` qui peut être utilisé ailleurs.

Par exemple, si une animation avec une seule clé ``Vector3(1, 1, 1)`` est jouée dans la trame précédente, puis une animation avec une seule clé ``Vector3(2, 2, 2)`` est jouée dans la trame suivante, la différence peut être calculée comme suit :


.. tabs::

 .. code-tab:: gdscript

    var accumulateur_echelle_mouvement_source_precedent

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var accumulateur_echelle_mouvement_source_actuel = animation_tree.get_root_motion_scale_accumulator()
        var difference = accumulateur_echelle_mouvement_source_actuel- accumulateur_echelle_mouvement_source_precedent
        accumulateur_echelle_mouvement_source_precedent = accumulateur_echelle_mouvement_source_actuel
        transform.basis = transform.basis.scaled(difference)



Cependant, si l'animation boucle, un changement discret non intentionnel peut se produire, donc cela n'est utile que pour certains cas d'utilisation simples.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation>`

Renvoie ``true`` si l'**AnimationMixer** stocke une :ref:`Animation<class_Animation>` avec la clé ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation_library:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation_library>`

Renvoie ``true`` si l'**AnimationMixer** stocke une :ref:`AnimationLibrary<class_AnimationLibrary>` avec la clé ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_remove_animation_library:

.. rst-class:: classref-method

|void| **remove_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_remove_animation_library>`

Retire la :ref:`AnimationLibrary<class_AnimationLibrary>` associée à la clé ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_rename_animation_library:

.. rst-class:: classref-method

|void| **rename_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_rename_animation_library>`

Déplace le :ref:`AnimationLibrary<class_AnimationLibrary>` associée à la clé ``name`` vers la clé ``newname``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
