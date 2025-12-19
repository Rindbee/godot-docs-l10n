:github_url: hide

.. _class_PhysicsDirectBodyState3D:

PhysicsDirectBodyState3D
========================

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`PhysicsDirectBodyState3DExtension<class_PhysicsDirectBodyState3DExtension>`

Proporciona acceso directo a un cuerpo físico en el :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Proporciona acceso directo a un cuerpo físico en el :ref:`PhysicsServer3D<class_PhysicsServer3D>`, permitiendo cambios seguros en las propiedades físicas. Este objeto se pasa a través de la retrollamada de estado directo de :ref:`RigidBody3D<class_RigidBody3D>`, y está destinado a cambiar el estado directo de ese cuerpo. Véase :ref:`RigidBody3D._integrate_forces()<class_RigidBody3D_private_method__integrate_forces>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Ray casting <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`angular_velocity<class_PhysicsDirectBodyState3D_property_angular_velocity>`             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass<class_PhysicsDirectBodyState3D_property_center_of_mass>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass_local<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_layer<class_PhysicsDirectBodyState3D_property_collision_layer>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_mask<class_PhysicsDirectBodyState3D_property_collision_mask>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`inverse_inertia_tensor<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_mass<class_PhysicsDirectBodyState3D_property_inverse_mass>`                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`linear_velocity<class_PhysicsDirectBodyState3D_property_linear_velocity>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`principal_inertia_axes<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`sleeping<class_PhysicsDirectBodyState3D_property_sleeping>`                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`step<class_PhysicsDirectBodyState3D_property_step>`                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_angular_damp<class_PhysicsDirectBodyState3D_property_total_angular_damp>`         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`total_gravity<class_PhysicsDirectBodyState3D_property_total_gravity>`                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_linear_damp<class_PhysicsDirectBodyState3D_property_total_linear_damp>`           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`transform<class_PhysicsDirectBodyState3D_property_transform>`                           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_central_force<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_force<class_PhysicsDirectBodyState3D_method_add_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_torque<class_PhysicsDirectBodyState3D_method_add_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_force<class_PhysicsDirectBodyState3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_impulse<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                   |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_force<class_PhysicsDirectBodyState3D_method_apply_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_impulse<class_PhysicsDirectBodyState3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque<class_PhysicsDirectBodyState3D_method_apply_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque_impulse<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_force<class_PhysicsDirectBodyState3D_method_get_constant_force>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_torque<class_PhysicsDirectBodyState3D_method_get_constant_torque>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`get_contact_collider<class_PhysicsDirectBodyState3D_method_get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                    |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_id<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`get_contact_collider_object<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_shape<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|          |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_count<class_PhysicsDirectBodyState3D_method_get_contact_count>`\ (\ ) |const|                                                                                               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_impulse<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_normal<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_position<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_local_shape<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`get_space_state<class_PhysicsDirectBodyState3D_method_get_space_state>`\ (\ )                                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_velocity_at_local_position<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`integrate_forces<class_PhysicsDirectBodyState3D_method_integrate_forces>`\ (\ )                                                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_force<class_PhysicsDirectBodyState3D_method_set_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_torque<class_PhysicsDirectBodyState3D_method_set_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsDirectBodyState3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

La velocidad de rotación del cuerpo en *radianes* por segundo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

La posición del centro de masa del cuerpo relativa al centro del cuerpo en el sistema de coordenadas global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass_local**\ (\ )

Posición del centro de masa del cuerpo en el sistema de coordenadas local del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

La capa de colisión del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La máscara de colisión del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_inverse_inertia**\ (\ )

El inverso de la inercia del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inverse_inertia_tensor** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_inverse_inertia_tensor**\ (\ )

El inverso del tensor de inercia del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

El inverso de la masa del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

La velocidad lineal del cuerpo en unidades por segundo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_principal_inertia_axes:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **principal_inertia_axes** :ref:`🔗<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_principal_inertia_axes**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState3D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Si es ``true``, este cuerpo está actualmente durmiendo (no está activo).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState3D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

El paso temporal (delta) utilizado para la simulación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

La velocidad a la que el cuerpo deja de girar, si no hay otras fuerzas que lo muevan.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_total_gravity**\ (\ )

El vector de gravedad total que se aplica actualmente a este cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

La velocidad a la que el cuerpo deja de moverse, si no hay otras fuerzas que lo muevan.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La matriz de transformación del cuerpo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsDirectBodyState3D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`

