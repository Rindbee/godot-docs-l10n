:github_url: hide

.. _class_MenuBar:

MenuBar
=======

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Горизонтальная строка меню, создающая меню для каждого дочернего элемента :ref:`PopupMenu<class_PopupMenu>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Горизонтальная строка меню, которая создает меню для каждого дочернего элемента :ref:`PopupMenu<class_PopupMenu>`. Новые элементы создаются путем добавления :ref:`PopupMenu<class_PopupMenu>` к этому узлу. Заголовок элемента определяется :ref:`Window.title<class_Window_property_title>` или именем узла, если :ref:`Window.title<class_Window_property_title>` пуст. Заголовок элемента можно переопределить с помощью :ref:`set_menu_title()<class_MenuBar_method_set_menu_title>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Свойства темы
--------------------------

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

Описания свойств
--------------------------------

.. _class_MenuBar_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_MenuBar_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Плоский **MenuBar** не отображает оформление элементов.

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

Если ``true``, **MenuBar** будет использовать системное глобальное меню, если поддерживается.

\ **Примечание:** Если ``true`` и глобальное меню поддерживается, этот узел не отображается, имеет нулевой размер, а все его дочерние узлы, за исключением :ref:`PopupMenu<class_PopupMenu>`, недоступны.

\ **Примечание:** Это свойство переопределяет значение свойства :ref:`PopupMenu.prefer_native_menu<class_PopupMenu_property_prefer_native_menu>` дочерних узлов.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_start_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_index** = ``-1`` :ref:`🔗<class_MenuBar_property_start_index>`

.. rst-class:: classref-property-setget

- |void| **set_start_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_index**\ (\ )

Порядок расположения в глобальном меню для вставки элементов **MenuBar**. Все элементы меню в **MenuBar** всегда вставляются как непрерывный диапазон. Меню с меньшим :ref:`start_index<class_MenuBar_property_start_index>` вставляются первыми. Меню с :ref:`start_index<class_MenuBar_property_start_index>`, равным ``-1``, вставляются последними.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``true`` :ref:`🔗<class_MenuBar_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Если ``true``, то при наведении курсора на пункт меню текущее :ref:`PopupMenu<class_PopupMenu>` закроется и откроется другое.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_MenuBar_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Направление написания базового текста.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MenuBar_method_get_menu_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_menu_count**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_count>`

Возвращает количество пунктов меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_menu_popup**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_popup>`

Возвращает :ref:`PopupMenu<class_PopupMenu>`, связанный с пунктом меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_title**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_title>`

Возвращает заголовок пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_tooltip>`

Возвращает подсказку пункта меню.

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

Если ``true``, сочетания клавиш отключены и не могут использоваться для активации кнопки.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_disabled:

.. rst-class:: classref-method

|void| **set_menu_disabled**\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_disabled>`

Если ``true``, пункт меню отключен.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_hidden:

.. rst-class:: classref-method

|void| **set_menu_hidden**\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_hidden>`

Если ``true``, пункт меню скрыт.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_title:

.. rst-class:: classref-method

|void| **set_menu_title**\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_title>`

Устанавливает заголовок пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_tooltip:

.. rst-class:: classref-method

|void| **set_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_tooltip>`

Устанавливает подсказку для пункта меню.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_MenuBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_color>`

:ref:`Color<class_Color>` текста по умолчанию для пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_MenuBar_theme_color_font_disabled_color>`

:ref:`Color<class_Color>` текста используется, когда пункт меню отключен.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_focus_color>`

:ref:`Color<class_Color>` текста, используемый, когда элемент меню находится в фокусе. Заменяет только обычный цвет текста элемента меню. Отключенные, наведенные и нажатые состояния имеют приоритет над этим цветом.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_color>`

:ref:`Color<class_Color>` текста, используемый при наведении курсора на пункт меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` текста, используемый при наведении курсора на пункт меню и нажатии на него.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_outline_color>`

Оттенок контура текста пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` текста, используемый при нажатии на пункт меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_MenuBar_theme_constant_h_separation>`

Горизонтальное пространство между пунктами меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_MenuBar_theme_constant_outline_size>`

Размер контура текста.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* значения :ref:`outline_size<class_MenuBar_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_MenuBar_theme_font_font>`

:ref:`Font<class_Font>` текста пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_MenuBar_theme_font_size_font_size>`

Размер шрифта текста пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_MenuBar_theme_style_disabled>`

:ref:`StyleBox<class_StyleBox>` используется, когда элемент меню отключен.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_MenuBar_theme_style_disabled_mirrored>`

:ref:`StyleBox<class_StyleBox>` используется, когда элемент меню отключен (для макетов с направлением справа налево).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_MenuBar_theme_style_hover>`

:ref:`StyleBox<class_StyleBox>` используется при наведении курсора на пункт меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_mirrored>`

:ref:`StyleBox<class_StyleBox>` используется при наведении курсора на элемент меню (для макетов с направлением справа налево).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_MenuBar_theme_style_hover_pressed>`

:ref:`StyleBox<class_StyleBox>` используется при одновременном нажатии на элемент меню и наведении на него курсора.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` используется при одновременном нажатии на элемент меню и наведении на него курсора (для макетов с направлением справа налево).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_MenuBar_theme_style_normal>`

:ref:`StyleBox<class_StyleBox>` по умолчанию для пункта меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_MenuBar_theme_style_normal_mirrored>`

:ref:`StyleBox<class_StyleBox>` по умолчанию для пункта меню (для макетов справа налево).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_MenuBar_theme_style_pressed>`

:ref:`StyleBox<class_StyleBox>` используется при нажатии на пункт меню.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` используется при нажатии на элемент меню (для макетов с направлением справа налево).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
