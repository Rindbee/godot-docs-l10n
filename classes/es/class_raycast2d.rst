:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un rayo en el espacio 2D, utilizado para encontrar el primer objeto de colisión que interseca.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A raycast represents a ray from its origin to its :ref:`target_position<class_RayCast2D_property_target_position>` that finds the closest object along its path, if it intersects any.

\ **RayCast2D** can ignore some objects by adding them to an exception list, by making its detection reporting ignore :ref:`Area2D<class_Area2D>`\ s (:ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`) or :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s (:ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`), or by configuring physics layers.

\ **RayCast2D** calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a **RayCast2D** multiple times within the same physics frame, use :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`.

To sweep over a region of 2D space, you can approximate the region with multiple **RayCast2D**\ s or use :ref:`ShapeCast2D<class_ShapeCast2D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Ray casting <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>`         | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_RayCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast2D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast2D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast2D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast2D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_RayCast2D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_RayCast2D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si es ``true``, se informará de las colisiones con :ref:`Area2D<class_Area2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si es ``true``, se informará de las colisiones con :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La máscara de colisión del rayo. Solo se detectarán los objetos en al menos una capa de colisión habilitada en la máscara. Véase `Capas y máscaras de colisión <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ en la documentación para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``true``, se informará de las colisiones.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Si es ``true``, este raycast no informará de las colisiones con su nodo padre. Esta propiedad solo tiene efecto si el nodo padre es un :ref:`CollisionObject2D<class_CollisionObject2D>`. Véase también :ref:`Node.get_parent()<class_Node_method_get_parent>` y :ref:`add_exception()<class_RayCast2D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Si es ``true``, el rayo detectará un impacto cuando comience dentro de las formas. En este caso, la normal de colisión será ``Vector2(0, 0)``. No afecta a las formas de polígono cóncavas.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

El punto de destino del rayo, relativo a la :ref:`Node2D.position<class_Node2D_property_position>` de este raycast.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

Añade una excepción de colisión para que el rayo no reporte colisiones con el ``node`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

Añade una excepción de colisión para que el rayo no reporte colisiones con el :ref:`RID<class_RID>` especificado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

Elimina todas las excepciones de colisión para este rayo.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

Actualiza la información de colisión del rayo inmediatamente, sin esperar a la siguiente llamada a ``_physics_process``. Usa este método, por ejemplo, cuando el rayo o su padre han cambiado de estado.

\ **Nota:** No es necesario que :ref:`enabled<class_RayCast2D_property_enabled>` sea ``true`` para que esto funcione.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

Devuelve el primer objeto que el rayo interseca, o ``null`` si no hay ningún objeto que interseca el rayo (es decir, :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` devuelve ``false``).

\ **Nota:** No se garantiza que este objeto sea un :ref:`CollisionObject2D<class_CollisionObject2D>`. Por ejemplo, si el rayo interseca un :ref:`TileMapLayer<class_TileMapLayer>`, el método devolverá una instancia de :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

Devuelve el :ref:`RID<class_RID>` del primer objeto que el rayo interseca, o un :ref:`RID<class_RID>` vacío si ningún objeto interseca el rayo (es decir, :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` devuelve ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

Returns the shape ID of the first object that the ray intersects, or ``0`` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` returns ``false``).

To get the intersected shape node, for a :ref:`CollisionObject2D<class_CollisionObject2D>` target, use:


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # A CollisionObject2D.
    var shape_id = get_collider_shape() # The shape index in the collider.
    var owner_id = target.shape_find_owner(shape_id) # The owner ID in the collider.
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject2D)GetCollider(); // A CollisionObject2D.
    var shapeId = GetColliderShape(); // The shape index in the collider.
    var ownerId = target.ShapeFindOwner(shapeId); // The owner ID in the collider.
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_RayCast2D_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

Devuelve la normal de la forma del objeto que interseca en el punto de colisión, o ``Vector2(0, 0)`` si el rayo comienza dentro de la forma y :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` es ``true``.

\ **Nota:** Comprueba que :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` devuelve ``true`` antes de llamar a este método para asegurarte de que la normal devuelta es válida y está actualizada.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

Devuelve el punto de colisión en el que el rayo interseca el objeto más cercano, en el sistema de coordenadas global. Si :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` es ``true`` y el rayo comienza dentro de una forma de colisión, esta función devolverá el punto de origen del rayo.

\ **Nota:** Comprueba que :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` devuelve ``true`` antes de llamar a este método para asegurarte de que el punto devuelto es válido y está actualizado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

Devuelve si algún objeto se cruza con el vector del rayo (considerando la longitud del vector).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

Elimina una excepción de colisión para que el rayo pueda informar de colisiones con el ``node`` especificado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

Elimina una excepción de colisión para que el rayo pueda informar de colisiones con el :ref:`RID<class_RID>` especificado.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_mask<class_RayCast2D_property_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
