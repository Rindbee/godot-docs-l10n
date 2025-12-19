:github_url: hide

.. meta::
	:keywords: spatial

.. _class_Node3D:

Node3D
======

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioListener3D<class_AudioListener3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, :ref:`BoneAttachment3D<class_BoneAttachment3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`CollisionObject3D<class_CollisionObject3D>`, :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`, :ref:`CollisionShape3D<class_CollisionShape3D>`, :ref:`GridMap<class_GridMap>`, :ref:`ImporterMeshInstance3D<class_ImporterMeshInstance3D>`, :ref:`Joint3D<class_Joint3D>`, :ref:`LightmapProbe<class_LightmapProbe>`, :ref:`Marker3D<class_Marker3D>`, :ref:`NavigationLink3D<class_NavigationLink3D>`, :ref:`NavigationObstacle3D<class_NavigationObstacle3D>`, :ref:`NavigationRegion3D<class_NavigationRegion3D>`, :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`, :ref:`OpenXRHand<class_OpenXRHand>`, :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`, :ref:`OpenXRRenderModelManager<class_OpenXRRenderModelManager>`, :ref:`Path3D<class_Path3D>`, :ref:`PathFollow3D<class_PathFollow3D>`, :ref:`RayCast3D<class_RayCast3D>`, :ref:`RemoteTransform3D<class_RemoteTransform3D>`, :ref:`ShapeCast3D<class_ShapeCast3D>`, :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, :ref:`SpringArm3D<class_SpringArm3D>`, :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`, :ref:`VehicleWheel3D<class_VehicleWheel3D>`, :ref:`VisualInstance3D<class_VisualInstance3D>`, :ref:`XRFaceModifier3D<class_XRFaceModifier3D>`, :ref:`XRNode3D<class_XRNode3D>`, :ref:`XROrigin3D<class_XROrigin3D>`

Objeto base en el espacio 3D, del que heredan todos los nodos 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **Node3D** node is the base representation of a node in 3D space. All other 3D nodes inherit from this class.

Affine operations (translation, rotation, scale) are calculated in the coordinate system relative to the parent, unless the **Node3D**'s :ref:`top_level<class_Node3D_property_top_level>` is ``true``. In this coordinate system, affine operations correspond to direct affine operations on the **Node3D**'s :ref:`transform<class_Node3D_property_transform>`. The term *parent space* refers to this coordinate system. The coordinate system that is attached to the **Node3D** itself is referred to as object-local coordinate system, or *local space*.

\ **Note:** Unless otherwise specified, all methods that need angle parameters must receive angles in *radians*. To convert degrees to radians, use :ref:`@GlobalScope.deg_to_rad()<class_@GlobalScope_method_deg_to_rad>`.

\ **Note:** In Godot 3 and older, **Node3D** was named *Spatial*.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción al 3D <../tutorials/3d/introduction_to_3d>`

