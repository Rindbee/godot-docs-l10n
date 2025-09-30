:github_url: hide

.. _class_RayCast3D:

RayCast3D
=========

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A ray in 3D space, used to find the first collision object it intersects.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A raycast represents a ray from its origin to its :ref:`target_position<class_RayCast3D_property_target_position>` that finds the closest object along its path, if it intersects any.

\ **RayCast3D** can ignore some objects by adding them to an exception list, by making its detection reporting ignore :ref:`Area3D<class_Area3D>`\ s (:ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`) or :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s (:ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`), or by configuring physics layers.

\ **RayCast3D** calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a **RayCast3D** multiple times within the same physics frame, use :ref:`force_raycast_update()<class_RayCast3D_method_force_raycast_update>`.

To sweep over a region of 3D space, you can approximate the region with multiple **RayCast3D**\ s or use :ref:`ShapeCast3D<class_ShapeCast3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Ray casting <../tutorials/physics/ray-casting>`

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RayCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

If ``true``, collisions with :ref:`Area3D<class_Area3D>`\ s will be reported.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

If ``true``, collisions with :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s will be reported.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RayCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

The custom color to use to draw the shape in the editor and at run-time if **Visible Collision Shapes** is enabled in the **Debug** menu. This color will be highlighted at run-time if the **RayCast3D** is colliding with something.

If set to ``Color(0.0, 0.0, 0.0)`` (by default), the color set in :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>` is used.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug_shape_thickness** = ``2`` :ref:`🔗<class_RayCast3D_property_debug_shape_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_debug_shape_thickness**\ (\ )

If set to ``1``, a line is used as the debug shape. Otherwise, a truncated pyramid is drawn to represent the **RayCast3D**. Requires **Visible Collision Shapes** to be enabled in the **Debug** menu for the debug shape to be visible at run-time.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``true``, se informará de las colisiones.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

If ``true``, this raycast will not report collisions with its parent node. This property only has an effect if the parent node is a :ref:`CollisionObject3D<class_CollisionObject3D>`. See also :ref:`Node.get_parent()<class_Node_method_get_parent>` and :ref:`add_exception()<class_RayCast3D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_back_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_back_faces** = ``true`` :ref:`🔗<class_RayCast3D_property_hit_back_faces>`

.. rst-class:: classref-property-setget

- |void| **set_hit_back_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_back_faces_enabled**\ (\ )

If ``true``, the ray will hit back faces with concave polygon shapes with back face enabled or heightmap shapes.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast3D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

If ``true``, the ray will detect a hit when starting inside shapes. In this case the collision normal will be ``Vector3(0, 0, 0)``. Does not affect shapes with no volume like concave polygon or heightmap.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_RayCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

The ray's destination point, relative to this raycast's :ref:`Node3D.position<class_Node3D_property_position>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RayCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception>`

Adds a collision exception so the ray does not report collisions with the specified ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception_rid>`

Añade una excepción de colisión para que el rayo no reporte colisiones con el :ref:`RID<class_RID>` especificado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast3D_method_clear_exceptions>`

Elimina todas las excepciones de colisión para este rayo.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast3D_method_force_raycast_update>`

Updates the collision information for the ray immediately, without waiting for the next ``_physics_process`` call. Use this method, for example, when the ray or its parent has changed state.

\ **Note:** :ref:`enabled<class_RayCast3D_property_enabled>` does not need to be ``true`` for this to work.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider>`

Returns the first object that the ray intersects, or ``null`` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` returns ``false``).

\ **Note:** This object is not guaranteed to be a :ref:`CollisionObject3D<class_CollisionObject3D>`. For example, if the ray intersects a :ref:`CSGShape3D<class_CSGShape3D>` or a :ref:`GridMap<class_GridMap>`, the method will return a :ref:`CSGShape3D<class_CSGShape3D>` or :ref:`GridMap<class_GridMap>` instance.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_rid>`

Returns the :ref:`RID<class_RID>` of the first object that the ray intersects, or an empty :ref:`RID<class_RID>` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` returns ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_shape>`

Returns the shape ID of the first object that the ray intersects, or ``0`` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` returns ``false``).

To get the intersected shape node, for a :ref:`CollisionObject3D<class_CollisionObject3D>` target, use:


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # A CollisionObject3D.
    var shape_id = get_collider_shape() # The shape index in the collider.
    var owner_id = target.shape_find_owner(shape_id) # The owner ID in the collider.
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject3D)GetCollider(); // A CollisionObject3D.
    var shapeId = GetColliderShape(); // The shape index in the collider.
    var ownerId = target.ShapeFindOwner(shapeId); // The owner ID in the collider.
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_face_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_face_index**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_face_index>`

Returns the collision object's face index at the collision point, or ``-1`` if the shape intersecting the ray is not a :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_mask_value>`

Returns whether or not the specified layer of the :ref:`collision_mask<class_RayCast3D_property_collision_mask>` is enabled, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_normal>`

Returns the normal of the intersecting object's shape at the collision point, or ``Vector3(0, 0, 0)`` if the ray starts inside the shape and :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` is ``true``.

\ **Note:** Check that :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` returns ``true`` before calling this method to ensure the returned normal is valid and up-to-date.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_point>`

Returns the collision point at which the ray intersects the closest object, in the global coordinate system. If :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` is ``true`` and the ray starts inside of a collision shape, this function will return the origin point of the ray.

\ **Note:** Check that :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` returns ``true`` before calling this method to ensure the returned point is valid and up-to-date.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_is_colliding>`

Devuelve si algún objeto se cruza con el vector del rayo (considerando la longitud del vector).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception>`

Removes a collision exception so the ray can report collisions with the specified ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception_rid>`

Removes a collision exception so the ray can report collisions with the specified :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast3D_method_set_collision_mask_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`collision_mask<class_RayCast3D_property_collision_mask>`, given a ``layer_number`` between 1 and 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
