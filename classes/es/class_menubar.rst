:github_url: hide

.. _class_MenuBar:

MenuBar
=======

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una barra de menú horizontal que crea un menú para cada hijo :ref:`PopupMenu<class_PopupMenu>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una barra de menú horizontal que crea un menú para cada hijo :ref:`PopupMenu<class_PopupMenu>`. Se crean nuevos elementos añadiendo :ref:`PopupMenu<class_PopupMenu>`\ s a este nodo. El título del elemento está determinado por :ref:`Window.title<class_Window_property_title>`, o el nombre del nodo si :ref:`Window.title<class_Window_property_title>` está vacío. El título del elemento se puede sobrescribir usando :ref:`set_menu_title()<class_MenuBar_method_set_menu_title>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flat<class_MenuBar_property_flat>`                             | ``false``                                                           |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`         | focus_mode                                                           | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`language<class_MenuBar_property_language>`                     | ``""``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`prefer_global_menu<class_MenuBar_property_prefer_global_menu>` | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`start_index<class_MenuBar_property_start_index>`               | ``-1``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`switch_on_hover<class_MenuBar_property_switch_on_hover>`       | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`text_direction<class_MenuBar_property_text_direction>`         | ``0``                                                               |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_menu_count<class_MenuBar_method_get_menu_count>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_menu_popup<class_MenuBar_method_get_menu_popup>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_title<class_MenuBar_method_get_menu_title>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_tooltip<class_MenuBar_method_get_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_disabled<class_MenuBar_method_is_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_hidden<class_MenuBar_method_is_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_native_menu<class_MenuBar_method_is_native_menu>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuBar_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_disabled<class_MenuBar_method_set_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_hidden<class_MenuBar_method_set_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_title<class_MenuBar_method_set_menu_title>`\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )       |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_tooltip<class_MenuBar_method_set_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_MenuBar_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_MenuBar_theme_color_font_disabled_color>`           | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_MenuBar_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_MenuBar_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_MenuBar_theme_color_font_hover_pressed_color>` | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_MenuBar_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_MenuBar_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`h_separation<class_MenuBar_theme_constant_h_separation>`                      | ``4``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_MenuBar_theme_constant_outline_size>`                      | ``0``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_MenuBar_theme_font_font>`                                          |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_MenuBar_theme_font_size_font_size>`                           |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled<class_MenuBar_theme_style_disabled>`                                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled_mirrored<class_MenuBar_theme_style_disabled_mirrored>`               |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover<class_MenuBar_theme_style_hover>`                                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_mirrored<class_MenuBar_theme_style_hover_mirrored>`                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed<class_MenuBar_theme_style_hover_pressed>`                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed_mirrored<class_MenuBar_theme_style_hover_pressed_mirrored>`     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_MenuBar_theme_style_normal>`                                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_mirrored<class_MenuBar_theme_style_normal_mirrored>`                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed<class_MenuBar_theme_style_pressed>`                                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_mirrored<class_MenuBar_theme_style_pressed_mirrored>`                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MenuBar_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_MenuBar_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Los **MenuBar** planos no muestran la decoración del elemento.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_MenuBar_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_prefer_global_menu:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **prefer_global_menu** = ``true`` :ref:`🔗<class_MenuBar_property_prefer_global_menu>`

.. rst-class:: classref-property-setget

- |void| **set_prefer_global_menu**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_prefer_global_menu**\ (\ )

Si es ``true``, **MenuBar** usará el menú global del sistema cuando sea compatible.

\ **Nota:** Si es ``true`` y el menú global es compatible, este nodo no se muestra, tiene tamaño cero y todos sus nodos hijo, excepto los :ref:`PopupMenu<class_PopupMenu>`\ s, son inaccesibles.

\ **Nota:** Esta propiedad anula el valor de la propiedad :ref:`PopupMenu.prefer_native_menu<class_PopupMenu_property_prefer_native_menu>` de los nodos hijo.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_start_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_index** = ``-1`` :ref:`🔗<class_MenuBar_property_start_index>`

.. rst-class:: classref-property-setget

- |void| **set_start_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_index**\ (\ )