- `Todos los Demos en 3D <https://github.com/godotengine/godot-demo-projects/tree/master/3d>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`basis<class_Node3D_property_basis>`                                     |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`global_basis<class_Node3D_property_global_basis>`                       |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_position<class_Node3D_property_global_position>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation<class_Node3D_property_global_rotation>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation_degrees<class_Node3D_property_global_rotation_degrees>` |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`global_transform<class_Node3D_property_global_transform>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`position<class_Node3D_property_position>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                   | :ref:`quaternion<class_Node3D_property_quaternion>`                           |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation<class_Node3D_property_rotation>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` | :ref:`rotation_edit_mode<class_Node3D_property_rotation_edit_mode>`           | ``0``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`       | :ref:`rotation_order<class_Node3D_property_rotation_order>`                   | ``2``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`scale<class_Node3D_property_scale>`                                     | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`top_level<class_Node3D_property_top_level>`                             | ``false``                                           |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`transform<class_Node3D_property_transform>`                             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                       | :ref:`visibility_parent<class_Node3D_property_visibility_parent>`             | ``NodePath("")``                                    |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`visible<class_Node3D_property_visible>`                                 | ``true``                                            |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_gizmo<class_Node3D_method_add_gizmo>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_gizmos<class_Node3D_method_clear_gizmos>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_subgizmo_selection<class_Node3D_method_clear_subgizmo_selection>`\ (\ )                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`force_update_transform<class_Node3D_method_force_update_transform>`\ (\ )                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] | :ref:`get_gizmos<class_Node3D_method_get_gizmos>`\ (\ ) |const|                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_global_transform_interpolated<class_Node3D_method_get_global_transform_interpolated>`\ (\ )                                                                                                                                                                     |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                        | :ref:`get_parent_node_3d<class_Node3D_method_get_parent_node_3d>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`World3D<class_World3D>`                                      | :ref:`get_world_3d<class_Node3D_method_get_world_3d>`\ (\ ) |const|                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_rotate<class_Node3D_method_global_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_scale<class_Node3D_method_global_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_translate<class_Node3D_method_global_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`hide<class_Node3D_method_hide>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_local_transform_notification_enabled<class_Node3D_method_is_local_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_scale_disabled<class_Node3D_method_is_scale_disabled>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_transform_notification_enabled<class_Node3D_method_is_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_visible_in_tree<class_Node3D_method_is_visible_in_tree>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at<class_Node3D_method_look_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at_from_position<class_Node3D_method_look_at_from_position>`\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`orthonormalize<class_Node3D_method_orthonormalize>`\ (\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate<class_Node3D_method_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_object_local<class_Node3D_method_rotate_object_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_x<class_Node3D_method_rotate_x>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_y<class_Node3D_method_rotate_y>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_z<class_Node3D_method_rotate_z>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`scale_object_local<class_Node3D_method_scale_object_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                            |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_disable_scale<class_Node3D_method_set_disable_scale>`\ (\ disable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_identity<class_Node3D_method_set_identity>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_ignore_transform_notification<class_Node3D_method_set_ignore_transform_notification>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_local_transform<class_Node3D_method_set_notify_local_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_transform<class_Node3D_method_set_notify_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_subgizmo_selection<class_Node3D_method_set_subgizmo_selection>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`show<class_Node3D_method_show>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_global<class_Node3D_method_to_global>`\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_local<class_Node3D_method_to_local>`\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate<class_Node3D_method_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate_object_local<class_Node3D_method_translate_object_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                   |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`update_gizmos<class_Node3D_method_update_gizmos>`\ (\ )                                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Node3D_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_Node3D_signal_visibility_changed>`

Se emite cuando la visibilidad de este nodo cambia (véase :ref:`visible<class_Node3D_property_visible>` y :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

Esta señal se emite *después* de la notificación relacionada :ref:`NOTIFICATION_VISIBILITY_CHANGED<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Node3D_RotationEditMode:

.. rst-class:: classref-enumeration

enum **RotationEditMode**: :ref:`🔗<enum_Node3D_RotationEditMode>`

.. _class_Node3D_constant_ROTATION_EDIT_MODE_EULER:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_EULER** = ``0``

La rotación se edita utilizando un :ref:`Vector3<class_Vector3>` en `ángulos de Euler <https://en.wikipedia.org/wiki/Euler_angles>`__.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_QUATERNION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_QUATERNION** = ``1``

La rotación se edita utilizando un :ref:`Quaternion<class_Quaternion>`.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_BASIS:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_BASIS** = ``2``

La rotación se edita utilizando una :ref:`Basis<class_Basis>`. En este modo, los ejes sin procesar de :ref:`basis<class_Node3D_property_basis>` se pueden modificar libremente, pero la propiedad :ref:`scale<class_Node3D_property_scale>` no está disponible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSFORM_CHANGED** = ``2000`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`

Notificación recibida cuando la :ref:`global_transform<class_Node3D_property_global_transform>` de este nodo cambia, si :ref:`is_transform_notification_enabled()<class_Node3D_method_is_transform_notification_enabled>` es ``true``. Véase también :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

