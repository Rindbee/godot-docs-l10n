:github_url: hide

.. _class_Node2D:

Node2D
======

**Hereda:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, :ref:`AudioListener2D<class_AudioListener2D>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`, :ref:`BackBufferCopy<class_BackBufferCopy>`, :ref:`Bone2D<class_Bone2D>`, :ref:`Camera2D<class_Camera2D>`, :ref:`CanvasGroup<class_CanvasGroup>`, :ref:`CanvasModulate<class_CanvasModulate>`, :ref:`CollisionObject2D<class_CollisionObject2D>`, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, :ref:`CollisionShape2D<class_CollisionShape2D>`, :ref:`CPUParticles2D<class_CPUParticles2D>`, :ref:`GPUParticles2D<class_GPUParticles2D>`, :ref:`Joint2D<class_Joint2D>`, :ref:`Light2D<class_Light2D>`, :ref:`LightOccluder2D<class_LightOccluder2D>`, :ref:`Line2D<class_Line2D>`, :ref:`Marker2D<class_Marker2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`, :ref:`NavigationLink2D<class_NavigationLink2D>`, :ref:`NavigationObstacle2D<class_NavigationObstacle2D>`, :ref:`NavigationRegion2D<class_NavigationRegion2D>`, :ref:`Parallax2D<class_Parallax2D>`, :ref:`ParallaxLayer<class_ParallaxLayer>`, :ref:`Path2D<class_Path2D>`, :ref:`PathFollow2D<class_PathFollow2D>`, :ref:`Polygon2D<class_Polygon2D>`, :ref:`RayCast2D<class_RayCast2D>`, :ref:`RemoteTransform2D<class_RemoteTransform2D>`, :ref:`ShapeCast2D<class_ShapeCast2D>`, :ref:`Skeleton2D<class_Skeleton2D>`, :ref:`Sprite2D<class_Sprite2D>`, :ref:`TileMap<class_TileMap>`, :ref:`TileMapLayer<class_TileMapLayer>`, :ref:`TouchScreenButton<class_TouchScreenButton>`, :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>`

A 2D game object, inherited by all 2D-related nodes. Has a position, rotation, scale, and skew.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un objeto de juego 2D, con una transformación (posición, rotación y escala). Todos los nodos 2D, incluyendo los objetos de física y los sprites, heredan de Node2D. Utiliza Node2D como nodo padre para mover, escalar y rotar a los hijos en un proyecto 2D. También da control del orden de renderizado del nodo.

\ **Nota:** Ya que tanto **Node2D** como :ref:`Control<class_Control>` heredan de :ref:`CanvasItem<class_CanvasItem>`, comparten varios conceptos de la clase, como las propiedades :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` y :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Dibujo personalizado en 2D <../tutorials/2d/custom_drawing_in_2d>`

- `Todos los Demos 2D <https://github.com/godotengine/godot-demo-projects/tree/master/2d>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_position<class_Node2D_property_global_position>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation<class_Node2D_property_global_rotation>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>` |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_scale<class_Node2D_property_global_scale>`                       |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_skew<class_Node2D_property_global_skew>`                         |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`global_transform<class_Node2D_property_global_transform>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`position<class_Node2D_property_position>`                               | ``Vector2(0, 0)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_Node2D_property_rotation>`                               | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_Node2D_property_scale>`                                     | ``Vector2(1, 1)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`skew<class_Node2D_property_skew>`                                       | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_Node2D_property_transform>`                             |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_scale<class_Node2D_method_apply_scale>`\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_angle_to<class_Node2D_method_get_angle_to>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_relative_transform_to_parent<class_Node2D_method_get_relative_transform_to_parent>`\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`global_translate<class_Node2D_method_global_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`look_at<class_Node2D_method_look_at>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_x<class_Node2D_method_move_local_x>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_y<class_Node2D_method_move_local_y>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`rotate<class_Node2D_method_rotate>`\ (\ radians\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_global<class_Node2D_method_to_global>`\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_local<class_Node2D_method_to_local>`\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`translate<class_Node2D_method_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Node2D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Node2D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Posición global. Véase también :ref:`position<class_Node2D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation** :ref:`🔗<class_Node2D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation**\ (\ )

Rotación global en radianes. Véase también :ref:`rotation<class_Node2D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation_degrees** :ref:`🔗<class_Node2D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation_degrees**\ (\ )

Propiedad de ayuda para acceder a :ref:`global_rotation<class_Node2D_property_global_rotation>` en grados en lugar de radianes. Véase también :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_scale** :ref:`🔗<class_Node2D_property_global_scale>`

