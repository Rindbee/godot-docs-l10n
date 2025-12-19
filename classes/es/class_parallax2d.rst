:github_url: hide

.. _class_Parallax2D:

Parallax2D
==========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo usado para crear un fondo de desplazamiento de paralaje.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A **Parallax2D** is used to create a parallax effect. It can move at a different speed relative to the camera movement using :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`. This creates an illusion of depth in a 2D game. If manual scrolling is desired, the :ref:`Camera2D<class_Camera2D>` position can be ignored with :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>`.

\ **Note:** Any changes to this node's position made after it enters the scene tree will be overridden if :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` is ``false`` or :ref:`screen_offset<class_Parallax2D_property_screen_offset>` is modified.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Parallax 2D <../tutorials/2d/2d_parallax>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`autoscroll<class_Parallax2D_property_autoscroll>`                     | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`follow_viewport<class_Parallax2D_property_follow_viewport>`           | ``true``                                                                      |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_begin<class_Parallax2D_property_limit_begin>`                   | ``Vector2(-10000000, -10000000)``                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_end<class_Parallax2D_property_limit_end>`                       | ``Vector2(10000000, 10000000)``                                               |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                  | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`repeat_size<class_Parallax2D_property_repeat_size>`                   | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`repeat_times<class_Parallax2D_property_repeat_times>`                 | ``1``                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`screen_offset<class_Parallax2D_property_screen_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_offset<class_Parallax2D_property_scroll_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`                 | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Parallax2D_property_autoscroll:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **autoscroll** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_autoscroll>`

.. rst-class:: classref-property-setget

- |void| **set_autoscroll**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_autoscroll**\ (\ )

Velocidad en la que el offset se desplaza automáticamente, en píxeles por segundo.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_follow_viewport:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport** = ``true`` :ref:`🔗<class_Parallax2D_property_follow_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_viewport**\ (\ )

Si es ``true``, este **Parallax2D** se desplaza según la posición actual de la cámara. Si el **Parallax2D** está en un :ref:`CanvasLayer<class_CanvasLayer>` separado de la cámara actual, puede ser conveniente sincronizar el valor con :ref:`CanvasLayer.follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_ignore_camera_scroll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_camera_scroll** = ``false`` :ref:`🔗<class_Parallax2D_property_ignore_camera_scroll>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_scroll**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_scroll**\ (\ )

Si es ``true``, la posición de **Parallax2D** no se ve afectada por la posición de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_begin** = ``Vector2(-10000000, -10000000)`` :ref:`🔗<class_Parallax2D_property_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Top-left limits for scrolling to begin. If the camera is outside of this limit, the **Parallax2D** stops scrolling. Must be lower than :ref:`limit_end<class_Parallax2D_property_limit_end>` minus the viewport size to work.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_end** = ``Vector2(10000000, 10000000)`` :ref:`🔗<class_Parallax2D_property_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Bottom-right limits for scrolling to end. If the camera is outside of this limit, the **Parallax2D** will stop scrolling. Must be higher than :ref:`limit_begin<class_Parallax2D_property_limit_begin>` and the viewport size combined to work.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **repeat_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_repeat_size>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_repeat_size**\ (\ )

Repite la :ref:`Texture2D<class_Texture2D>` de cada uno de los hijos de este nodo y los desplaza según este valor. Al desplazarse, la posición del nodo se repite, dando la ilusión de un fondo de desplazamiento infinito si los valores son mayores que el tamaño de la pantalla. Si un eje se establece en ``0``, la :ref:`Texture2D<class_Texture2D>` no se repetirá.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_times:

.. rst-class:: classref-property

:ref:`int<class_int>` **repeat_times** = ``1`` :ref:`🔗<class_Parallax2D_property_repeat_times>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_times**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_repeat_times**\ (\ )

Anula la cantidad de veces que se repite la textura. Cada copia de textura se extiende uniformemente desde el original por :ref:`repeat_size<class_Parallax2D_property_repeat_size>`. Útil para cuando se aleja con una cámara.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_screen_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_screen_offset>`

.. rst-class:: classref-property-setget

- |void| **set_screen_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_offset**\ (\ )

Desplazamiento utilizado para desplazar este **Parallax2D**. Este valor se actualiza automáticamente a menos que :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` sea ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

El desplazamiento de **Parallax2D**. Similar a :ref:`screen_offset<class_Parallax2D_property_screen_offset>` y :ref:`Node2D.position<class_Node2D_property_position>`, pero no se sobrescribirá.

\ **Nota:** Los valores se repetirán si :ref:`repeat_size<class_Parallax2D_property_repeat_size>` se establece por encima de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Parallax2D_property_scroll_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_scale**\ (\ )

Multiplicador del desplazamiento final de **Parallax2D**. Se puede utilizar para simular la distancia desde la cámara.

Por ejemplo, un valor de ``1`` se desplaza a la misma velocidad que la cámara. Un valor mayor que ``1`` se desplaza más rápido, haciendo que los objetos parezcan más cercanos. Menos de ``1`` se desplaza más lento, haciendo que los objetos parezcan más lejanos, y un valor de ``0`` detiene los objetos por completo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