\ **Nota:** La mayoría de los nodos 3D, como :ref:`VisualInstance3D<class_VisualInstance3D>` o :ref:`CollisionObject3D<class_CollisionObject3D>`, habilitan esto automáticamente para que funcionen correctamente.

\ **Nota:** En el editor, los nodos propagarán esta notificación a sus hijos si se adjunta un gizmo (véase :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. _class_Node3D_constant_NOTIFICATION_ENTER_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_WORLD** = ``41`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_ENTER_WORLD>`

Notificación recibida cuando este nodo se registra en un nuevo :ref:`World3D<class_World3D>` (véase :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

.. _class_Node3D_constant_NOTIFICATION_EXIT_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_WORLD** = ``42`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_EXIT_WORLD>`

Notification received when this node is unregistered from the current :ref:`World3D<class_World3D>` (see :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

This notification is sent in reversed order.

.. _class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_VISIBILITY_CHANGED** = ``43`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`

Notification received when this node's visibility changes (see :ref:`visible<class_Node3D_property_visible>` and :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

This notification is received *before* the related :ref:`visibility_changed<class_Node3D_signal_visibility_changed>` signal.

.. _class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LOCAL_TRANSFORM_CHANGED** = ``44`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`

Notificación recibida cuando la :ref:`transform<class_Node3D_property_transform>` de este nodo cambia, si :ref:`is_local_transform_notification_enabled()<class_Node3D_method_is_local_transform_notification_enabled>` es ``true``. Esto no se recibe cuando la :ref:`transform<class_Node3D_property_transform>` de un **Node3D** padre cambia. Véase también :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

\ **Nota:** Algunos nodos 3D como :ref:`CSGShape3D<class_CSGShape3D>` o :ref:`CollisionShape3D<class_CollisionShape3D>` habilitan esto automáticamente para que funcionen correctamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Node3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** :ref:`🔗<class_Node3D_property_basis>`

.. rst-class:: classref-property-setget

- |void| **set_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_basis**\ (\ )

Basis of the :ref:`transform<class_Node3D_property_transform>` property. Represents the rotation, scale, and shear of this node in parent space (relative to the parent node).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **global_basis** :ref:`🔗<class_Node3D_property_global_basis>`

.. rst-class:: classref-property-setget

- |void| **set_global_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_global_basis**\ (\ )

Basis of the :ref:`global_transform<class_Node3D_property_global_transform>` property. Represents the rotation, scale, and shear of this node in global space (relative to the world).

\ **Note:** If the node is not inside the tree, getting this property fails and returns :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_position** :ref:`🔗<class_Node3D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_position**\ (\ )

Posición global (traslación) de este nodo en el espacio global (relativo al mundo). Esto es equivalente al :ref:`Transform3D.origin<class_Transform3D_property_origin>` de la :ref:`global_transform<class_Node3D_property_global_transform>`.

\ **Nota:** Si el nodo no está dentro del árbol, obtener esta propiedad falla y devuelve :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation** :ref:`🔗<class_Node3D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation**\ (\ )

Rotación global de este nodo como `ángulos de Euler <https://en.wikipedia.org/wiki/Euler_angles>`__, en radianes y en el espacio global (relativo al mundo). Este valor se obtiene de la rotación de :ref:`global_basis<class_Node3D_property_global_basis>`.

- El :ref:`Vector3.x<class_Vector3_property_x>` es el ángulo alrededor del eje X global (cabeceo);

- El :ref:`Vector3.y<class_Vector3_property_y>` es el ángulo alrededor del eje Y global (guiñada);

- El :ref:`Vector3.z<class_Vector3_property_z>` es el ángulo alrededor del eje Z global (balanceo).

\ **Nota:** A diferencia de :ref:`rotation<class_Node3D_property_rotation>`, esta propiedad siempre sigue la convención YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Nota:** Si el nodo no está dentro del árbol, obtener esta propiedad falla y devuelve :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation_degrees** :ref:`🔗<class_Node3D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation_degrees**\ (\ )

La :ref:`global_rotation<class_Node3D_property_global_rotation>` de este nodo, en grados en lugar de radianes.

\ **Nota:** Si el nodo no está dentro del árbol, obtener esta propiedad falla y devuelve :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **global_transform** :ref:`🔗<class_Node3D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_global_transform**\ (\ )

La transformación de este nodo, en el espacio global (relativo al mundo). Contiene y representa la :ref:`global_position<class_Node3D_property_global_position>`, la :ref:`global_rotation<class_Node3D_property_global_rotation>` y la escala global de este nodo.

\ **Nota:** Si el nodo no está dentro del árbol, obtener esta propiedad falla y devuelve :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Posición (traslación) de este nodo en el espacio padre (relativo al nodo padre). Esto es equivalente al :ref:`Transform3D.origin<class_Transform3D_property_origin>` de :ref:`transform<class_Node3D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_quaternion:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **quaternion** :ref:`🔗<class_Node3D_property_quaternion>`

.. rst-class:: classref-property-setget

- |void| **set_quaternion**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_quaternion**\ (\ )

Rotación de este nodo representada como un :ref:`Quaternion<class_Quaternion>` en el espacio padre (relativo al nodo padre). Este valor se obtiene de la rotación de :ref:`basis<class_Node3D_property_basis>`.

\ **Nota:** Los cuaterniones son mucho más adecuados para las matemáticas 3D, pero son menos intuitivos. Establecer esta propiedad puede ser útil para la interpolación (véase :ref:`Quaternion.slerp()<class_Quaternion_method_slerp>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation**\ (\ )

Rotation of this node as `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians and in parent space (relative to the parent node). This value is obtained from :ref:`basis<class_Node3D_property_basis>`'s rotation.

- The :ref:`Vector3.x<class_Vector3_property_x>` is the angle around the local X axis (pitch);

- The :ref:`Vector3.y<class_Vector3_property_y>` is the angle around the local Y axis (yaw);

- The :ref:`Vector3.z<class_Vector3_property_z>` is the angle around the local Z axis (roll).

The order of each consecutive rotation can be changed with :ref:`rotation_order<class_Node3D_property_rotation_order>` (see :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` constants). By default, the YXZ convention is used (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Note:** This property is edited in degrees in the inspector. If you want to use degrees in a script, use :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation_degrees** :ref:`🔗<class_Node3D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation_degrees**\ (\ )

The :ref:`rotation<class_Node3D_property_rotation>` of this node, in degrees instead of radians.

\ **Note:** This is **not** the property available in the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_edit_mode:

.. rst-class:: classref-property

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **rotation_edit_mode** = ``0`` :ref:`🔗<class_Node3D_property_rotation_edit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_edit_mode**\ (\ value\: :ref:`RotationEditMode<enum_Node3D_RotationEditMode>`\ )
- :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **get_rotation_edit_mode**\ (\ )

How this node's rotation and scale are displayed in the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_order:

.. rst-class:: classref-property

:ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **rotation_order** = ``2`` :ref:`🔗<class_Node3D_property_rotation_order>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_order**\ (\ value\: :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`\ )
- :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **get_rotation_order**\ (\ )

El orden de rotación de los ejes de la propiedad :ref:`rotation<class_Node3D_property_rotation>`. La orientación final se calcula girando alrededor de los ejes X, Y y Z locales en este orden.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_Node3D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

Scale of this node in local space (relative to this node). This value is obtained from :ref:`basis<class_Node3D_property_basis>`'s scale.

\ **Note:** The behavior of some 3D node types is not affected by this property. These include :ref:`Light3D<class_Light3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, and more.

\ **Warning:** The scale's components must either be all positive or all negative, and **not** exactly ``0.0``. Otherwise, it won't be possible to obtain the scale from the :ref:`basis<class_Node3D_property_basis>`. This may cause the intended scale to be lost when reloaded from disk, and potentially other unstable behavior.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_top_level:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **top_level** = ``false`` :ref:`🔗<class_Node3D_property_top_level>`

.. rst-class:: classref-property-setget

- |void| **set_as_top_level**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_top_level**\ (\ )

If ``true``, the node does not inherit its transformations from its parent. As such, node transformations will only be in global space, which also means that :ref:`global_transform<class_Node3D_property_global_transform>` and :ref:`transform<class_Node3D_property_transform>` will be identical.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Node3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La transformación local de este nodo, en el espacio padre (relativo al nodo padre). Contiene y representa la :ref:`position<class_Node3D_property_position>`, la :ref:`rotation<class_Node3D_property_rotation>` y la :ref:`scale<class_Node3D_property_scale>` de este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visibility_parent:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **visibility_parent** = ``NodePath("")`` :ref:`🔗<class_Node3D_property_visibility_parent>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_parent**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_visibility_parent**\ (\ )

Ruta al padre del rango de visibilidad para este nodo y sus descendientes. El padre de visibilidad debe ser un :ref:`GeometryInstance3D<class_GeometryInstance3D>`.

Cualquier instancia visual solo será visible si el padre de visibilidad (y todos sus ancestros de visibilidad) está oculto por estar más cerca de la cámara que su propio :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`. Los nodos ocultos a través de la propiedad :ref:`visible<class_Node3D_property_visible>` se eliminan esencialmente del árbol de dependencias de visibilidad, por lo que las instancias dependientes no tendrán en cuenta el nodo oculto ni sus descendientes.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_Node3D_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si es ``true``, este nodo puede ser visible. El nodo solo se renderiza cuando todos sus ancestros son visibles también. Esto significa que :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>` debe devolver ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Node3D_method_add_gizmo:

.. rst-class:: classref-method

|void| **add_gizmo**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ ) :ref:`🔗<class_Node3D_method_add_gizmo>`

Adjunta el ``gizmo`` dado a este nodo. Solo funciona en el editor.

\ **Nota:** ``gizmo`` debería ser un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. El tipo de argumento es :ref:`Node3DGizmo<class_Node3DGizmo>` para evitar depender de las clases del editor en **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_gizmos:

.. rst-class:: classref-method

|void| **clear_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_clear_gizmos>`

Limpia todos los objetos :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` adjuntos a este nodo. Solo funciona en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_subgizmo_selection:

.. rst-class:: classref-method

|void| **clear_subgizmo_selection**\ (\ ) :ref:`🔗<class_Node3D_method_clear_subgizmo_selection>`

Deselecciona todos los subgizmos para este nodo. Útil para llamar cuando el subgizmo seleccionado puede que ya no exista después de un cambio de propiedad. Solo funciona en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_force_update_transform:

.. rst-class:: classref-method

|void| **force_update_transform**\ (\ ) :ref:`🔗<class_Node3D_method_force_update_transform>`

Forces the node's :ref:`global_transform<class_Node3D_property_global_transform>` to update, by sending :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`. Fails if the node is not inside the tree.

\ **Note:** For performance reasons, transform changes are usually accumulated and applied *once* at the end of the frame. The update propagates through **Node3D** children, as well. Therefore, use this method only when you need an up-to-date transform (such as during physics operations).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_gizmos:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] **get_gizmos**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_gizmos>`

Returns all the :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` objects attached to this node. Only works in the editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_global_transform_interpolated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_global_transform_interpolated**\ (\ ) :ref:`🔗<class_Node3D_method_get_global_transform_interpolated>`

