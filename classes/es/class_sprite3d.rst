:github_url: hide

.. _class_Sprite3D:

Sprite3D
========

**Hereda:** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo de sprite 2D en un mundo 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo que muestra una textura 2D en un entorno 3D. La textura mostrada puede ser una región de una textura de atlas más grande, o un fotograma de una animación de hoja de sprites. Véase también :ref:`SpriteBase3D<class_SpriteBase3D>` donde se definen propiedades como el modo billboard.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite3D_property_frame>`                   | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite3D_property_frame_coords>`     | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite3D_property_hframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite3D_property_region_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite3D_property_region_rect>`       | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite3D_property_texture>`               |                       |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite3D_property_vframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Sprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_frame_changed>`

Emitida cuando :ref:`frame<class_Sprite3D_property_frame>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_texture_changed>`

Emitida cuando :ref:`texture<class_Sprite3D_property_texture>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Sprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Current frame to display from sprite sheet. :ref:`hframes<class_Sprite3D_property_hframes>` or :ref:`vframes<class_Sprite3D_property_vframes>` must be greater than 1. This property is automatically adjusted when :ref:`hframes<class_Sprite3D_property_hframes>` or :ref:`vframes<class_Sprite3D_property_vframes>` are changed to keep pointing to the same visual frame (same column and row). If that's impossible, this value is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite3D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Coordinates of the frame to display from sprite sheet. This is as an alias for the :ref:`frame<class_Sprite3D_property_frame>` property. :ref:`hframes<class_Sprite3D_property_hframes>` or :ref:`vframes<class_Sprite3D_property_vframes>` must be greater than 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite3D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

The number of columns in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite3D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite3D_property_frame>` is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite3D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

Si es ``true``, el sprite usará :ref:`region_rect<class_Sprite3D_property_region_rect>` y mostrará solo la parte especificada de su textura.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite3D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

La región de la textura del atlas a mostrar. :ref:`region_enabled<class_Sprite3D_property_region_enabled>` debe ser ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Objeto :ref:`Texture2D<class_Texture2D>` a dibujar. Si se utiliza :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, esto será sobreescrito. La información de tamaño todavía se utiliza.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite3D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

El número de filas en la hoja de sprites. Cuando se cambia esta propiedad, :ref:`frame<class_Sprite3D_property_frame>` se ajusta para que se mantenga el mismo cuadro visual (misma fila y columna). Si eso es imposible, :ref:`frame<class_Sprite3D_property_frame>` se restablece a ``0``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