.. rst-class:: classref-property-setget

- |void| **set_global_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_scale**\ (\ )

Escala global. Véase también :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_skew** :ref:`🔗<class_Node2D_property_global_skew>`

.. rst-class:: classref-property-setget

- |void| **set_global_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_skew**\ (\ )

Global skew in radians. See also :ref:`skew<class_Node2D_property_skew>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **global_transform** :ref:`🔗<class_Node2D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_global_transform**\ (\ )

Global :ref:`Transform2D<class_Transform2D>`. See also :ref:`transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Node2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Position, relative to the node's parent. See also :ref:`global_position<class_Node2D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Node2D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

Rotation in radians, relative to the node's parent. See also :ref:`global_rotation<class_Node2D_property_global_rotation>`.

\ **Note:** This property is edited in the inspector in degrees. If you want to use degrees in a script, use :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Node2D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Helper property to access :ref:`rotation<class_Node2D_property_rotation>` in degrees instead of radians. See also :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Node2D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

The node's scale, relative to the node's parent. Unscaled value: ``(1, 1)``. See also :ref:`global_scale<class_Node2D_property_global_scale>`.

\ **Note:** Negative X scales in 2D are not decomposable from the transformation matrix. Due to the way scale is represented with transformation matrices in Godot, negative scales on the X axis will be changed to negative scales on the Y axis and a rotation of 180 degrees when decomposed.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **skew** = ``0.0`` :ref:`🔗<class_Node2D_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_skew**\ (\ )

If set to a non-zero value, slants the node in one direction or another. This can be used for pseudo-3D effects. See also :ref:`global_skew<class_Node2D_property_global_skew>`.

\ **Note:** Skew is performed on the X axis only, and *between* rotation and scaling.

\ **Note:** This property is edited in the inspector in degrees. If you want to use degrees in a script, use ``skew = deg_to_rad(value_in_degrees)``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_Node2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La :ref:`Transform2D<class_Transform2D>` del nodo, relativa a su nodo padre. Véase también :ref:`global_transform<class_Node2D_property_global_transform>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Node2D_method_apply_scale:

.. rst-class:: classref-method

|void| **apply_scale**\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_apply_scale>`

Multiplica la escala actual por el vector ``ratio``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle_to**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_get_angle_to>`

Returns the angle between the node and the ``point`` in radians. See also :ref:`look_at()<class_Node2D_method_look_at>`.

\ `Illustration of the returned angle. <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/node2d_get_angle_to.png>`__

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_relative_transform_to_parent:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_relative_transform_to_parent**\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node2D_method_get_relative_transform_to_parent>`

Devuelve el :ref:`Transform2D<class_Transform2D>` relativo al padre de este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_global_translate>`

Añade el vector ``offset`` a la posición global del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_look_at>`

Rotates the node so that its local +X axis points towards the ``point``, which is expected to use global coordinates. This method is a combination of both :ref:`rotate()<class_Node2D_method_rotate>` and :ref:`get_angle_to()<class_Node2D_method_get_angle_to>`.

\ ``point`` should not be the same as the node's position, otherwise the node always looks to the right.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_x:

.. rst-class:: classref-method

|void| **move_local_x**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_x>`

Applies a local translation on the node's X axis with the amount specified in ``delta``. If ``scaled`` is ``false``, normalizes the movement to occur independently of the node's :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_y:

.. rst-class:: classref-method

|void| **move_local_y**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_y>`

Applies a local translation on the node's Y axis with the amount specified in ``delta``. If ``scaled`` is ``false``, normalizes the movement to occur independently of the node's :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ radians\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node2D_method_rotate>`

Applies a rotation to the node, in radians, starting from its current rotation. This is equivalent to ``rotation += radians``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_global**\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_global>`

Transforma la posición local proporcionada en una posición en el espacio de coordenadas globales. Se espera que la entrada sea local en relación con el **Node2D** al que se llama. Por ejemplo, aplicar este método a las posiciones de los nodos hijos transformará correctamente sus posiciones en el espacio de coordenadas globales, pero aplicarlo a la propia posición de un nodo dará un resultado incorrecto, ya que incorporará la propia transformación del nodo en su posición global.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_local**\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_local>`

Transforma la posición global proporcionada en una posición en el espacio de coordenadas locales. La salida será local en relación con el **Node2D** al que se llama. Por ejemplo, es apropiado para determinar las posiciones de los nodos hijos, pero no es apropiado para determinar su propia posición en relación con su padre.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_translate>`

Translates the node by the given ``offset`` in local coordinates. This is equivalent to ``position += offset``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
