:github_url: hide

.. _class_TabBar:

TabBar
======

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления, представляющий собой горизонтальную панель с вкладками.

.. rst-class:: classref-introduction-group

Описание
----------------

Элемент управления, который предоставляет горизонтальную панель с вкладками. Похож на :ref:`TabContainer<class_TabContainer>`, но отвечает только за отрисовку вкладок, не взаимодействуя с дочерними элементами.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`clip_tabs<class_TabBar_property_clip_tabs>`                                 | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`close_with_middle_mouse<class_TabBar_property_close_with_middle_mouse>`     | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`current_tab<class_TabBar_property_current_tab>`                             | ``-1``                                                              |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>`                   | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>` | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                              | focus_mode                                                                        | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`max_tab_width<class_TabBar_property_max_tab_width>`                         | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`scroll_to_selected<class_TabBar_property_scroll_to_selected>`               | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`scrolling_enabled<class_TabBar_property_scrolling_enabled>`                 | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`select_with_rmb<class_TabBar_property_select_with_rmb>`                     | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`                       | :ref:`tab_alignment<class_TabBar_property_tab_alignment>`                         | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` | :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`   | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`tab_count<class_TabBar_property_tab_count>`                                 | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`tabs_rearrange_group<class_TabBar_property_tabs_rearrange_group>`           | ``-1``                                                              |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`add_tab<class_TabBar_method_add_tab>`\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`clear_tabs<class_TabBar_method_clear_tabs>`\ (\ )                                                                                                                        |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`ensure_tab_visible<class_TabBar_method_ensure_tab_visible>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`get_offset_buttons_visible<class_TabBar_method_get_offset_buttons_visible>`\ (\ ) |const|                                                                                |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_previous_tab<class_TabBar_method_get_previous_tab>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`get_tab_button_icon<class_TabBar_method_get_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                             |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`get_tab_icon<class_TabBar_method_get_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_icon_max_width<class_TabBar_method_get_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_idx_at_point<class_TabBar_method_get_tab_idx_at_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_language<class_TabBar_method_get_tab_language>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                    | :ref:`get_tab_metadata<class_TabBar_method_get_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_offset<class_TabBar_method_get_tab_offset>`\ (\ ) |const|                                                                                                        |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                        | :ref:`get_tab_rect<class_TabBar_method_get_tab_rect>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`get_tab_text_direction<class_TabBar_method_get_tab_text_direction>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_title<class_TabBar_method_get_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_tooltip<class_TabBar_method_get_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`is_tab_disabled<class_TabBar_method_is_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`is_tab_hidden<class_TabBar_method_is_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`move_tab<class_TabBar_method_move_tab>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                                                                  |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`remove_tab<class_TabBar_method_remove_tab>`\ (\ tab_idx\: :ref:`int<class_int>`\ )                                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`select_next_available<class_TabBar_method_select_next_available>`\ (\ )                                                                                                  |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`select_previous_available<class_TabBar_method_select_previous_available>`\ (\ )                                                                                          |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_button_icon<class_TabBar_method_set_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_disabled<class_TabBar_method_set_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_hidden<class_TabBar_method_set_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )                                             |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_icon<class_TabBar_method_set_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_icon_max_width<class_TabBar_method_set_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ )                                |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_language<class_TabBar_method_set_tab_language>`\ (\ tab_idx\: :ref:`int<class_int>`, language\: :ref:`String<class_String>`\ )                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_metadata<class_TabBar_method_set_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )                                 |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_text_direction<class_TabBar_method_set_tab_text_direction>`\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_title<class_TabBar_method_set_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )                                            |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_tooltip<class_TabBar_method_set_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )                                      |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`drop_mark_color<class_TabBar_theme_color_drop_mark_color>`             | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_TabBar_theme_color_font_disabled_color>`     | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hovered_color<class_TabBar_theme_color_font_hovered_color>`       | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_TabBar_theme_color_font_outline_color>`       | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_selected_color<class_TabBar_theme_color_font_selected_color>`     | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_unselected_color<class_TabBar_theme_color_font_unselected_color>` | ``Color(0.7, 0.7, 0.7, 1)``         |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_TabBar_theme_constant_h_separation>`                | ``4``                               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_TabBar_theme_constant_outline_size>`                | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`tab_separation<class_TabBar_theme_constant_tab_separation>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_TabBar_theme_font_font>`                                    |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_TabBar_theme_font_size_font_size>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`close<class_TabBar_theme_icon_close>`                                  |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_TabBar_theme_icon_decrement>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_TabBar_theme_icon_decrement_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_TabBar_theme_icon_increment>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_TabBar_theme_icon_increment_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`button_highlight<class_TabBar_theme_style_button_highlight>`           |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`button_pressed<class_TabBar_theme_style_button_pressed>`               |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_disabled<class_TabBar_theme_style_tab_disabled>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_focus<class_TabBar_theme_style_tab_focus>`                         |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_hovered<class_TabBar_theme_style_tab_hovered>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_selected<class_TabBar_theme_style_tab_selected>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>`               |                                     |
   +-----------------------------------+------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_TabBar_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_active_tab_rearranged>`

Выдается, когда активная вкладка перестраивается с помощью перетаскивания мышью. См. :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_button_pressed>`