Añade una fuerza direccional constante sin afectar la rotación que se aplica continuamente hasta que se elimina con ``constant_force = Vector3(0, 0, 0)``.

Esto es equivalente a usar :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` en el centro de masa del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_force>`

Añade una fuerza posicionada constante al cuerpo que se aplica continuamente hasta que se elimina con ``constant_force = Vector3(0, 0, 0)``.

\ ``position`` es el desplazamiento desde el origen del cuerpo en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_torque>`

Añade una fuerza rotacional constante sin afectar la posición, que se aplica continuamente hasta que se elimina con ``constant_torque = Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_force>`

Aplica una fuerza direccional sin afectar la rotación. Una fuerza depende del tiempo y está pensada para ser aplicada en cada actualización de la física.

Esto es equivalente a usar :ref:`apply_force()<class_PhysicsDirectBodyState3D_method_apply_force>` en el centro de masa del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`

Aplica un impulso direccional sin afectar la rotación.

¡Un impulso es independiente del tiempo! Aplicar un impulso en cada fotograma resultaría en una fuerza dependiente de la velocidad de fotogramas. Por esta razón, solo debe usarse al simular impactos únicos (usa las funciones "_force" en su lugar).

Esto es equivalente a usar :ref:`apply_impulse()<class_PhysicsDirectBodyState3D_method_apply_impulse>` en el centro de masa del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_force>`

Aplica una fuerza posicionada al cuerpo. Una fuerza depende del tiempo y está pensada para ser aplicada en cada actualización de la física.

\ ``position`` es el desplazamiento desde el origen del cuerpo en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_impulse>`

Aplica un impulso posicionado al cuerpo.

¡Un impulso es independiente del tiempo! Aplicar un impulso en cada fotograma resultaría en una fuerza dependiente de la velocidad de fotogramas. Por esta razón, solo debe usarse al simular impactos únicos (usa las funciones "_force" en su lugar).

\ ``position`` es el desplazamiento desde el origen del cuerpo en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque>`

Aplica una fuerza rotacional sin afectar la posición. Una fuerza depende del tiempo y está destinada a ser aplicada en cada actualización de la física.

\ **Nota:** Se requiere :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>` para que esto funcione. Para tener :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`, una :ref:`CollisionShape3D<class_CollisionShape3D>` activa debe ser hija del nodo, o puedes establecer manualmente :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`

Applies a rotational impulse to the body without affecting the position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).

\ **Note:** :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>` is required for this to work. To have :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`, an active :ref:`CollisionShape3D<class_CollisionShape3D>` must be a child of the node, or you can manually set :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_force>`

Devuelve las fuerzas posicionales constantes totales del cuerpo aplicadas durante cada actualización de la física.

Véase :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` y :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_torque>`

Devuelve las fuerzas rotacionales constantes totales del cuerpo aplicadas durante cada actualización de la física.

Véase :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider>`

Devuelve el :ref:`RID<class_RID>` del colisionador.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`

Devuelve la identificación del objeto del colisionador.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`

Devuelve el objeto del colisionador.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`

Devuelve la posición del punto de contacto en el colisionador en el sistema de coordenadas global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`

Devuelve el índice de forma del colisionador.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`

Devuelve el vector de velocidad lineal en el punto de contacto del colisionador.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_count>`

Devuelve el número de contactos que este cuerpo tiene con otros cuerpos.

\ **Nota:** Por defecto, esto devuelve 0 a menos que los cuerpos estén configurados para monitorear los contactos. Véase :ref:`RigidBody3D.contact_monitor<class_RigidBody3D_property_contact_monitor>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`

Impulso creado por el contacto.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`

Devuelve la normalidad local en el punto de contacto.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`

Devuelve la posición del punto de contacto en el cuerpo en el sistema de coordenadas global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`

Devuelve el índice de forma local de la colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`

Devuelve el vector de velocidad lineal en el punto de contacto del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_space_state>`

Devuelve el estado actual del espacio, útil para las consultas.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`

Devuelve la velocidad del cuerpo en la posición relativa dada, incluyendo la traslación y la rotación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_integrate_forces>`

Updates the body's linear and angular velocity by applying gravity and damping for the equivalent of one physics tick.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_force>`

Establece las fuerzas posicionales constantes totales del cuerpo aplicadas durante cada actualización de la física.

Véase :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` y :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_torque>`

Establece las fuerzas rotacionales constantes totales del cuerpo aplicadas durante cada actualización de la física.

Véase :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
