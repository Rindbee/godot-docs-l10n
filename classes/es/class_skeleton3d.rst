:github_url: hide

.. _class_Skeleton3D:

Skeleton3D
==========

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo que contiene una jerarquía de huesos, usado para crear una animación esquelética 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**Skeleton3D** provides an interface for managing a hierarchy of bones, including pose, rest and animation (see :ref:`Animation<class_Animation>`). It can also use ragdoll physics.

The overall transform of a bone with respect to the skeleton is determined by bone pose. Bone rest defines the initial transform of the bone pose.

Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it is not the actual global/world transform of the bone.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`animate_physical_bones<class_Skeleton3D_property_animate_physical_bones>`                 | ``true``  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` | :ref:`modifier_callback_mode_process<class_Skeleton3D_property_modifier_callback_mode_process>` | ``1``     |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                       | :ref:`motion_scale<class_Skeleton3D_property_motion_scale>`                                     | ``1.0``   |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>`                                 | ``false`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`add_bone<class_Skeleton3D_method_add_bone>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_Skeleton3D_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones<class_Skeleton3D_method_clear_bones>`\ (\ )                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones_global_pose_override<class_Skeleton3D_method_clear_bones_global_pose_override>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>`                                          | :ref:`create_skin_from_rest_transforms<class_Skeleton3D_method_create_skin_from_rest_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`find_bone<class_Skeleton3D_method_find_bone>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_all_bone_transforms<class_Skeleton3D_method_force_update_all_bone_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_bone_child_transform<class_Skeleton3D_method_force_update_bone_child_transform>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_bone_children<class_Skeleton3D_method_get_bone_children>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_count<class_Skeleton3D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose<class_Skeleton3D_method_get_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_no_override<class_Skeleton3D_method_get_bone_global_pose_no_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_override<class_Skeleton3D_method_get_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_rest<class_Skeleton3D_method_get_bone_global_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_bone_meta<class_Skeleton3D_method_get_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_bone_meta_list<class_Skeleton3D_method_get_bone_meta_list>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_bone_name<class_Skeleton3D_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_parent<class_Skeleton3D_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_pose<class_Skeleton3D_method_get_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_position<class_Skeleton3D_method_get_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_bone_pose_rotation<class_Skeleton3D_method_get_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_scale<class_Skeleton3D_method_get_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_rest<class_Skeleton3D_method_get_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_concatenated_bone_names<class_Skeleton3D_method_get_concatenated_bone_names>`\ (\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_parentless_bones<class_Skeleton3D_method_get_parentless_bones>`\ (\ ) |const|                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_version<class_Skeleton3D_method_get_version>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_bone_meta<class_Skeleton3D_method_has_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_bone_enabled<class_Skeleton3D_method_is_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`localize_rests<class_Skeleton3D_method_localize_rests>`\ (\ )                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_add_collision_exception<class_Skeleton3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_remove_collision_exception<class_Skeleton3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_start_simulation<class_Skeleton3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_stop_simulation<class_Skeleton3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>`                        | :ref:`register_skin<class_Skeleton3D_method_register_skin>`\ (\ skin\: :ref:`Skin<class_Skin>`\ )                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_pose<class_Skeleton3D_method_reset_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_poses<class_Skeleton3D_method_reset_bone_poses>`\ (\ )                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_enabled<class_Skeleton3D_method_set_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ )                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose<class_Skeleton3D_method_set_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose_override<class_Skeleton3D_method_set_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_meta<class_Skeleton3D_method_set_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_name<class_Skeleton3D_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_parent<class_Skeleton3D_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose<class_Skeleton3D_method_set_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_position<class_Skeleton3D_method_set_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_rotation<class_Skeleton3D_method_set_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_scale<class_Skeleton3D_method_set_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_rest<class_Skeleton3D_method_set_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`unparent_bone_and_rest<class_Skeleton3D_method_unparent_bone_and_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Skeleton3D_signal_bone_enabled_changed:

.. rst-class:: classref-signal

**bone_enabled_changed**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_signal_bone_enabled_changed>`

Emitida cuando el hueso en el índice ``bone_idx`` es activado/desactivado con :ref:`set_bone_enabled()<class_Skeleton3D_method_set_bone_enabled>`. Usa :ref:`is_bone_enabled()<class_Skeleton3D_method_is_bone_enabled>` para comprobar el nuevo valor.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_bone_list_changed:

.. rst-class:: classref-signal

**bone_list_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_bone_list_changed>`

Emitida cuando la lista de huesos cambia, como al llamar a :ref:`add_bone()<class_Skeleton3D_method_add_bone>`, :ref:`set_bone_parent()<class_Skeleton3D_method_set_bone_parent>`, :ref:`unparent_bone_and_rest()<class_Skeleton3D_method_unparent_bone_and_rest>`, o :ref:`clear_bones()<class_Skeleton3D_method_clear_bones>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_pose_updated:

.. rst-class:: classref-signal

**pose_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_pose_updated>`

Emitida cuando la pose es actualizada.

\ **Nota:** Durante el proceso de actualización, esta señal no se dispara, por lo que la modificación por :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` no es detectada.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_rest_updated:

.. rst-class:: classref-signal

**rest_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_rest_updated>`

Emitida cuando el resto se actualiza.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_show_rest_only_changed:

.. rst-class:: classref-signal

**show_rest_only_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_show_rest_only_changed>`

Emitida cuando el valor de :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_skeleton_updated:

.. rst-class:: classref-signal

**skeleton_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_skeleton_updated>`

Emitida cuando la pose final ha sido calculada y será aplicada a la piel en el proceso de actualización.

Esto significa que todo el procesamiento de :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` está completo. Para detectar la finalización del procesamiento de cada :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, usa la señal :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Skeleton3D_ModifierCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **ModifierCallbackModeProcess**: :ref:`🔗<enum_Skeleton3D_ModifierCallbackModeProcess>`

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Set a flag to process modification during physics frames (see :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Set a flag to process modification during process frames (see :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Do not process modification. Use :ref:`advance()<class_Skeleton3D_method_advance>` to process the modification manually.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON:

.. rst-class:: classref-constant

**NOTIFICATION_UPDATE_SKELETON** = ``50`` :ref:`🔗<class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON>`

Notification received when this skeleton's pose needs to be updated. In that case, this is called only once per frame in a deferred process.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Skeleton3D_property_animate_physical_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animate_physical_bones** = ``true`` :ref:`🔗<class_Skeleton3D_property_animate_physical_bones>`

.. rst-class:: classref-property-setget

- |void| **set_animate_physical_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_animate_physical_bones**\ (\ )

**Obsoleto:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

Si sigues el flujo de trabajo recomendado y tienes explícitamente un :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` como hijo de **Skeleton3D**, puedes controlar si se ve afectado por el raycasting sin ejecutar :ref:`physical_bones_start_simulation()<class_Skeleton3D_method_physical_bones_start_simulation>`, mediante su :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>`.

Sin embargo, para configuraciones antiguas (obsoletas), **Skeleton3D** tiene un :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` virtual interno para compatibilidad. Esta propiedad controla el :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` del :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` virtual interno.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_modifier_callback_mode_process:

.. rst-class:: classref-property

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **modifier_callback_mode_process** = ``1`` :ref:`🔗<class_Skeleton3D_property_modifier_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_modifier_callback_mode_process**\ (\ value\: :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>`\ )
- :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **get_modifier_callback_mode_process**\ (\ )

Establece el tiempo de procesamiento para el Modificador.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_motion_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **motion_scale** = ``1.0`` :ref:`🔗<class_Skeleton3D_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motion_scale**\ (\ )

Multiplica la animación de la pista de posición 3D.

\ **Nota:** A menos que este valor sea ``1.0``, el valor clave en la animación no coincidirá con el valor de posición real.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_show_rest_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rest_only** = ``false`` :ref:`🔗<class_Skeleton3D_property_show_rest_only>`

.. rst-class:: classref-property-setget

- |void| **set_show_rest_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_show_rest_only**\ (\ )

Si es ``true``, fuerza a los huesos a estar en su pose de reposo por defecto, independientemente de sus valores. En el editor, esto también impide que los huesos sean editados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Skeleton3D_method_add_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_bone**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_add_bone>`

Adds a new bone with the given name. Returns the new bone's index, or ``-1`` if this method fails.

\ **Note:** Bone names should be unique, non empty, and cannot include the ``:`` and ``/`` characters.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Skeleton3D_method_advance>`

Manually advance the child :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s by the specified time (in seconds).

\ **Note:** The ``delta`` is temporarily accumulated in the **Skeleton3D**, and the deferred process uses the accumulated value to process the modification.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones>`

Limpia todos los huesos de este esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones_global_pose_override:

.. rst-class:: classref-method

|void| **clear_bones_global_pose_override**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones_global_pose_override>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Elimina la anulación de la pose global en todos los huesos del esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_create_skin_from_rest_transforms:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **create_skin_from_rest_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_create_skin_from_rest_transforms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_find_bone>`

Devuelve el índice del hueso que coincide con ``name`` como su nombre. Devuelve ``-1`` si no existe ningún hueso con este nombre.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_all_bone_transforms:

.. rst-class:: classref-method

|void| **force_update_all_bone_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_force_update_all_bone_transforms>`

**Obsoleto:** This method should only be called internally.

Fuerza la actualización de las transformaciones/poses para todos los huesos del esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_bone_child_transform:

.. rst-class:: classref-method

|void| **force_update_bone_child_transform**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_force_update_bone_child_transform>`

Fuerza la actualización de la transformación del hueso en ``bone_idx`` y de todos sus hijos.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_children:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_bone_children**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_children>`

Devuelve un array que contiene los índices de hueso de todos los nodos hijos del hueso proporcionado, ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_count>`

Devuelve la cantidad de huesos del esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose>`

Devuelve la transformación general del hueso especificado, con respecto al esqueleto. Al ser relativa al marco del esqueleto, esta no es la transformación "global" real del hueso.

\ **Nota:** Esta es la pose global que estableces en el esqueleto durante el proceso, la pose global final puede ser anulada por modificadores en el proceso diferido. Si quieres acceder a la pose global final, usa :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_no_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_no_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_no_override>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve la transformación general del hueso especificado, con respecto al esqueleto, pero sin ninguna anulación de pose global. Al ser relativa al marco del esqueleto, esta no es la transformación "global" real del hueso.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_override>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Returns the global pose override transform for ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_rest>`

Devuelve la transformación de reposo global para ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta>`

Devuelve los metadatos para el hueso en el índice ``bone_idx`` con la ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_bone_meta_list**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta_list>`

Devuelve la lista de todas las claves de metadatos para el hueso en el índice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_name>`

Devuelve el nombre del hueso en el índice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_parent>`

Returns the bone index which is the parent of the bone at ``bone_idx``. If -1, then bone has no parent.

\ **Note:** The parent bone returned will always be less than ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose>`

Returns the pose transform of the specified bone.

\ **Note:** This is the pose you set to the skeleton in the process, the final pose can get overridden by modifiers in the deferred process, if you want to access the final pose, use :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_position>`

Returns the pose position of the bone at ``bone_idx``. The returned :ref:`Vector3<class_Vector3>` is in the local coordinate space of the **Skeleton3D** node.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_rotation>`

Devuelve la rotación de pose del hueso en ``bone_idx``. El :ref:`Quaternion<class_Quaternion>` devuelto es local al hueso con respecto a la rotación de cualquier hueso padre.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_scale>`

Returns the pose scale of the bone at ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_rest>`

Returns the rest transform for a bone ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_concatenated_bone_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_bone_names**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_concatenated_bone_names>`

Returns all bone names concatenated with commas (``,``) as a single :ref:`StringName<class_StringName>`.

It is useful to set it as a hint for the enum property.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_parentless_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_parentless_bones**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_parentless_bones>`

Devuelve un array con todos los huesos que no tienen padre. Otra forma de verlo es que devuelve los índices de todos los huesos que no son dependientes o modificados por otros huesos del esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_version>`

Devuelve el número de veces que la jerarquía de huesos ha cambiado dentro de este esqueleto, incluyendo los cambios de nombre.

La versión del Skeleton no se serializa: úsese sólo dentro de una única instancia de Skeleton3D.

Útil para invalidar cachés en solucionadores de IK y otros nodos que procesan huesos.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_has_bone_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_has_bone_meta>`

Returns ``true`` if the bone at index ``bone_idx`` has metadata with the key ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_is_bone_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_is_bone_enabled>`

Returns whether the bone pose for the bone at ``bone_idx`` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_localize_rests:

.. rst-class:: classref-method

|void| **localize_rests**\ (\ ) :ref:`🔗<class_Skeleton3D_method_localize_rests>`

Returns all bones in the skeleton to their rest poses.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_add_collision_exception>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Adds a collision exception to the physical bone.

Works just like the :ref:`RigidBody3D<class_RigidBody3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_remove_collision_exception>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Removes a collision exception to the physical bone.

Works just like the :ref:`RigidBody3D<class_RigidBody3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_start_simulation>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Tells the :ref:`PhysicalBone3D<class_PhysicalBone3D>` nodes in the Skeleton to start simulating and reacting to the physics world.

Optionally, a list of bone names can be passed-in, allowing only the passed-in bones to be simulated.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_stop_simulation>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Tells the :ref:`PhysicalBone3D<class_PhysicalBone3D>` nodes in the Skeleton to stop simulating.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_register_skin:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **register_skin**\ (\ skin\: :ref:`Skin<class_Skin>`\ ) :ref:`🔗<class_Skeleton3D_method_register_skin>`

Vincula la Skin dada al Skeleton.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_pose:

.. rst-class:: classref-method

|void| **reset_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_pose>`

Sets the bone pose to rest for ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_poses:

.. rst-class:: classref-method

|void| **reset_bone_poses**\ (\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_poses>`

Restablece todas las poses de los huesos.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_enabled:

.. rst-class:: classref-method

|void| **set_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_enabled>`

Disables the pose for the bone at ``bone_idx`` if ``false``, enables the bone pose if ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose:

.. rst-class:: classref-method

|void| **set_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose>`

Sets the global pose transform, ``pose``, for the bone at ``bone_idx``.

\ **Note:** If other bone poses have been changed, this method executes a dirty poses recalculation and will cause performance to deteriorate. If you know that multiple global poses will be applied, consider using :ref:`set_bone_pose()<class_Skeleton3D_method_set_bone_pose>` with precalculation.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose_override:

.. rst-class:: classref-method

|void| **set_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose_override>`

**Obsoleto:** Este método podría ser modificado o eliminado en versiones futuras.

Sets the global pose transform, ``pose``, for the bone at ``bone_idx``.

\ ``amount`` is the interpolation strength that will be used when applying the pose, and ``persistent`` determines if the applied pose will remain.

\ **Note:** The pose transform needs to be a global pose! To convert a world transform from a :ref:`Node3D<class_Node3D>` to a global bone pose, multiply the :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>` of the node's :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` by the desired world transform.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_meta:

.. rst-class:: classref-method

|void| **set_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_meta>`

Establece los metadatos para el hueso en el índice ``bone_idx``, asignando el valor ``value`` a la clave ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_name>`

Establece el nombre del hueso, ``name``, para el hueso en el índice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_parent>`

Establece el índice de hueso ``parent_idx`` como el padre del hueso en ``bone_idx``. Si es -1, el hueso no tiene padre.

\ **Nota:** ``parent_idx`` debe ser menor que ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose:

.. rst-class:: classref-method

|void| **set_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose>`

Establece la transformación de pose, ``pose``, para el hueso en el índice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_position:

.. rst-class:: classref-method

|void| **set_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_position>`

Establece la posición de la pose del hueso en el índice ``bone_idx`` a ``position``. ``position`` es un :ref:`Vector3<class_Vector3>` que describe una posición local al nodo **Skeleton3D**.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_rotation:

.. rst-class:: classref-method

|void| **set_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_rotation>`

Establece la rotación de la pose del hueso en el índice ``bone_idx`` a ``rotation``. ``rotation`` es un :ref:`Quaternion<class_Quaternion>` que describe una rotación en el espacio de coordenadas local del hueso con respecto a la rotación de cualquier hueso padre.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_scale:

.. rst-class:: classref-method

|void| **set_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_scale>`

Establece la escala de la pose del hueso en el índice ``bone_idx`` a ``scale``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_rest:

.. rst-class:: classref-method

|void| **set_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_rest>`

Establece la transformación de reposo para el hueso en el índice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_unparent_bone_and_rest:

.. rst-class:: classref-method

|void| **unparent_bone_and_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_unparent_bone_and_rest>`

Desemparenta el hueso en el índice ``bone_idx`` y establece su posición de reposo a la de su padre antes de ser desemparentado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