Вызывается при нажатии правой кнопки вкладки. См. :ref:`set_tab_button_icon()<class_TabBar_method_set_tab_button_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_changed>`

Возникает при переключении на другую вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_clicked>`

Выдается при нажатии на вкладку, даже если это текущая вкладка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_close_pressed:

.. rst-class:: classref-signal

**tab_close_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_close_pressed>`

Вызывается при нажатии кнопки закрытия вкладки или при щелчке средней кнопкой мыши по вкладке, если включен :ref:`close_with_middle_mouse<class_TabBar_property_close_with_middle_mouse>`.

\ **Примечание:** Вкладки не удаляются автоматически после нажатия кнопки закрытия, это поведение необходимо запрограммировать вручную. Например:


.. tabs::

 .. code-tab:: gdscript

    $TabBar.tab_close_pressed.connect($TabBar.remove_tab)

 .. code-tab:: csharp

    GetNode<TabBar>("TabBar").TabClosePressed += GetNode<TabBar>("TabBar").RemoveTab;



.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_hovered>`

Выдается при наведении указателя мыши на вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_rmb_clicked:

.. rst-class:: classref-signal

**tab_rmb_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_rmb_clicked>`

Вызывается при щелчке правой кнопкой мыши по вкладке. :ref:`select_with_rmb<class_TabBar_property_select_with_rmb>` должен быть включен.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_selected>`

Испускается при выборе вкладки с помощью щелчка, направленного ввода или скрипта, даже если это текущая вкладка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_TabBar_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_TabBar_AlignmentMode>`

.. _class_TabBar_constant_ALIGNMENT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_LEFT** = ``0``

Размещает вкладки слева.

.. _class_TabBar_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Размещает вкладки посередине.

.. _class_TabBar_constant_ALIGNMENT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_RIGHT** = ``2``

Размещает вкладки справа.

.. _class_TabBar_constant_ALIGNMENT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_MAX** = ``3``

Представляет размер перечисления :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_TabBar_CloseButtonDisplayPolicy:

.. rst-class:: classref-enumeration

enum **CloseButtonDisplayPolicy**: :ref:`🔗<enum_TabBar_CloseButtonDisplayPolicy>`

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_NEVER** = ``0``

Никогда не показывать кнопки закрытия.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ACTIVE_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ACTIVE_ONLY** = ``1``

Показывать кнопку закрытия только на активной в данный момент вкладке.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ALWAYS** = ``2``

Показывать кнопку закрытия на всех вкладках.

.. _class_TabBar_constant_CLOSE_BUTTON_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_MAX** = ``3``

