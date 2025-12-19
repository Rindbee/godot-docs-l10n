:github_url: hide

.. _class_PhysicsBody3D:

PhysicsBody3D
=============

**Hereda:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CharacterBody3D<class_CharacterBody3D>`, :ref:`PhysicalBone3D<class_PhysicalBone3D>`, :ref:`RigidBody3D<class_RigidBody3D>`, :ref:`StaticBody3D<class_StaticBody3D>`

Clase base abstracta para los objetos de juego 3D afectados por la física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PhysicsBody3D** es una clase base abstracta para los objetos de juego 3D afectados por la física. Todos los cuerpos físicos 3D heredan de ella.

\ **Advertencia:** Con una escala no uniforme, este nodo probablemente no se comportará como se espera. Se aconseja mantener su escala igual en todos los ejes y ajustar sus formas de colisión en su lugar.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Solución de problemas de física <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_x<class_PhysicsBody3D_property_axis_lock_angular_x>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_y<class_PhysicsBody3D_property_axis_lock_angular_y>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_z<class_PhysicsBody3D_property_axis_lock_angular_z>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_x<class_PhysicsBody3D_property_axis_lock_linear_x>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_y<class_PhysicsBody3D_property_axis_lock_linear_y>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_z<class_PhysicsBody3D_property_axis_lock_linear_z>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_axis_lock<class_PhysicsBody3D_method_get_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                                                                           |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_gravity<class_PhysicsBody3D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>`                | :ref:`move_and_collide<class_PhysicsBody3D_method_move_and_collide>`\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ )                                                                |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_axis_lock<class_PhysicsBody3D_method_set_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                          |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody3D_method_test_move>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsBody3D_property_axis_lock_angular_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquea la rotación del cuerpo en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquea la rotación del cuerpo en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquea la rotación del cuerpo en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquear el movimiento lineal del cuerpo en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquear el movimiento lineal del cuerpo en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Bloquear el movimiento lineal del cuerpo en el eje Z.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_add_collision_exception_with>`

Añade un cuerpo a la lista de cuerpos con los que este cuerpo no puede colisionar.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_axis_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_axis_lock>`

Devuelve ``true`` si el ``axis`` lineal o rotacional especificado está bloqueado.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody3D_method_get_collision_exceptions>`

Devuelve un conjunto de nodos que se añadieron como excepciones de colisión para este cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_gravity>`

Devuelve el vector de gravedad calculado a partir de todas las fuentes que pueden afectar al cuerpo, incluyendo todas las anulaciones de gravedad de los nodos :ref:`Area3D<class_Area3D>` y la gravedad global del mundo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **move_and_collide**\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_move_and_collide>`

Mueve el cuerpo a lo largo del vector ``motion``. Para que sea independiente de la velocidad de fotogramas en :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` debe calcularse utilizando ``delta``.

El cuerpo se detendrá si colisiona. Devuelve un :ref:`KinematicCollision3D<class_KinematicCollision3D>`, que contiene información sobre la colisión cuando se detiene, o cuando toca otro cuerpo a lo largo del movimiento.

Si ``test_only`` es ``true``, el cuerpo no se mueve pero se da la información de la posible colisión.

\ ``safe_margin`` es el margen extra utilizado para la recuperación de la colisión (ver :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` para más detalles).

Si ``recovery_as_collision`` es ``true``, cualquier despenetración de la fase de recuperación también se notifica como una colisión; esto es utilizado por ejemplo por :ref:`CharacterBody3D<class_CharacterBody3D>` para mejorar la detección del suelo durante el ajuste al suelo.

\ ``max_collisions`` permite recuperar más de un resultado de colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_remove_collision_exception_with>`

Quita un cuerpo de la lista de cuerpos con los que este cuerpo no puede colisionar.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_set_axis_lock:

.. rst-class:: classref-method

|void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PhysicsBody3D_method_set_axis_lock>`

Bloquea o desbloquea el ``axis`` lineal o rotacional especificado según el valor de ``lock``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_test_move>`

Comprueba las colisiones sin mover el cuerpo. Para que sea independiente de la velocidad de fotogramas en :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` debe calcularse utilizando ``delta``.

Establece virtualmente la posición, escala y rotación del nodo a la del :ref:`Transform3D<class_Transform3D>` dado, luego intenta mover el cuerpo a lo largo del vector ``motion``. Devuelve ``true`` si una colisión impediría que el cuerpo se moviera a lo largo de todo el trayecto.

\ ``collision`` es un objeto opcional de tipo :ref:`KinematicCollision3D<class_KinematicCollision3D>`, que contiene información adicional sobre la colisión cuando se detiene, o cuando toca otro cuerpo a lo largo del movimiento.

\ ``safe_margin`` es el margen extra utilizado para la recuperación de la colisión (ver :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` para más detalles).

Si ``recovery_as_collision`` es ``true``, cualquier despenetración de la fase de recuperación también se notifica como una colisión; esto es útil para comprobar si el cuerpo *tocaría* algún otro cuerpo.

\ ``max_collisions`` permite recuperar más de un resultado de colisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