Orden de posición en el menú global para insertar los elementos **MenuBar**. Todos los elementos del menú en la **MenuBar** siempre se insertan como un rango continuo. Los menús con :ref:`start_index<class_MenuBar_property_start_index>` más bajo se insertan primero. Los menús con :ref:`start_index<class_MenuBar_property_start_index>` igual a ``-1`` se insertan al final.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``true`` :ref:`🔗<class_MenuBar_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Si es ``true``, cuando el cursor se sitúa sobre un elemento del menú, cerrará el :ref:`PopupMenu<class_PopupMenu>` actual y abrirá el otro.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_MenuBar_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Dirección base de escritura del texto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MenuBar_method_get_menu_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_menu_count**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_count>`

Devuelve el número de elementos del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_menu_popup**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_popup>`

Devuelve el :ref:`PopupMenu<class_PopupMenu>` asociado con el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_title**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_title>`

Devuelve el título del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_tooltip>`

Devuelve la información sobre herramientas del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_disabled**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_disabled>`

Returns ``true`` if the menu item is disabled.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_hidden**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_hidden>`

Returns ``true`` if the menu item is hidden.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_native_menu:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_native_menu**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_is_native_menu>`

Returns ``true`` if the current system's global menu is supported and used by this **MenuBar**.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_disable_shortcuts>`

Si es ``true``, los atajos están desactivados y no se pueden utilizar para activar el botón.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_disabled:

.. rst-class:: classref-method

|void| **set_menu_disabled**\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_disabled>`

Si es ``true``, el elemento del menú está deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_hidden:

.. rst-class:: classref-method

|void| **set_menu_hidden**\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_hidden>`

Si es ``true``, el elemento del menú está oculto.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_title:

.. rst-class:: classref-method

|void| **set_menu_title**\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_title>`

Establece el título del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_tooltip:

.. rst-class:: classref-method

|void| **set_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_tooltip>`

Sets menu item tooltip.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_MenuBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_color>`

:ref:`Color<class_Color>` de texto predeterminado del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_MenuBar_theme_color_font_disabled_color>`

:ref:`Color<class_Color>` de texto utilizado cuando el elemento del menú está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_focus_color>`

Text :ref:`Color<class_Color>` used when the menu item is focused. Only replaces the normal text color of the menu item. Disabled, hovered, and pressed states take precedence over this color.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_color>`

:ref:`Color<class_Color>` del texto utilizado cuando el puntero está sobre el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` del texto utilizado cuando el puntero está sobre y presionando el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_outline_color>`

El tono del contorno del texto del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` del texto utilizado al presionar el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_MenuBar_theme_constant_h_separation>`

El espacio horizontal entre los elementos del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_MenuBar_theme_constant_outline_size>`

The size of the text outline.

\ **Note:** If using a font with :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` enabled, its :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` must be set to at least *twice* the value of :ref:`outline_size<class_MenuBar_theme_constant_outline_size>` for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_MenuBar_theme_font_font>`

:ref:`Font<class_Font>` del texto del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_MenuBar_theme_font_size_font_size>`

Tamaño de fuente del texto del elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_MenuBar_theme_style_disabled>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando el elemento del menú está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_MenuBar_theme_style_disabled_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando el elemento del menú está desactivado (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_MenuBar_theme_style_hover>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando el puntero está sobre el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando el puntero está sobre el elemento del menú (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_MenuBar_theme_style_hover_pressed>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando se está presionando el elemento del menú y el puntero está sobre él al mismo tiempo.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando se está presionando el elemento del menú y el puntero está sobre él al mismo tiempo (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_MenuBar_theme_style_normal>`

:ref:`StyleBox<class_StyleBox>` predeterminado para el elemento de menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_MenuBar_theme_style_normal_mirrored>`

:ref:`StyleBox<class_StyleBox>` predeterminado para el elemento de menú (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_MenuBar_theme_style_pressed>`

:ref:`StyleBox<class_StyleBox>` utilizado al presionar el elemento del menú.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado al presionar el elemento del menú (para diseños de derecha a izquierda).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