Представляет размер перечисления :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TabBar_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabBar_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Если ``true``, вкладки, выходящие за пределы ширины этого узла, будут скрыты, отображая вместо этого две кнопки навигации. В противном случае минимальный размер этого узла обновляется так, чтобы все вкладки были видны.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_close_with_middle_mouse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **close_with_middle_mouse** = ``true`` :ref:`🔗<class_TabBar_property_close_with_middle_mouse>`

.. rst-class:: classref-property-setget

- |void| **set_close_with_middle_mouse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_with_middle_mouse**\ (\ )

Если ``true``, щелчок средней кнопкой мыши вызовет срабатывание сигнала :ref:`tab_close_pressed<class_TabBar_signal_tab_close_pressed>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabBar_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

Индекс текущей выбранной вкладки. Значение ``-1`` означает, что вкладка не выбрана, и может быть установлено только тогда, когда :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>` равно ``true`` или если все вкладки скрыты или отключены.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabBar_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Если ``true``, все вкладки могут быть отменены, так что ни одна вкладка не будет выбрана. Щелкните по текущей вкладке, чтобы отменить ее выбор.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabBar_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Если ``true``, вкладки можно переставлять перетаскиванием мыши.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_max_tab_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_tab_width** = ``0`` :ref:`🔗<class_TabBar_property_max_tab_width>`

.. rst-class:: classref-property-setget

- |void| **set_max_tab_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_tab_width**\ (\ )

Устанавливает максимальную ширину, которой должны быть ограничены все вкладки. Неограниченно, если установлено значение ``0``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scroll_to_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_to_selected** = ``true`` :ref:`🔗<class_TabBar_property_scroll_to_selected>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_to_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scroll_to_selected**\ (\ )

Если ``true``, смещение вкладки будет изменено, чтобы сохранить видимой текущую выбранную вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scrolling_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrolling_enabled** = ``true`` :ref:`🔗<class_TabBar_property_scrolling_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_scrolling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scrolling_enabled**\ (\ )

если ``true``, колесо прокрутки мыши можно использовать для навигации по прокручиваемому виду.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_select_with_rmb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_with_rmb** = ``false`` :ref:`🔗<class_TabBar_property_select_with_rmb>`

.. rst-class:: classref-property-setget

- |void| **set_select_with_rmb**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_select_with_rmb**\ (\ )

Если ``true``, позволяет выбрать вкладку правой кнопкой мыши.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabBar_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

Позиция, в которой будут размещены вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_close_display_policy:

.. rst-class:: classref-property

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **tab_close_display_policy** = ``0`` :ref:`🔗<class_TabBar_property_tab_close_display_policy>`

.. rst-class:: classref-property-setget