When using physics interpolation, there will be circumstances in which you want to know the interpolated (displayed) transform of a node rather than the standard transform (which may only be accurate to the most recent physics tick).

This is particularly important for frame-based operations that take place in :ref:`Node._process()<class_Node_private_method__process>`, rather than :ref:`Node._physics_process()<class_Node_private_method__physics_process>`. Examples include :ref:`Camera3D<class_Camera3D>`\ s focusing on a node, or finding where to fire lasers from on a frame rather than physics tick.

\ **Note:** This function creates an interpolation pump on the **Node3D** the first time it is called, which can respond to physics interpolation resets. If you get problems with "streaking" when initially following a **Node3D**, be sure to call :ref:`get_global_transform_interpolated()<class_Node3D_method_get_global_transform_interpolated>` at least once *before* resetting the **Node3D** physics interpolation.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_parent_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_parent_node_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_parent_node_3d>`

Devuelve el **Node3D** padre que afecta directamente a la :ref:`global_transform<class_Node3D_property_global_transform>` de este nodo. Devuelve ``null`` si no existe un padre, si el padre no es un **Node3D**, o si :ref:`top_level<class_Node3D_property_top_level>` es ``true``.

\ **Nota:** Este método no siempre es equivalente a :ref:`Node.get_parent()<class_Node_method_get_parent>`, que no tiene en cuenta :ref:`top_level<class_Node3D_property_top_level>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_world_3d:

