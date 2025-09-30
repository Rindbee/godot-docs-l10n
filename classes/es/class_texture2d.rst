:github_url: hide

.. _class_Texture2D:

Texture2D
=========

**Hereda:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimatedTexture<class_AnimatedTexture>`, :ref:`AtlasTexture<class_AtlasTexture>`, :ref:`CameraTexture<class_CameraTexture>`, :ref:`CanvasTexture<class_CanvasTexture>`, :ref:`CompressedTexture2D<class_CompressedTexture2D>`, :ref:`CurveTexture<class_CurveTexture>`, :ref:`CurveXYZTexture<class_CurveXYZTexture>`, :ref:`DPITexture<class_DPITexture>`, :ref:`ExternalTexture<class_ExternalTexture>`, :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`ImageTexture<class_ImageTexture>`, :ref:`MeshTexture<class_MeshTexture>`, :ref:`NoiseTexture2D<class_NoiseTexture2D>`, :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`, :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`, :ref:`Texture2DRD<class_Texture2DRD>`, :ref:`ViewportTexture<class_ViewportTexture>`

Textura para 2D y 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una textura funciona registrando una imagen en el hardware de video, que luego puede ser usada en modelos 3D o 2D :ref:`Sprite2D<class_Sprite2D>` o GUI :ref:`Control<class_Control>`.

Las texturas se crean a menudo cargándolas desde un archivo. Véase :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Texture2D** es una base para otros recursos. No puede ser usado directamente.

\ **Nota:** El tamaño máximo de la textura es de 16384×16384 píxeles debido a las limitaciones del hardware de gráficos. Es posible que las texturas más grandes no se importen.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw<class_Texture2D_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw_rect<class_Texture2D_private_method__draw_rect>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw_rect_region<class_Texture2D_private_method__draw_rect_region>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const|             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`_get_height<class_Texture2D_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`_get_width<class_Texture2D_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                              |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_has_alpha<class_Texture2D_private_method__has_alpha>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_is_pixel_opaque<class_Texture2D_private_method__is_pixel_opaque>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2D_method_create_placeholder>`\ (\ ) |const|                                                                                                                                                                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw<class_Texture2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw_rect<class_Texture2D_method_draw_rect>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw_rect_region<class_Texture2D_method_draw_rect_region>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_height<class_Texture2D_method_get_height>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`       | :ref:`get_image<class_Texture2D_method_get_image>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_size<class_Texture2D_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_width<class_Texture2D_method_get_width>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alpha<class_Texture2D_method_has_alpha>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Texture2D_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw>`

Se llama cuando se solicita que se dibuje la **Texture2D** completa sobre un :ref:`CanvasItem<class_CanvasItem>`, con el desplazamiento de la esquina superior izquierda especificado en ``pos``. ``modulate`` especifica un multiplicador para los colores que se dibujan, mientras que ``transpose`` especifica si el dibujo debe realizarse en orden de columna principal en lugar de orden de fila principal (lo que resulta en una rotación de 90 grados en el sentido de las agujas del reloj).

\ **Nota:** Esto solo se usa en el renderizado en 2D, no en 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect:

.. rst-class:: classref-method

|void| **_draw_rect**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect>`

Se llama cuando se solicita que se dibuje la **Texture2D** en el ``rect`` especificado de :ref:`CanvasItem<class_CanvasItem>`. ``modulate`` especifica un multiplicador para los colores que se dibujan, mientras que ``transpose`` especifica si el dibujo debe realizarse en orden de columna principal en lugar de orden de fila principal (lo que resulta en una rotación de 90 grados en el sentido de las agujas del reloj).

\ **Nota:** Esto solo se usa en el renderizado en 2D, no en 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect_region:

.. rst-class:: classref-method

|void| **_draw_rect_region**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect_region>`

Se llama cuando se solicita que una parte de la **Texture2D** especificada por las coordenadas de ``src_rect`` se dibuje en el ``rect`` especificado de :ref:`CanvasItem<class_CanvasItem>`. ``modulate`` especifica un multiplicador para los colores que se dibujan, mientras que ``transpose`` especifica si el dibujo debe realizarse en orden de columna principal en lugar de orden de fila principal (lo que resulta en una rotación de 90 grados en el sentido de las agujas del reloj).

\ **Nota:** Esto solo se usa en el renderizado en 2D, no en 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_height>`

Llamado cuando se consulta la altura de la **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_width>`

Llamado cuando se consulta el ancho de la **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_alpha**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_alpha>`

Llamado cuando se consulta la presencia de un canal alfa en la **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_pixel_opaque**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__is_pixel_opaque>`

Llamado cuando se consulta el estado opaco de un píxel en la **Texture2D** en la posición ``(x, y)`` especificada.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_create_placeholder>`

Crea una versión de marcador de posición de este recurso (:ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw>`

Dibuja la textura utilizando un :ref:`CanvasItem<class_CanvasItem>` con la API :ref:`RenderingServer<class_RenderingServer>` en la ``position`` especificada.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect:

.. rst-class:: classref-method

|void| **draw_rect**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect>`

Dibuja la textura utilizando un :ref:`CanvasItem<class_CanvasItem>` con la API :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect_region:

.. rst-class:: classref-method

|void| **draw_rect_region**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect_region>`

Dibuja una parte de la textura utilizando un :ref:`CanvasItem<class_CanvasItem>` con la API :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_height>`

Devuelve la altura de la textura en píxeles.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_image>`

Devuelve una :ref:`Image<class_Image>` que es una copia de los datos de esta **Texture2D** (se crea una nueva :ref:`Image<class_Image>` cada vez). Se puede acceder a las :ref:`Image<class_Image>`\ s y manipularlas directamente.

\ **Nota:** Esto devolverá ``null`` si esta **Texture2D** no es válida.

\ **Nota:** Esto obtendrá los datos de la textura de la GPU, lo que podría causar problemas de rendimiento si se usa en exceso. Evita llamar a :ref:`get_image()<class_Texture2D_method_get_image>` en cada fotograma, especialmente en texturas grandes.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_size>`

Devuelve el tamaño de la textura en píxeles.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_width>`

Devuelve el ancho de la textura en píxeles.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alpha**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_alpha>`

Devuelve ``true`` si este **Texture2D** tiene un canal alfa.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
