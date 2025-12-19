:github_url: hide

.. _class_PhysicsTestMotionParameters3D:

PhysicsTestMotionParameters3D
=============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona parámetros para :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Cambiando varias propiedades de este objeto, como el movimiento, puedes configurar los parámetros para :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_separation_ray<class_PhysicsTestMotionParameters3D_property_collide_separation_ray>` | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude_bodies<class_PhysicsTestMotionParameters3D_property_exclude_bodies>`                 | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] | :ref:`exclude_objects<class_PhysicsTestMotionParameters3D_property_exclude_objects>`               | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`              | :ref:`from<class_PhysicsTestMotionParameters3D_property_from>`                                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsTestMotionParameters3D_property_margin>`                                 | ``0.001``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                              | :ref:`max_collisions<class_PhysicsTestMotionParameters3D_property_max_collisions>`                 | ``1``                                               |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`motion<class_PhysicsTestMotionParameters3D_property_motion>`                                 | ``Vector3(0, 0, 0)``                                |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`recovery_as_collision<class_PhysicsTestMotionParameters3D_property_recovery_as_collision>`   | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsTestMotionParameters3D_property_collide_separation_ray:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_separation_ray** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_collide_separation_ray>`

.. rst-class:: classref-property-setget

- |void| **set_collide_separation_ray_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_separation_ray_enabled**\ (\ )

Si se establece en ``true``, las formas de tipo :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` se utilizan para detectar colisiones y pueden detener el movimiento. Puede ser útil al ajustarse al suelo.

Si se establece en ``false``, las formas de tipo :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` solo se utilizan para la separación cuando se superponen con otros cuerpos. Ese es el principal uso para las formas de rayo de separación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_bodies:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude_bodies** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_bodies**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude_bodies**\ (\ )

Array opcional de :ref:`RID<class_RID>` del cuerpo a excluir de la colisión. Utiliza :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo derivado de :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_objects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **exclude_objects** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_objects>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_objects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_exclude_objects**\ (\ )

Array opcional de los ID de instancia únicas de objetos para excluir de la colisión. Véase :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_from:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **from** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_from**\ (\ )

Transformación en el espacio global donde debería comenzar el movimiento. Normalmente se establece en :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` para la transformación del cuerpo actual.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.001`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Aumenta el tamaño de las formas involucradas en la detección de colisiones.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_max_collisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_collisions** = ``1`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_max_collisions>`

.. rst-class:: classref-property-setget

- |void| **set_max_collisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_collisions**\ (\ )

Número máximo de colisiones devueltas, entre ``1`` y ``32``. Siempre devuelve las colisiones detectadas más profundas.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_motion:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **motion** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_motion**\ (\ )

Vector de movimiento para definir la longitud y la dirección del movimiento a probar.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_recovery_as_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recovery_as_collision** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_recovery_as_collision>`

.. rst-class:: classref-property-setget

- |void| **set_recovery_as_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recovery_as_collision_enabled**\ (\ )

Si se establece en ``true``, cualquier despenetración de la fase de recuperación se notifica como una colisión; esto lo utiliza, por ejemplo, :ref:`CharacterBody3D<class_CharacterBody3D>` para mejorar la detección del suelo durante el ajuste al suelo.

Si se establece en ``false``, solo se informan las colisiones resultantes del movimiento, que generalmente es el comportamiento deseado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