.. rst-class:: classref-method

:ref:`World3D<class_World3D>` **get_world_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_world_3d>`

Devuelve el :ref:`World3D<class_World3D>` al que está registrado este nodo.

Normalmente, este es el mismo que el mundo utilizado por el viewport de este nodo (véase :ref:`Node.get_viewport()<class_Node_method_get_viewport>` y :ref:`Viewport.find_world_3d()<class_Viewport_method_find_world_3d>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_rotate:

.. rst-class:: classref-method

|void| **global_rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_global_rotate>`

Rota la :ref:`global_basis<class_Node3D_property_global_basis>` de este nodo alrededor del ``axis`` global por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio global (relativo al mundo) y conserva la :ref:`global_position<class_Node3D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_scale:

.. rst-class:: classref-method

|void| **global_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_scale>`

Escala la :ref:`global_basis<class_Node3D_property_global_basis>` de este nodo por el factor de ``scale`` dado. Esta operación se calcula en el espacio global (relativo al mundo) y conserva la :ref:`global_position<class_Node3D_property_global_position>`.

\ **Nota:** Este método no debe confundirse con la propiedad :ref:`scale<class_Node3D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_translate>`

Añade la traslación ``offset`` dada a la :ref:`global_position<class_Node3D_property_global_position>` del nodo en el espacio global (relativo al mundo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_Node3D_method_hide>`

