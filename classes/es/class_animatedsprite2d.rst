:github_url: hide

.. _class_AnimatedSprite2D:

AnimatedSprite2D
================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo de Sprite que contiene múltiples texturas como fotogramas para reproducir animaciones.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AnimatedSprite2D** es similar al nodo :ref:`Sprite2D<class_Sprite2D>`, excepto que utiliza múltiples texturas como fotogramas de animación. Las animaciones se crean utilizando un recurso :ref:`SpriteFrames<class_SpriteFrames>`, que permite importar archivos de imagen (o una carpeta que contenga dichos archivos) para proporcionar los fotogramas de animación del sprite. El recurso :ref:`SpriteFrames<class_SpriteFrames>` puede configurarse en el editor a través del panel inferior de SpriteFrames.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Animación de Sprite 2D <../tutorials/2d/2d_sprite_animation>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite2D_property_animation>`           | ``&"default"``    |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite2D_property_autoplay>`             | ``""``            |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`centered<class_AnimatedSprite2D_property_centered>`             | ``true``          |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_h<class_AnimatedSprite2D_property_flip_h>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_v<class_AnimatedSprite2D_property_flip_v>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite2D_property_frame>`                   | ``0``             |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` | ``0.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`           | :ref:`offset<class_AnimatedSprite2D_property_offset>`                 | ``Vector2(0, 0)`` |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>`       | ``1.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`   |                   |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite2D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite2D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite2D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite2D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite2D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite2D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite2D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AnimatedSprite2D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_changed>`

Emitida cuando :ref:`animation<class_AnimatedSprite2D_property_animation>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_finished>`

Emitida cuando la animación llega al final, o al inicio si se reproduce en reversa. Cuando la animación termina, pausa la reproducción.

\ **Nota:** Esta señal no se emite si una animación está en bucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_looped>`

Emitida cuando la animación se repite.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_frame_changed>`

Emitida cuando :ref:`frame<class_AnimatedSprite2D_property_frame>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_sprite_frames_changed>`

Emitida cuando :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimatedSprite2D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite2D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

La animación actual del recurso :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`. Si este valor cambia, el contador :ref:`frame<class_AnimatedSprite2D_property_frame>` y el :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` se reinician.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

La clave de la animación que se reproducirá cuando se cargue la escena.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_AnimatedSprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Si es ``true``, la textura se centrará.

\ **Nota:** Para juegos con una estética de pixel art, las texturas pueden aparecer deformadas cuando se centran. Esto se debe a que su posición está entre píxeles. Para evitar esto, establece esta propiedad en ``false``, o considera habilitar :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` y :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si es ``true``, la textura se voltea horizontalmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si es ``true``, la textura se voltea verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

El índice del fotograma de animación que se muestra. Establecer esta propiedad también reinicia :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`. Si no se desea, usa :ref:`set_frame_and_progress()<class_AnimatedSprite2D_method_set_frame_and_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite2D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

El valor de progreso entre ``0.0`` y ``1.0`` hasta que el fotograma actual hace la transición al siguiente fotograma. Si la animación se está reproduciendo hacia atrás, el valor hace la transición de ``1.0`` a ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimatedSprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

El desplazamiento al dibujar de la textura.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

La relación de escala de velocidad. Por ejemplo, si este valor es ``1``, entonces la animación se reproduce a velocidad normal. Si es ``0.5``, entonces se reproduce a media velocidad. Si es ``2``, entonces se reproduce al doble de velocidad.

Si se establece en un valor negativo, la animación se reproduce en reversa. Si se establece en ``0``, la animación no avanzará.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite2D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

El recurso :ref:`SpriteFrames<class_SpriteFrames>` que contiene la(s) animación(es). Te permite cargar, editar, borrar, hacer único y guardar los estados del recurso :ref:`SpriteFrames<class_SpriteFrames>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimatedSprite2D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_get_playing_speed>`

Devuelve la velocidad de reproducción real de la animación actual o ``0`` si no se está reproduciendo. Esta velocidad es la propiedad :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` multiplicada por el argumento ``custom_speed`` especificado al llamar al método :ref:`play()<class_AnimatedSprite2D_method_play>`.

Devuelve un valor negativo si la animación actual se está reproduciendo hacia atrás.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_is_playing>`

Devuelve ``true`` si una animación se está reproduciendo actualmente (incluso si :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` y/o ``custom_speed`` son ``0``).

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_pause>`

Pausa la animación que se está reproduciendo. El :ref:`frame<class_AnimatedSprite2D_property_frame>` y el :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` se mantendrán y al llamar a :ref:`play()<class_AnimatedSprite2D_method_play>` o :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>` sin argumentos se reanudará la animación desde la posición de reproducción actual.

Véase también :ref:`stop()<class_AnimatedSprite2D_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite2D_method_play>`

Reproduce la animación con la clave ``name``. Si ``custom_speed`` es negativo y ``from_end`` es ``true``, la animación se reproducirá hacia atrás (lo que equivale a llamar a :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>`).

Si este método se llama con la misma animación ``name``, o sin el parámetro ``name``, la animación asignada continuará reproduciéndose si estaba en pausa.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite2D_method_play_backwards>`

Reproduce la animación con la clave ``name`` al revés.

Este método es una abreviatura de :ref:`play()<class_AnimatedSprite2D_method_play>` con ``custom_speed = -1.0`` y ``from_end = true``, así que consulta su descripción para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite2D_method_set_frame_and_progress>`

Establece :ref:`frame<class_AnimatedSprite2D_property_frame>` y :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` a los valores dados. A diferencia de establecer :ref:`frame<class_AnimatedSprite2D_property_frame>`, este método no reinicia el :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` a ``0.0`` implícitamente.

\ **Ejemplo:** Cambia la animación manteniendo el mismo :ref:`frame<class_AnimatedSprite2D_property_frame>` y :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`:


.. tabs::

 .. code-tab:: gdscript

    var current_frame = animated_sprite.get_frame()
    var current_progress = animated_sprite.get_frame_progress()
    animated_sprite.play("walk_another_skin")
    animated_sprite.set_frame_and_progress(current_frame, current_progress)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_stop>`

Detiene la animación que se está reproduciendo. La posición de la animación se restablece a ``0`` y la ``custom_speed`` se restablece a ``1.0``. Véase también :ref:`pause()<class_AnimatedSprite2D_method_pause>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