- |void| **set_tab_close_display_policy**\ (\ value\: :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`\ )
- :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **get_tab_close_display_policy**\ (\ )

Когда на вкладках появится кнопка закрытия.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tab_count** = ``0`` :ref:`🔗<class_TabBar_property_tab_count>`

.. rst-class:: classref-property-setget

- |void| **set_tab_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tab_count**\ (\ )

Количество вкладок, находящихся в данный момент на панели.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabBar_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

**TabBar** с одинаковым идентификатором группы перестановки позволят перетаскивать вкладки между ними. Включите перетаскивание с помощью :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

Установка этого значения в ``-1`` отключит перестановку между **TabBar**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TabBar_method_add_tab:

.. rst-class:: classref-method

|void| **add_tab**\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_TabBar_method_add_tab>`

Добавляет новую вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_clear_tabs:

.. rst-class:: classref-method

|void| **clear_tabs**\ (\ ) :ref:`🔗<class_TabBar_method_clear_tabs>`

Очищает все вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_ensure_tab_visible:

.. rst-class:: classref-method

|void| **ensure_tab_visible**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_ensure_tab_visible>`

Перемещает вид прокрутки, чтобы сделать вкладку видимой.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_offset_buttons_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_offset_buttons_visible**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_offset_buttons_visible>`

Возвращает ``true``, если кнопки смещения (те, которые появляются, когда недостаточно места для всех вкладок) видны.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_previous_tab>`

Возвращает индекс предыдущей активной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_button_icon>`

Возвращает значок для правой кнопки вкладки с индексом ``tab_idx`` или ``null``, если у правой кнопки нет значка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon>`

Возвращает значок для вкладки с индексом ``tab_idx`` или ``null``, если у вкладки нет значка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon_max_width>`

Возвращает максимально допустимую ширину значка для вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_idx_at_point>`

Возвращает индекс вкладки в локальных координатах ``point``. Возвращает ``-1``, если точка находится за пределами границ элемента управления или если в запрошенной позиции нет вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_language:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_language>`

Возвращает код языка заголовка вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_metadata>`

Возвращает значение метаданных, заданное для вкладки с индексом ``tab_idx``, используя :ref:`set_tab_metadata()<class_TabBar_method_set_tab_metadata>`. Если ранее метаданные не были заданы, по умолчанию возвращается ``null``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_offset**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_offset>`

Возвращает количество скрытых вкладок, смещенных влево.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_tab_rect**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_rect>`

Возвращает :ref:`Rect2<class_Rect2>` вкладки с локальным положением и размером.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_text_direction:

.. rst-class:: classref-method

:ref:`TextDirection<enum_Control_TextDirection>` **get_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_text_direction>`

Возвращает базовое направление написания текста заголовка вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_title>`

Возвращает заголовок вкладки по индексу ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_tooltip>`

Возвращает текст всплывающей подсказки вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_disabled>`

Возвращает ``true``, если вкладка с индексом ``tab_idx`` отключена.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_hidden>`

Возвращает ``true``, если вкладка с индексом ``tab_idx`` скрыта.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_move_tab:

.. rst-class:: classref-method

|void| **move_tab**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_move_tab>`

Перемещает вкладку из ``from`` в ``to``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_remove_tab:

.. rst-class:: classref-method

|void| **remove_tab**\ (\ tab_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_remove_tab>`

Удаляет вкладку с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_next_available>`

Выбирает первую доступную вкладку с большим индексом, чем выбранная в данный момент. Возвращает ``true``, если выбор вкладки изменился.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_previous_available>`

Выбирает первую доступную вкладку с индексом ниже текущего выбранного. Возвращает ``true``, если выбор вкладки изменился.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_button_icon>`

Устанавливает ``icon`` для кнопки вкладки с индексом ``tab_idx`` (расположенной справа, перед кнопкой закрытия), делая ее видимой и нажимаемой (см. :ref:`tab_button_pressed<class_TabBar_signal_tab_button_pressed>`). Присвоение ей значения ``null`` скроет кнопку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_disabled>`

Если ``disabled`` равен ``true``, отключает вкладку с индексом ``tab_idx``, делая ее неинтерактивной.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_hidden>`

Если ``hidden`` равен ``true``, скрывает вкладку с индексом ``tab_idx``, заставляя ее исчезнуть из области вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon>`

Устанавливает ``icon`` для вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon_max_width>`

Устанавливает максимально допустимую ширину значка для вкладки с индексом ``tab_idx``. Это ограничение применяется поверх размера значка по умолчанию и поверх :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`. Высота регулируется в соответствии с соотношением значка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_language:

.. rst-class:: classref-method

|void| **set_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`, language\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_language>`

Устанавливает код языка заголовка вкладки, используемый для алгоритмов переноса строк и формирования текста, если оставить пустым, вместо него будет использоваться текущая локаль.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabBar_method_set_tab_metadata>`

Устанавливает значение метаданных для вкладки с индексом ``tab_idx``, которое можно получить позже с помощью :ref:`get_tab_metadata()<class_TabBar_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_text_direction:

.. rst-class:: classref-method

|void| **set_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) :ref:`🔗<class_TabBar_method_set_tab_text_direction>`

Устанавливает направление написания заголовка вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_title>`

Устанавливает ``title`` для вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_tooltip>`

Устанавливает ``tooltip`` для вкладки с индексом ``tab_idx``.