Prevents this node from being rendered. Equivalent to setting :ref:`visible<class_Node3D_property_visible>` to ``false``. This is the opposite of :ref:`show()<class_Node3D_method_show>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_local_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_local_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_local_transform_notification_enabled>`

Returns ``true`` if the node receives :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` whenever :ref:`transform<class_Node3D_property_transform>` changes. This is enabled with :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_scale_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_disabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_scale_disabled>`

Devuelve ``true`` si la :ref:`global_transform<class_Node3D_property_global_transform>` de este nodo se ortonormaliza automáticamente. Esto hace que este nodo no aparezca distorsionado, como si su escala global estuviera establecida en :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o su contraparte negativa). Véase también :ref:`set_disable_scale()<class_Node3D_method_set_disable_scale>` y :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Nota:** :ref:`transform<class_Node3D_property_transform>` no se ve afectada por esta configuración.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_transform_notification_enabled>`

Devuelve ``true`` si el nodo recibe :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` cada vez que :ref:`global_transform<class_Node3D_property_global_transform>` cambia. Esto se habilita con :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_visible_in_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible_in_tree**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_visible_in_tree>`

Devuelve ``true`` si este nodo está dentro del árbol de escenas y si la propiedad :ref:`visible<class_Node3D_property_visible>` es ``true`` para este nodo y todos sus ancestros **Node3D** *en secuencia*. Un ancestro de cualquier otro tipo (como :ref:`Node<class_Node>` o :ref:`Node2D<class_Node2D>`) rompe la secuencia. Véase también :ref:`Node.get_parent()<class_Node_method_get_parent>`.

\ **Nota:** Este método no puede tener en cuenta :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`, por lo que incluso si este método devuelve ``true``, es posible que el nodo no se renderice.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at>`

Rota el nodo de forma que el eje frontal local (-Z, :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>`) apunte hacia la posición ``target``. Esta operación se calcula en el espacio global (relativo al mundo).

El eje local hacia arriba (+Y) apunta lo más cerca posible al vector ``up``, manteniéndose perpendicular al eje frontal local. La transformación resultante es ortogonal y la escala se conserva. El escalado no uniforme puede no funcionar correctamente.

La posición ``target`` no puede ser la misma que la posición del nodo, el vector ``up`` no puede ser :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`. Además, la dirección desde la posición del nodo a la posición ``target`` no puede ser paralela al vector ``up``, para evitar una rotación no deseada alrededor del eje Z local.

Si ``use_model_front`` es ``true``, el eje +Z (frontal del activo) se trata como frontal (implica que +X es la izquierda) y apunta hacia la posición ``target``. Por defecto, el eje -Z (frontal de la cámara) se trata como frontal (implica que +X es la derecha).

\ **Nota:** Este método falla si el nodo no está en el árbol de escenas. Si es necesario, usa :ref:`look_at_from_position()<class_Node3D_method_look_at_from_position>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at_from_position:

.. rst-class:: classref-method

|void| **look_at_from_position**\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at_from_position>`

Mueve el nodo a la ``position`` especificada y luego rota el nodo para que apunte hacia la posición ``target``, similar a :ref:`look_at()<class_Node3D_method_look_at>`. Esta operación se calcula en el espacio global (relativo al mundo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_orthonormalize:

.. rst-class:: classref-method

|void| **orthonormalize**\ (\ ) :ref:`🔗<class_Node3D_method_orthonormalize>`

Ortonormaliza la :ref:`basis<class_Node3D_property_basis>` de este nodo. Este método establece la :ref:`scale<class_Node3D_property_scale>` de este nodo a :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o su contraparte negativa), pero conserva la :ref:`position<class_Node3D_property_position>` y la :ref:`rotation<class_Node3D_property_rotation>`. Véase también :ref:`Transform3D.orthonormalized()<class_Transform3D_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate>`

Rota la :ref:`basis<class_Node3D_property_basis>` de este nodo alrededor del ``axis`` por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio padre (relativo al padre) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_object_local:

.. rst-class:: classref-method

|void| **rotate_object_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_object_local>`

Rota la :ref:`basis<class_Node3D_property_basis>` de este nodo alrededor del ``axis`` por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio local (relativo a este nodo) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_x:

.. rst-class:: classref-method

|void| **rotate_x**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_x>`

Rota la :ref:`basis<class_Node3D_property_basis>` de este nodo alrededor del eje X por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio padre (relativo al padre) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_y:

.. rst-class:: classref-method

|void| **rotate_y**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_y>`

Rota la :ref:`basis<class_Node3D_property_basis>` de este nodo alrededor del eje Y por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio padre (relativo al padre) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_z:

.. rst-class:: classref-method

|void| **rotate_z**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_z>`

Rota la :ref:`basis<class_Node3D_property_basis>` de este nodo alrededor del eje Z por el ``angle`` dado, en radianes. Esta operación se calcula en el espacio padre (relativo al padre) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_scale_object_local:

.. rst-class:: classref-method

|void| **scale_object_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_scale_object_local>`

Escala la :ref:`basis<class_Node3D_property_basis>` de este nodo por el factor de ``scale`` dado. Esta operación se calcula en el espacio local (relativo a este nodo) y conserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_disable_scale:

.. rst-class:: classref-method