\ **Примечание:** По умолчанию, если ``tooltip`` пуст и текст вкладки обрезан (не все символы помещаются во вкладку), заголовок будет отображаться как всплывающая подсказка. Чтобы скрыть всплывающую подсказку, назначьте ``" "`` в качестве текста ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_TabBar_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_drop_mark_color>`

Цвет модуляции для значка :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabBar_theme_color_font_disabled_color>`

Цвет шрифта отключенных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_hovered_color>`

Цвет шрифта вкладки, на которую в данный момент наведен курсор. Не применяется к выбранной вкладке.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabBar_theme_color_font_outline_color>`

Оттенок контура текста названия вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_selected_color>`

Цвет шрифта текущей выбранной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabBar_theme_color_font_unselected_color>`

Цвет шрифта остальных, невыбранных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_TabBar_theme_constant_h_separation>`

Горизонтальное разделение между элементами внутри вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabBar_theme_constant_icon_max_width>`

Максимально допустимая ширина значка вкладки. Это ограничение применяется поверх размера значка по умолчанию, но до значения, установленного с помощью :ref:`set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. Высота регулируется в соответствии с соотношением значка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabBar_theme_constant_outline_size>`

Размер контура текста вкладки.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* больше значения :ref:`outline_size<class_TabBar_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabBar_theme_constant_tab_separation>`

Пространство между вкладками на панели вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabBar_theme_font_font>`

Шрифт, используемый для отображения названий вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabBar_theme_font_size_font_size>`

Размер шрифта названий вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_close:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **close** :ref:`🔗<class_TabBar_theme_icon_close>`

Значок для кнопки закрытия (см. :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabBar_theme_icon_decrement>`

Значок для кнопки со стрелкой влево, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Когда кнопка отключена (т.е. видна первая вкладка), она выглядит полупрозрачной.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabBar_theme_icon_decrement_highlight>`

Значок для кнопки со стрелкой влево, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Используется, когда на кнопку наведен курсор.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabBar_theme_icon_drop_mark>`

Значок, показывающий, куда будет перемещена перетаскиваемая вкладка (см. :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabBar_theme_icon_increment>`

Значок для кнопки со стрелкой вправо, которая появляется, когда вкладок слишком много, чтобы вписаться в ширину контейнера. Когда кнопка отключена (т.е. видна последняя вкладка), она становится полупрозрачной.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabBar_theme_icon_increment_highlight>`

Значок для кнопки со стрелкой вправо, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Используется, когда на кнопку наведен курсор.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_highlight** :ref:`🔗<class_TabBar_theme_style_button_highlight>`

Фон вкладки и кнопок закрытия при наведении на них курсора.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_pressed** :ref:`🔗<class_TabBar_theme_style_button_pressed>`

Фон вкладки и кнопки закрытия при нажатии.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabBar_theme_style_tab_disabled>`

Стиль отключенных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabBar_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` используется, когда **TabBar** находится в фокусе. :ref:`tab_focus<class_TabBar_theme_style_tab_focus>` :ref:`StyleBox<class_StyleBox>` отображается *над* базовой :ref:`StyleBox<class_StyleBox>` выбранной вкладки, поэтому следует использовать частично прозрачный :ref:`StyleBox<class_StyleBox>`, чтобы базовый :ref:`StyleBox<class_StyleBox>` оставался видимым. :ref:`StyleBox<class_StyleBox>` представляющий контур или подчеркивание, хорошо подходит для этой цели. Чтобы отключить визуальный эффект фокуса, назначьте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Обратите внимание, что отключение визуального эффекта фокуса навредит удобству использования навигации с помощью клавиатуры/контроллера, поэтому это не рекомендуется по соображениям доступности.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabBar_theme_style_tab_hovered>`

Стиль текущей наведенной вкладки. Не применяется к выбранной вкладке.

\ **Примечание:** Этот стиль будет отрисован с той же шириной, что и :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>` как минимум.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabBar_theme_style_tab_selected>`

Стиль текущей выбранной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabBar_theme_style_tab_unselected>`

Стиль остальных, невыбранных вкладок.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