|void| **set_disable_scale**\ (\ disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_disable_scale>`

Si es ``true``, la :ref:`global_transform<class_Node3D_property_global_transform>` de este nodo se ortonormaliza automáticamente. Esto hace que este nodo no aparezca distorsionado, como si su escala global estuviera establecida en :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o su contraparte negativa). Véase también :ref:`is_scale_disabled()<class_Node3D_method_is_scale_disabled>` y :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Nota:** :ref:`transform<class_Node3D_property_transform>` no se ve afectada por esta configuración.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_identity:

.. rst-class:: classref-method

|void| **set_identity**\ (\ ) :ref:`🔗<class_Node3D_method_set_identity>`

Establece la :ref:`transform<class_Node3D_property_transform>` de este nodo a :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`, lo que restablece todas las transformaciones en el espacio padre (:ref:`position<class_Node3D_property_position>`, :ref:`rotation<class_Node3D_property_rotation>` y :ref:`scale<class_Node3D_property_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_ignore_transform_notification:

.. rst-class:: classref-method

|void| **set_ignore_transform_notification**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_ignore_transform_notification>`

Si es ``true``, el nodo no recibirá :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` ni :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`.

Puede ser útil llamar a este método al manejar estas notificaciones para evitar la recursión infinita.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_local_transform:

.. rst-class:: classref-method

|void| **set_notify_local_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_local_transform>`

Si es ``true``, el nodo recibirá :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` cada vez que cambie :ref:`transform<class_Node3D_property_transform>`.

\ **Nota:** Algunos nodos 3D, como :ref:`CSGShape3D<class_CSGShape3D>` o :ref:`CollisionShape3D<class_CollisionShape3D>`, habilitan esto automáticamente para que funcionen correctamente.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_transform:

.. rst-class:: classref-method

|void| **set_notify_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_transform>`

Si es ``true``, el nodo recibirá :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` cada vez que :ref:`global_transform<class_Node3D_property_global_transform>` cambie.

\ **Nota:** La mayoría de los nodos 3D como :ref:`VisualInstance3D<class_VisualInstance3D>` o :ref:`CollisionObject3D<class_CollisionObject3D>` habilitan esto automáticamente para que funcionen correctamente.

\ **Nota:** En el editor, los nodos propagarán esta notificación a sus hijos si se adjunta un gizmo (véase :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_subgizmo_selection:

.. rst-class:: classref-method

|void| **set_subgizmo_selection**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Node3D_method_set_subgizmo_selection>`

Selecciona el subgizmo del ``gizmo`` con el ``id`` dado y establece su transformación. Solo funciona en el editor.

\ **Nota:** El objeto gizmo normalmente sería una instancia de :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, pero el tipo de argumento se mantiene genérico para evitar crear una dependencia de las clases del editor en **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_Node3D_method_show>`

Permite que este nodo se renderice. Equivalente a establecer :ref:`visible<class_Node3D_property_visible>` como ``true``. Esto es lo opuesto a :ref:`hide()<class_Node3D_method_hide>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_global**\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_global>`

Devuelve el ``local_point`` convertido del espacio local de este nodo al espacio global. Esto es lo opuesto a :ref:`to_local()<class_Node3D_method_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_local**\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_local>`

Devuelve el ``global_point`` convertido del espacio global al espacio local de este nodo. Esto es lo opuesto a :ref:`to_global()<class_Node3D_method_to_global>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate>`

Adds the given translation ``offset`` to the node's position, in local space (relative to this node).

\ **Note:** Prefer using :ref:`translate_object_local()<class_Node3D_method_translate_object_local>`, instead, as this method may be changed in a future release.

\ **Note:** Despite the naming convention, this operation is **not** calculated in parent space for compatibility reasons. To translate in parent space, add ``offset`` to the :ref:`position<class_Node3D_property_position>` (``node_3d.position += offset``).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate_object_local:

.. rst-class:: classref-method

|void| **translate_object_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate_object_local>`

Añade la traslación ``offset`` dada a la posición del nodo, en el espacio local (relativo a este nodo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_update_gizmos:

.. rst-class:: classref-method

|void| **update_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_update_gizmos>`

Actualiza todos los objetos :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` adjuntos a este nodo. Solo funciona en el editor.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
