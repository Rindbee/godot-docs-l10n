:github_url: hide

.. _class_Control:

Control
=======

**Hereda:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`BaseButton<class_BaseButton>`, :ref:`ColorRect<class_ColorRect>`, :ref:`Container<class_Container>`, :ref:`GraphEdit<class_GraphEdit>`, :ref:`ItemList<class_ItemList>`, :ref:`Label<class_Label>`, :ref:`LineEdit<class_LineEdit>`, :ref:`MenuBar<class_MenuBar>`, :ref:`NinePatchRect<class_NinePatchRect>`, :ref:`Panel<class_Panel>`, :ref:`Range<class_Range>`, :ref:`ReferenceRect<class_ReferenceRect>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Separator<class_Separator>`, :ref:`TabBar<class_TabBar>`, :ref:`TextEdit<class_TextEdit>`, :ref:`TextureRect<class_TextureRect>`, :ref:`Tree<class_Tree>`, :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`

Base class for all GUI controls. Adapts its position and size based on its parent control.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Base class for all UI-related nodes. **Control** features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and offsets relative to the anchor. The offsets update automatically when the node, any of its parents, or the screen size change.

For more information on Godot's UI system, anchors, offsets, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from **Control** and :ref:`Container<class_Container>` nodes.

\ **Note:** Since both :ref:`Node2D<class_Node2D>` and **Control** inherit from :ref:`CanvasItem<class_CanvasItem>`, they share several concepts from the class such as the :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` and :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` properties.

\ **User Interface nodes and input**\ 

Godot propagates input events via viewports. Each :ref:`Viewport<class_Viewport>` is responsible for propagating :ref:`InputEvent<class_InputEvent>`\ s to their child nodes. As the :ref:`SceneTree.root<class_SceneTree_property_root>` is a :ref:`Window<class_Window>`, this already happens automatically for all UI elements in your game.

Input events are propagated through the :ref:`SceneTree<class_SceneTree>` from the root node to all child nodes by calling :ref:`Node._input()<class_Node_private_method__input>`. For UI elements specifically, it makes more sense to override the virtual method :ref:`_gui_input()<class_Control_private_method__gui_input>`, which filters out unrelated input events, such as by checking z-order, :ref:`mouse_filter<class_Control_property_mouse_filter>`, focus, or if the event was inside of the control's bounding box.

Call :ref:`accept_event()<class_Control_method_accept_event>` so no other node receives the event. Once you accept an input, it becomes handled so :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` will not process it.

Only one **Control** node can be in focus. Only the node in focus will receive events. To get the focus, call :ref:`grab_focus()<class_Control_method_grab_focus>`. **Control** nodes lose focus when another node grabs it, or if you hide the node in focus.

Sets :ref:`mouse_filter<class_Control_property_mouse_filter>` to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` to tell a **Control** node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.

\ :ref:`Theme<class_Theme>` resources change the control's appearance. The :ref:`theme<class_Control_property_theme>` of a **Control** node affects all of its direct and indirect children (as long as a chain of controls is uninterrupted). To override some of the theme items, call one of the ``add_theme_*_override`` methods, like :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`. You can also override theme items in the Inspector.

\ **Note:** Theme items are *not* :ref:`Object<class_Object>` properties. This means you can't access their values using :ref:`Object.get()<class_Object_method_get>` and :ref:`Object.set()<class_Object_method_set>`. Instead, use the ``get_theme_*`` and ``add_theme_*_override`` methods provided by this class.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación de GUI <../tutorials/ui/index>`

- :doc:`Dibujo personalizado en 2D <../tutorials/2d/custom_drawing_in_2d>`

- :doc:`Galería de nodos de Control <../tutorials/ui/control_node_gallery>`

- :doc:`Múltiples resoluciones <../tutorials/rendering/multiple_resolutions>`

- `Todas las Demos de GUI <https://github.com/godotengine/godot-demo-projects/tree/master/gui>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_controls_nodes<class_Control_property_accessibility_controls_nodes>`         | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_described_by_nodes<class_Control_property_accessibility_described_by_nodes>` | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`accessibility_description<class_Control_property_accessibility_description>`               | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_flow_to_nodes<class_Control_property_accessibility_flow_to_nodes>`           | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_labeled_by_nodes<class_Control_property_accessibility_labeled_by_nodes>`     | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` | :ref:`accessibility_live<class_Control_property_accessibility_live>`                             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`accessibility_name<class_Control_property_accessibility_name>`                             | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_bottom<class_Control_property_anchor_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_left<class_Control_property_anchor_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_right<class_Control_property_anchor_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_top<class_Control_property_anchor_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`auto_translate<class_Control_property_auto_translate>`                                     |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`clip_contents<class_Control_property_clip_contents>`                                       | ``false``                                                                     |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`                           | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`     | :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                               | :ref:`focus_mode<class_Control_property_focus_mode>`                                             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`                       | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`                           | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>`                         | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_next<class_Control_property_focus_next>`                                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_previous<class_Control_property_focus_previous>`                                     | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`global_position<class_Control_property_global_position>`                                   |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                       | :ref:`grow_horizontal<class_Control_property_grow_horizontal>`                                   | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                       | :ref:`grow_vertical<class_Control_property_grow_vertical>`                                       | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`LayoutDirection<enum_Control_LayoutDirection>`                   | :ref:`layout_direction<class_Control_property_layout_direction>`                                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`localize_numeral_system<class_Control_property_localize_numeral_system>`                   | ``true``                                                                      |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`     | :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                           | :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                           | :ref:`mouse_filter<class_Control_property_mouse_filter>`                                         | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`mouse_force_pass_scroll_events<class_Control_property_mouse_force_pass_scroll_events>`     | ``true``                                                                      |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_bottom<class_Control_property_offset_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_left<class_Control_property_offset_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_right<class_Control_property_offset_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_top<class_Control_property_offset_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>`    | physics_interpolation_mode                                                                       | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`pivot_offset<class_Control_property_pivot_offset>`                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`position<class_Control_property_position>`                                                 | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`rotation<class_Control_property_rotation>`                                                 | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`rotation_degrees<class_Control_property_rotation_degrees>`                                 |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`scale<class_Control_property_scale>`                                                       | ``Vector2(1, 1)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                                | :ref:`shortcut_context<class_Control_property_shortcut_context>`                                 |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`size<class_Control_property_size>`                                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                 | :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>`                       | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`                 | ``1.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                 | :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`                           | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>`                                              | :ref:`theme<class_Control_property_theme>`                                                       |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`theme_type_variation<class_Control_property_theme_type_variation>`                         | ``&""``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`                  | :ref:`tooltip_auto_translate_mode<class_Control_property_tooltip_auto_translate_mode>`           | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`tooltip_text<class_Control_property_tooltip_text>`                                         | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_accessibility_get_contextual_info<class_Control_private_method__accessibility_get_contextual_info>`\ (\ ) |virtual| |const|                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_can_drop_data<class_Control_private_method__can_drop_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const|                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_drop_data<class_Control_private_method__drop_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual|                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_get_accessibility_container_name<class_Control_private_method__get_accessibility_container_name>`\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const|                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                | :ref:`_get_drag_data<class_Control_private_method__get_drag_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`_get_minimum_size<class_Control_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_get_tooltip<class_Control_private_method__get_tooltip>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_gui_input<class_Control_private_method__gui_input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_has_point<class_Control_private_method__has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                                               |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                  | :ref:`_make_custom_tooltip<class_Control_private_method__make_custom_tooltip>`\ (\ for_text\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`_structured_text_parser<class_Control_private_method__structured_text_parser>`\ (\ args\: :ref:`Array<class_Array>`, text\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accept_event<class_Control_method_accept_event>`\ (\ )                                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accessibility_drag<class_Control_method_accessibility_drag>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accessibility_drop<class_Control_method_accessibility_drop>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_color_override<class_Control_method_add_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ )                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_constant_override<class_Control_method_add_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ )                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_font_override<class_Control_method_add_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ )                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_font_size_override<class_Control_method_add_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ )                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_icon_override<class_Control_method_add_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_stylebox_override<class_Control_method_add_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ )                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`begin_bulk_theme_override<class_Control_method_begin_bulk_theme_override>`\ (\ )                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`end_bulk_theme_override<class_Control_method_end_bulk_theme_override>`\ (\ )                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_next_valid_focus<class_Control_method_find_next_valid_focus>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_prev_valid_focus<class_Control_method_find_prev_valid_focus>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_valid_focus_neighbor<class_Control_method_find_valid_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`force_drag<class_Control_method_force_drag>`\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ )                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_anchor<class_Control_method_get_anchor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_begin<class_Control_method_get_begin>`\ (\ ) |const|                                                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_minimum_size<class_Control_method_get_combined_minimum_size>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                 | :ref:`get_cursor_shape<class_Control_method_get_cursor_shape>`\ (\ position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_end<class_Control_method_get_end>`\ (\ ) |const|                                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                     | :ref:`get_focus_mode_with_override<class_Control_method_get_focus_mode_with_override>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                              | :ref:`get_focus_neighbor<class_Control_method_get_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`get_global_rect<class_Control_method_get_global_rect>`\ (\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_minimum_size<class_Control_method_get_minimum_size>`\ (\ ) |const|                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                 | :ref:`get_mouse_filter_with_override<class_Control_method_get_mouse_filter_with_override>`\ (\ ) |const|                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_offset<class_Control_method_get_offset>`\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_parent_area_size<class_Control_method_get_parent_area_size>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`get_parent_control<class_Control_method_get_parent_control>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`get_rect<class_Control_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_screen_position<class_Control_method_get_screen_position>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`get_theme_color<class_Control_method_get_theme_color>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_constant<class_Control_method_get_theme_constant>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_theme_default_base_scale<class_Control_method_get_theme_default_base_scale>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                      | :ref:`get_theme_default_font<class_Control_method_get_theme_default_font>`\ (\ ) |const|                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_default_font_size<class_Control_method_get_theme_default_font_size>`\ (\ ) |const|                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                      | :ref:`get_theme_font<class_Control_method_get_theme_font>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_font_size<class_Control_method_get_theme_font_size>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`get_theme_icon<class_Control_method_get_theme_icon>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`                              | :ref:`get_theme_stylebox<class_Control_method_get_theme_stylebox>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`get_tooltip<class_Control_method_get_tooltip>`\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`grab_click_focus<class_Control_method_grab_click_focus>`\ (\ )                                                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`grab_focus<class_Control_method_grab_focus>`\ (\ )                                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_focus<class_Control_method_has_focus>`\ (\ ) |const|                                                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_color<class_Control_method_has_theme_color>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_color_override<class_Control_method_has_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_constant<class_Control_method_has_theme_constant>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_constant_override<class_Control_method_has_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font<class_Control_method_has_theme_font>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_override<class_Control_method_has_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_size<class_Control_method_has_theme_font_size>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_size_override<class_Control_method_has_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_icon<class_Control_method_has_theme_icon>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_icon_override<class_Control_method_has_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_stylebox<class_Control_method_has_theme_stylebox>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_stylebox_override<class_Control_method_has_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_drag_successful<class_Control_method_is_drag_successful>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_layout_rtl<class_Control_method_is_layout_rtl>`\ (\ ) |const|                                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`release_focus<class_Control_method_release_focus>`\ (\ )                                                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_color_override<class_Control_method_remove_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_constant_override<class_Control_method_remove_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_font_override<class_Control_method_remove_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_font_size_override<class_Control_method_remove_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_icon_override<class_Control_method_remove_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_stylebox_override<class_Control_method_remove_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`reset_size<class_Control_method_reset_size>`\ (\ )                                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchor<class_Control_method_set_anchor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ )                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchor_and_offset<class_Control_method_set_anchor_and_offset>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ )              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchors_and_offsets_preset<class_Control_method_set_anchors_and_offsets_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchors_preset<class_Control_method_set_anchors_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_begin<class_Control_method_set_begin>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_drag_forwarding<class_Control_method_set_drag_forwarding>`\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ )                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_drag_preview<class_Control_method_set_drag_preview>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_end<class_Control_method_set_end>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_focus_neighbor<class_Control_method_set_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_global_position<class_Control_method_set_global_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_offset<class_Control_method_set_offset>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_offsets_preset<class_Control_method_set_offsets_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ )                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_position<class_Control_method_set_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_Control_method_set_size>`\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`update_minimum_size<class_Control_method_update_minimum_size>`\ (\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`warp_mouse<class_Control_method_warp_mouse>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Control_signal_focus_entered:

.. rst-class:: classref-signal

**focus_entered**\ (\ ) :ref:`🔗<class_Control_signal_focus_entered>`

Emitida cuando el nodo obtiene el foco.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_focus_exited:

.. rst-class:: classref-signal

**focus_exited**\ (\ ) :ref:`🔗<class_Control_signal_focus_exited>`

Emitida cuando el nodo pierde el foco.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_gui_input:

.. rst-class:: classref-signal

**gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_Control_signal_gui_input>`

Emitida cuando el nodo recibe un :ref:`InputEvent<class_InputEvent>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_minimum_size_changed:

.. rst-class:: classref-signal

**minimum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_minimum_size_changed>`

Emitida cuando el tamaño mínimo del nodo cambia.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_Control_signal_mouse_entered>`

Emitted when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect, which Control receives the signal.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_Control_signal_mouse_exited>`

Emitted when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect, which Control receives the signal.

\ **Note:** If you want to check whether the mouse truly left the area, ignoring any top nodes, you can use code like this:

::

    func _on_mouse_exited():
        if not Rect2(Vector2(), size).has_point(get_local_mouse_position()):
            # Not hovering over area.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_resized:

.. rst-class:: classref-signal

**resized**\ (\ ) :ref:`🔗<class_Control_signal_resized>`

Emitida cuando el control cambia de tamaño.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_size_flags_changed:

.. rst-class:: classref-signal

**size_flags_changed**\ (\ ) :ref:`🔗<class_Control_signal_size_flags_changed>`

Emitida cuando una de las flags de tamaño cambia. Véase :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_theme_changed:

.. rst-class:: classref-signal

**theme_changed**\ (\ ) :ref:`🔗<class_Control_signal_theme_changed>`

Emitida cuando se envía la notificación :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Control_FocusMode:

.. rst-class:: classref-enumeration

enum **FocusMode**: :ref:`🔗<enum_Control_FocusMode>`

.. _class_Control_constant_FOCUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_NONE** = ``0``

El nodo no puede captar el foco. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_CLICK:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_CLICK** = ``1``

El nodo sólo puede captar el foco en los clics del ratón. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ALL** = ``2``

El nodo puede tomar el foco al hacer clic con el ratón, usando las flechas y las teclas Tab en el teclado, o usando los botones D-pad en un gamepad. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ACCESSIBILITY:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ACCESSIBILITY** = ``3``

El nodo solo puede captar el foco cuando el lector de pantalla está activo. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_FocusBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **FocusBehaviorRecursive**: :ref:`🔗<enum_Control_FocusBehaviorRecursive>`

.. _class_Control_constant_FOCUS_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_INHERITED** = ``0``

Hereda el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` del control padre. Si no hay un control padre, es lo mismo que :ref:`FOCUS_BEHAVIOR_ENABLED<class_Control_constant_FOCUS_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_DISABLED** = ``1``

Evita que el control reciba el foco. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` devolverá :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_ENABLED** = ``2``

Permite que el control reciba el foco, dependiendo del :ref:`focus_mode<class_Control_property_focus_mode>`. Esto se puede usar para ignorar el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` del padre. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` devolverá el :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **MouseBehaviorRecursive**: :ref:`🔗<enum_Control_MouseBehaviorRecursive>`

.. _class_Control_constant_MOUSE_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_INHERITED** = ``0``

Hereda el :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` del control padre. Si no hay un control padre, es lo mismo que :ref:`MOUSE_BEHAVIOR_ENABLED<class_Control_constant_MOUSE_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_DISABLED** = ``1``

Evita que el control reciba entradas del ratón. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` devolverá :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_ENABLED** = ``2``

Permite que el control reciba entradas del ratón, dependiendo del :ref:`mouse_filter<class_Control_property_mouse_filter>`. Esto puede usarse para ignorar el :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` del padre. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` devolverá el :ref:`mouse_filter<class_Control_property_mouse_filter>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_CursorShape:

.. rst-class:: classref-enumeration

enum **CursorShape**: :ref:`🔗<enum_Control_CursorShape>`

.. _class_Control_constant_CURSOR_ARROW:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_ARROW** = ``0``

Mostrar el cursor del ratón de la flecha del sistema cuando el usuario pasa por encima del nodo. Usar con :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. _class_Control_constant_CURSOR_IBEAM:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_IBEAM** = ``1``

Muestra el cursor del ratón del sistema I-beam cuando el usuario pasa por encima del nodo. El puntero del I-beam tiene una forma similar a la de la "I". Le dice al usuario que puede resaltar o insertar texto.

.. _class_Control_constant_CURSOR_POINTING_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_POINTING_HAND** = ``2``

Muestra el cursor del ratón de la mano del sistema cuando el usuario pasa por encima del nodo.

.. _class_Control_constant_CURSOR_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CROSS** = ``3``

Muestra el cursor cruzado del ratón del sistema cuando el usuario pasa por encima del nodo.

.. _class_Control_constant_CURSOR_WAIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_WAIT** = ``4``

Muestra el cursor del ratón de espera del sistema cuando el usuario pasa por encima del nodo. A menudo un reloj de arena.

.. _class_Control_constant_CURSOR_BUSY:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BUSY** = ``5``

Muestra el cursor del ratón ocupado del sistema cuando el usuario pasa por encima del nodo. A menudo una flecha con un pequeño reloj de arena.

.. _class_Control_constant_CURSOR_DRAG:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_DRAG** = ``6``

Muestra el cursor del ratón de arrastre del sistema, a menudo un puño cerrado o un símbolo de cruz, cuando el usuario pasa por encima del nodo. Le dice al usuario que está arrastrando un elemento, como un nodo en el Dock de la escena.

.. _class_Control_constant_CURSOR_CAN_DROP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CAN_DROP** = ``7``

Muestra el cursor del ratón del sistema cuando el usuario pasa por encima del nodo. Puede ser una mano abierta. Le dice al usuario que puede soltar un elemento que está agarrando, como un nodo en el Dock de la escena.

.. _class_Control_constant_CURSOR_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FORBIDDEN** = ``8``

Muestra el cursor del ratón prohibido del sistema cuando el usuario pasa por encima del nodo. A menudo un círculo cruzado.

.. _class_Control_constant_CURSOR_VSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSIZE** = ``9``

Muestra el cursor del ratón de tamaño vertical del sistema cuando el usuario pasa por encima del nodo. Una flecha vertical de doble punta. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel verticalmente.

.. _class_Control_constant_CURSOR_HSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSIZE** = ``10``

Muestra el cursor del ratón de tamaño horizontal del sistema cuando el usuario pasa por encima del nodo. Una flecha horizontal de doble punta. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel horizontalmente.

.. _class_Control_constant_CURSOR_BDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BDIAGSIZE** = ``11``

Muestra el cursor de cambio de tamaño de la ventana del sistema del ratón cuando el usuario pasa por encima del nodo. El cursor es una flecha de doble punta que va de abajo a la izquierda a arriba a la derecha. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel tanto horizontal como verticalmente.

.. _class_Control_constant_CURSOR_FDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FDIAGSIZE** = ``12``

Muestra el cursor del cambio de tamaño de la ventana del sistema cuando el usuario pasa por encima del nodo. El cursor es una flecha de doble punta que va de arriba a la izquierda a abajo a la derecha, lo opuesto a :ref:`CURSOR_BDIAGSIZE<class_Control_constant_CURSOR_BDIAGSIZE>`. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel tanto horizontal como verticalmente.

.. _class_Control_constant_CURSOR_MOVE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_MOVE** = ``13``

Muestra el cursor del ratón del sistema cuando el usuario pasa por encima del nodo. Muestra 2 flechas de doble cabeza en un ángulo de 90 grados. Le dice al usuario que puede mover libremente un elemento de la interfaz de usuario.

.. _class_Control_constant_CURSOR_VSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSPLIT** = ``14``

Muestra el cursor del ratón dividido verticalmente del sistema cuando el usuario pasa por encima del nodo. En Windows, es lo mismo que :ref:`CURSOR_VSIZE<class_Control_constant_CURSOR_VSIZE>`.

.. _class_Control_constant_CURSOR_HSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSPLIT** = ``15``

Muestra el cursor del ratón dividido horizontalmente del sistema cuando el usuario pasa por encima del nodo. En Windows, es lo mismo que :ref:`CURSOR_HSIZE<class_Control_constant_CURSOR_HSIZE>`.

.. _class_Control_constant_CURSOR_HELP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HELP** = ``16``

Mostrar el cursor del ratón de ayuda del sistema cuando el usuario pasa por encima del nodo, un signo de interrogación.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPreset:

.. rst-class:: classref-enumeration

enum **LayoutPreset**: :ref:`🔗<enum_Control_LayoutPreset>`

.. _class_Control_constant_PRESET_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_LEFT** = ``0``

Pone las cuatro anclas en la parte superior izquierda de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_RIGHT** = ``1``

Pone las cuatro anclas en la parte superior derecha de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_LEFT** = ``2``

Pone las cuatro anclas en la parte inferior izquierda de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_RIGHT** = ``3``

Pone las cuatro anclas en la parte inferior derecha de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_LEFT** = ``4``

Pone las 4 anclas en el centro del borde izquierdo de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_TOP** = ``5``

Pone las 4 anclas en el centro del borde superior de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_RIGHT** = ``6``

Pone las 4 anclas en el centro del borde derecho de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_BOTTOM** = ``7``

Pone las 4 anclas en el centro del borde inferior de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER** = ``8``

Pone las cuatro anclas en el centro de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_LEFT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_LEFT_WIDE** = ``9``

Ancla las 4 anclas al borde izquierdo del control padre. El margen izquierdo se vuelve relativo al borde izquierdo y el margen superior relativo a la esquina superior izquierda del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_WIDE** = ``10``

Ancla las 4 anclas al borde superior del control padre. El margen izquierdo se vuelve relativo a la esquina superior izquierda, el margen superior relativo al borde superior, y el margen derecho relativo a la esquina superior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_RIGHT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_RIGHT_WIDE** = ``11``

Ancla las 4 anclas al borde derecho del control padre. El margen derecho se vuelve relativo al borde derecho y el margen superior relativo a la esquina superior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_WIDE** = ``12``

Ancla las 4 anclas al borde inferior del control padre. El margen izquierdo se vuelve relativo a la esquina inferior izquierda, el margen inferior relativo al borde inferior, y el margen derecho relativo a la esquina inferior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_VCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_VCENTER_WIDE** = ``13``

Pone las 4 anclas en una línea vertical que corta el control parental por la mitad. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_HCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_HCENTER_WIDE** = ``14``

Pone las 4 anclas en una línea horizontal que corta el control parental por la mitad. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_FULL_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_FULL_RECT** = ``15``

Ancla las 4 anclas a las esquinas respectivas del control padre. Establezca los 4 márgenes a 0 después de aplicar este preajuste y el **Control** se ajustará a su control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPresetMode:

.. rst-class:: classref-enumeration

enum **LayoutPresetMode**: :ref:`🔗<enum_Control_LayoutPresetMode>`

.. _class_Control_constant_PRESET_MODE_MINSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_MINSIZE** = ``0``

El control será redimensionado a su tamaño mínimo.

.. _class_Control_constant_PRESET_MODE_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_WIDTH** = ``1``

El ancho del control no cambiará.

.. _class_Control_constant_PRESET_MODE_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_HEIGHT** = ``2``

La altura del control no cambiará.

.. _class_Control_constant_PRESET_MODE_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_SIZE** = ``3``

El tamaño del control no cambiará.

.. rst-class:: classref-item-separator

----

.. _enum_Control_SizeFlags:

.. rst-class:: classref-enumeration

flags **SizeFlags**: :ref:`🔗<enum_Control_SizeFlags>`

.. _class_Control_constant_SIZE_SHRINK_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_BEGIN** = ``0``

Le dice al :ref:`Container<class_Container>` padre que alinee el nodo con su inicio, ya sea el borde superior o el izquierdo. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

\ **Nota:** Establecer esta flag es igual a no tener ninguna flag de tamaño.

.. _class_Control_constant_SIZE_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_FILL** = ``1``

Le dice al :ref:`Container<class_Container>` padre que expanda los límites de este nodo para llenar todo el espacio disponible sin empujar a ningún otro nodo. Es mutuamente exclusivo con las flags de tamaño de encogimiento. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND** = ``2``

Le dice al padre :ref:`Container<class_Container>` que deje que este nodo tome todo el espacio disponible en el eje que marque. Si varios nodos vecinos están configurados para expandirse, compartirán el espacio basado en su relación de estiramiento. Véase :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`. Utilízalo con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND_FILL** = ``3``

Establece las flags de tamaño del nodo tanto para rellenar como para expandir. Véase :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` para más información.

.. _class_Control_constant_SIZE_SHRINK_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_CENTER** = ``4``

Le dice al :ref:`Container<class_Container>` padre que centre el nodo en el espacio disponible. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_SHRINK_END:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_END** = ``8``

Le dice al :ref:`Container<class_Container>` padre que alinee el nodo con su final, ya sea el borde inferior o el derecho. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseFilter:

.. rst-class:: classref-enumeration

enum **MouseFilter**: :ref:`🔗<enum_Control_MouseFilter>`

.. _class_Control_constant_MOUSE_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_STOP** = ``0``

El control recibirá los eventos de entrada de movimiento del ratón y los eventos de entrada del botón del ratón si se hace clic en él a través de :ref:`_gui_input()<class_Control_private_method__gui_input>`. El control también recibirá las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` y :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Estos eventos se marcan automáticamente como manejados, y no se propagarán más a otros controles. Esto también resulta en el bloqueo de señales en otros controles.

.. _class_Control_constant_MOUSE_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_PASS** = ``1``

The control will receive mouse movement input events and mouse button input events if clicked on through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals.

If this control does not handle the event, the event will propagate up to its parent control if it has one. The event is bubbled up the node hierarchy until it reaches a non-:ref:`CanvasItem<class_CanvasItem>`, a control with :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`, or a :ref:`CanvasItem<class_CanvasItem>` with :ref:`CanvasItem.top_level<class_CanvasItem_property_top_level>` enabled. This will allow signals to fire in all controls it reaches. If no control handled it, the event will be passed to :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>` for further processing.

.. _class_Control_constant_MOUSE_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_IGNORE** = ``2``

El control no recibirá ningún evento de entrada de movimiento del ratón ni eventos de entrada del botón del ratón a través de :ref:`_gui_input()<class_Control_private_method__gui_input>`. El control tampoco recibirá las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` ni :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Esto no bloqueará a otros controles para que no reciban estos eventos o para que no activen las señales. Los eventos ignorados no se manejarán automáticamente. Si un hijo tiene :ref:`MOUSE_FILTER_PASS<class_Control_constant_MOUSE_FILTER_PASS>` y se ha pasado un evento a este control, el evento se propagará aún más hasta el padre del control.

\ **Nota:** Si el control ha recibido :ref:`mouse_entered<class_Control_signal_mouse_entered>` pero no :ref:`mouse_exited<class_Control_signal_mouse_exited>`, cambiar el :ref:`mouse_filter<class_Control_property_mouse_filter>` a :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` hará que se emita :ref:`mouse_exited<class_Control_signal_mouse_exited>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_GrowDirection:

.. rst-class:: classref-enumeration

enum **GrowDirection**: :ref:`🔗<enum_Control_GrowDirection>`

.. _class_Control_constant_GROW_DIRECTION_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BEGIN** = ``0``

El control crecerá hacia la izquierda o hacia arriba para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual en el eje respectivo.

.. _class_Control_constant_GROW_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_END** = ``1``

El control crecerá hacia la derecha o hacia abajo para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual en el eje respectivo.

.. _class_Control_constant_GROW_DIRECTION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BOTH** = ``2``

El control crecerá en ambas direcciones por igual para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual.

.. rst-class:: classref-item-separator

----

.. _enum_Control_Anchor:

.. rst-class:: classref-enumeration

enum **Anchor**: :ref:`🔗<enum_Control_Anchor>`

.. _class_Control_constant_ANCHOR_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_BEGIN** = ``0``

Encaja uno de los 4 lados del ancla en el origen del nodo ``Rect``, en la parte superior izquierda. Úsalo con una de las variables miembro ``anchor_*``, como :ref:`anchor_left<class_Control_property_anchor_left>`. Para cambiar las 4 anclas a la vez, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_ANCHOR_END:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_END** = ``1``

Pone uno de los 4 lados del ancla al final del nodo ``Rect``, en la parte inferior derecha. Úsalo con una de las variables miembros ``anchor_*``, como :ref:`anchor_left<class_Control_property_anchor_left>`. Para cambiar las 4 anclas a la vez, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutDirection:

.. rst-class:: classref-enumeration

enum **LayoutDirection**: :ref:`🔗<enum_Control_LayoutDirection>`

.. _class_Control_constant_LAYOUT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_INHERITED** = ``0``

Dirección de diseño automática, determinada por la dirección de diseño del control padre.

.. _class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_APPLICATION_LOCALE** = ``1``

Dirección de diseño automática, determinada por la configuración regional actual. La dirección de diseño de derecha a izquierda se utiliza automáticamente para los idiomas que lo requieren, como el árabe y el hebreo, pero solo si se carga un archivo de traducción válido para el idioma dado (a menos que dicho idioma esté configurado como alternativa en :ref:`ProjectSettings.internationalization/locale/fallback<class_ProjectSettings_property_internationalization/locale/fallback>`). Para todos los demás idiomas (o si Godot no encuentra un archivo de traducción válido), se utiliza la dirección de diseño de izquierda a derecha. Si utilizas :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), siempre se utiliza la dirección de diseño de izquierda a derecha, independientemente del idioma. La dirección de diseño de derecha a izquierda también se puede forzar mediante :ref:`ProjectSettings.internationalization/rendering/force_right_to_left_layout_direction<class_ProjectSettings_property_internationalization/rendering/force_right_to_left_layout_direction>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LTR** = ``2``

Dirección de diseño de izquierda a derecha.

.. _class_Control_constant_LAYOUT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_RTL** = ``3``

Dirección de diseño de derecha a izquierda.

.. _class_Control_constant_LAYOUT_DIRECTION_SYSTEM_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_SYSTEM_LOCALE** = ``4``

Dirección de diseño automática, determinada por la configuración regional del sistema. La dirección de diseño de derecha a izquierda se utiliza automáticamente para los idiomas que lo requieren, como el árabe y el hebreo, pero solo si se carga un archivo de traducción válido para el idioma dado. Para todos los demás idiomas (o si Godot no encuentra un archivo de traducción válido), se utiliza la dirección de diseño de izquierda a derecha. Si utilizas :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), siempre se utiliza la dirección de diseño de izquierda a derecha, independientemente del idioma.

.. _class_Control_constant_LAYOUT_DIRECTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_MAX** = ``5``

Representa el tamaño del enum :ref:`LayoutDirection<enum_Control_LayoutDirection>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LOCALE** = ``1``

**Obsoleto:** Use :ref:`LAYOUT_DIRECTION_APPLICATION_LOCALE<class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE>` instead.



.. rst-class:: classref-item-separator

----

.. _enum_Control_TextDirection:

.. rst-class:: classref-enumeration

enum **TextDirection**: :ref:`🔗<enum_Control_TextDirection>`

.. _class_Control_constant_TEXT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_INHERITED** = ``3``

La dirección de escritura del texto es la misma que la dirección del diseño.

.. _class_Control_constant_TEXT_DIRECTION_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_AUTO** = ``0``

Dirección de escritura de texto automática, determinada por la configuración regional actual y el contenido del texto.

.. _class_Control_constant_TEXT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_LTR** = ``1``

Dirección de escritura de texto de izquierda a derecha.

.. _class_Control_constant_TEXT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_RTL** = ``2``

Dirección de escritura de texto de derecha a izquierda.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Control_constant_NOTIFICATION_RESIZED:

.. rst-class:: classref-constant

**NOTIFICATION_RESIZED** = ``40`` :ref:`🔗<class_Control_constant_NOTIFICATION_RESIZED>`

Se envía cuando el nodo cambia de tamaño. Usa :ref:`size<class_Control_property_size>` para obtener el nuevo tamaño.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER** = ``41`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`

Enviado cuando el cursor del ratón entra en el área visible del control (o de cualquier control hijo), que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_ENTER_SELF<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT** = ``42`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`

Enviado cuando el cursor del ratón sale del área visible del control (y de todos sus controles hijos), que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_EXIT_SELF<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER_SELF** = ``60`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`

**Experimental:** The reason this notification is sent may change in the future.

Enviado cuando el cursor del ratón entra en el área visible del control, que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_ENTER<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT_SELF** = ``61`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`

**Experimental:** The reason this notification is sent may change in the future.

Enviado cuando el cursor del ratón sale del área visible del control, que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_EXIT<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`.

.. _class_Control_constant_NOTIFICATION_FOCUS_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_ENTER** = ``43`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_ENTER>`

Enviado cuando el nodo agarra el foco.

.. _class_Control_constant_NOTIFICATION_FOCUS_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_EXIT** = ``44`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_EXIT>`

Enviado cuando el nodo pierde el enfoque.

.. _class_Control_constant_NOTIFICATION_THEME_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_THEME_CHANGED** = ``45`` :ref:`🔗<class_Control_constant_NOTIFICATION_THEME_CHANGED>`

Enviado cuando el nodo necesita refrescar sus elementos de tema. Esto sucede en uno de los siguientes casos:

- La propiedad :ref:`theme<class_Control_property_theme>` se cambia en este nodo o en cualquiera de sus ancestros.

- La propiedad :ref:`theme_type_variation<class_Control_property_theme_type_variation>` se cambia en este nodo.

- Se cambia una de las sobrescrituras de propiedades de tema del nodo.

- El nodo entra en el árbol de escenas.

\ **Nota:** Como optimización, esta notificación no se enviará por cambios que ocurran mientras este nodo esté fuera del árbol de escenas. En su lugar, todas las actualizaciones de los elementos del tema pueden aplicarse a la vez cuando el nodo entre en el árbol de escenas.

\ **Nota:** Esta notificación se recibe junto con :ref:`Node.NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, por lo que si estás instanciando una escena, los nodos hijos aún no estarán inicializados. Puedes usarla para configurar el tema para este nodo, para nodos hijos creados desde script, o si quieres acceder a los nodos hijos añadidos en el editor, asegúrate de que el nodo esté listo usando :ref:`Node.is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_THEME_CHANGED:
            if not is_node_ready():
                await ready # Espera a la señal ready.
            $Label.add_theme_color_override("font_color", Color.YELLOW)

.. _class_Control_constant_NOTIFICATION_SCROLL_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_BEGIN** = ``47`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_BEGIN>`

Se envía cuando este nodo está dentro de un :ref:`ScrollContainer<class_ScrollContainer>` que ha empezado a desplazarse al arrastrar el área desplazable *con un evento táctil*. Esta notificación *no* se envía al desplazar arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. _class_Control_constant_NOTIFICATION_SCROLL_END:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_END** = ``48`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_END>`

Se envía cuando este nodo está dentro de un :ref:`ScrollContainer<class_ScrollContainer>` que ha dejado de desplazarse al arrastrar el área desplazable *con un evento táctil*. Esta notificación *no* se envía al desplazar arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. _class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LAYOUT_DIRECTION_CHANGED** = ``49`` :ref:`🔗<class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED>`

Enviado cuando la dirección de la disposición del control cambia de LTR o RTL o viceversa. Esta notificación se propaga a los nodos Control hijos como resultado de un cambio en :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Control_property_accessibility_controls_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_controls_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_controls_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_controls_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_controls_nodes**\ (\ )

Las rutas a los nodos que están controlados por este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_described_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_described_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_described_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_described_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_described_by_nodes**\ (\ )

Las rutas a los nodos que describen este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_description** = ``""`` :ref:`🔗<class_Control_property_accessibility_description>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_description**\ (\ )

La descripción del nodo legible por humanos que se reporta a las aplicaciones de asistencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_flow_to_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_flow_to_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_flow_to_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_flow_to_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_flow_to_nodes**\ (\ )

Las rutas a los nodos a los que fluye este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_labeled_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_labeled_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_labeled_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_labeled_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_labeled_by_nodes**\ (\ )

Las rutas a los nodos que etiquetan este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_live:

.. rst-class:: classref-property

:ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` **accessibility_live** = ``0`` :ref:`🔗<class_Control_property_accessibility_live>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_live**\ (\ value\: :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>`\ )
- :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` **get_accessibility_live**\ (\ )

El modo con el que se actualiza una región activa. Una región activa es un :ref:`Node<class_Node>` que se actualiza como resultado de un evento externo cuando el foco del usuario puede estar en otro lugar.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_name** = ``""`` :ref:`🔗<class_Control_property_accessibility_name>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_name**\ (\ )

El nombre del nodo legible por humanos que se informa a las apps de asistencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_bottom** = ``0.0`` :ref:`🔗<class_Control_property_anchor_bottom>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde inferior del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen inferior se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_left** = ``0.0`` :ref:`🔗<class_Control_property_anchor_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde izquierdo del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen izquierdo se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_right** = ``0.0`` :ref:`🔗<class_Control_property_anchor_right>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde derecho del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen derecho se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_top** = ``0.0`` :ref:`🔗<class_Control_property_anchor_top>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde superior del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen superior se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_auto_translate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_translate** :ref:`🔗<class_Control_property_auto_translate>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_translating**\ (\ )

**Obsoleto:** Use :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` and :ref:`Node.can_auto_translate()<class_Node_method_can_auto_translate>` instead.

Activa o desactiva si algún texto debe cambiar automáticamente a su versión traducida dependiendo de la configuración regional actual.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_clip_contents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_contents** = ``false`` :ref:`🔗<class_Control_property_clip_contents>`

.. rst-class:: classref-property-setget

- |void| **set_clip_contents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_contents**\ (\ )

Activa si el renderizado de los hijos basados en :ref:`CanvasItem<class_CanvasItem>` debe ser recortado al rectángulo de este control. Si es ``true``, las partes de un hijo que estarían visiblemente fuera del rectángulo de este control no se renderizarán y no recibirán entrada.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_minimum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_minimum_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_custom_minimum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_minimum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_minimum_size**\ (\ )

El tamaño mínimo del rectángulo delimitador del nodo. Si lo estableces en un valor mayor que ``(0, 0)``, el rectángulo delimitador del nodo siempre tendrá al menos este tamaño. Ten en cuenta que los nodos **Control** tienen su tamaño mínimo interno devuelto por :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`. Depende del contenido del control, como texto, texturas o style boxes. El tamaño mínimo real es el valor máximo de esta propiedad y el tamaño mínimo interno (véase :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_behavior_recursive:

.. rst-class:: classref-property

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **focus_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_focus_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_focus_behavior_recursive**\ (\ value\: :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`\ )
- :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **get_focus_behavior_recursive**\ (\ )

Determina qué controles se pueden enfocar junto con :ref:`focus_mode<class_Control_property_focus_mode>`. Véase :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>`. Dado que el comportamiento predeterminado es :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>`, esto se puede utilizar para evitar que todos los controles secundarios se enfoquen.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **focus_mode** = ``0`` :ref:`🔗<class_Control_property_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode**\ (\ )

Determina qué controles se pueden enfocar. Solo se puede enfocar un control a la vez, y el control enfocado recibirá eventos de teclado, gamepad y ratón en :ref:`_gui_input()<class_Control_private_method__gui_input>`. Utiliza :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` para determinar si un control puede tomar el foco, ya que :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` también le afecta. Véase también :ref:`grab_focus()<class_Control_method_grab_focus>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_bottom:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_bottom** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha abajo en el teclado o abajo en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la parte inferior de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_left:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_left** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_left>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha izquierda en el teclado o a la izquierda en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_left<class_ProjectSettings_property_input/ui_left>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la izquierda de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_right:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_right** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_right>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha derecha en el teclado o a la derecha en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_right<class_ProjectSettings_property_input/ui_right>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la derecha de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_top:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_top** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_top>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha arriba en el teclado o arriba en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la parte superior de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_next:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_next** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_next>`

.. rst-class:: classref-property-setget

- |void| **set_focus_next**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_next**\ (\ )

Tells Godot which node it should give focus to if the user presses :kbd:`Tab` on a keyboard by default. You can change the key by editing the :ref:`ProjectSettings.input/ui_focus_next<class_ProjectSettings_property_input/ui_focus_next>` input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_previous:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_previous** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_previous>`

.. rst-class:: classref-property-setget

- |void| **set_focus_previous**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_previous**\ (\ )

Tells Godot which node it should give focus to if the user presses :kbd:`Shift + Tab` on a keyboard by default. You can change the key by editing the :ref:`ProjectSettings.input/ui_focus_prev<class_ProjectSettings_property_input/ui_focus_prev>` input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Control_property_global_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

La posición global del nodo, relativa al mundo (normalmente a la :ref:`CanvasLayer<class_CanvasLayer>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_horizontal:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_horizontal** = ``1`` :ref:`🔗<class_Control_property_grow_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_h_grow_direction**\ (\ )

Controla la dirección en el eje horizontal en la que el control debe crecer si su tamaño mínimo horizontal se cambia para que sea mayor que su tamaño actual, ya que el control siempre tiene que ser al menos del tamaño mínimo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_vertical:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_vertical** = ``1`` :ref:`🔗<class_Control_property_grow_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_v_grow_direction**\ (\ )

Controla la dirección en el eje vertical en la que el control debe crecer si su tamaño mínimo vertical se cambia para que sea mayor que su tamaño actual, ya que el control siempre tiene que ser al menos del tamaño mínimo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_layout_direction:

.. rst-class:: classref-property

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **layout_direction** = ``0`` :ref:`🔗<class_Control_property_layout_direction>`

.. rst-class:: classref-property-setget

- |void| **set_layout_direction**\ (\ value\: :ref:`LayoutDirection<enum_Control_LayoutDirection>`\ )
- :ref:`LayoutDirection<enum_Control_LayoutDirection>` **get_layout_direction**\ (\ )

Controla la dirección del diseño y la dirección de la escritura del texto. Los diseños de derecha a izquierda son necesarios para ciertos idiomas (por ejemplo, árabe y hebreo). Véase también :ref:`is_layout_rtl()<class_Control_method_is_layout_rtl>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_localize_numeral_system:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **localize_numeral_system** = ``true`` :ref:`🔗<class_Control_property_localize_numeral_system>`

.. rst-class:: classref-property-setget

- |void| **set_localize_numeral_system**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_localizing_numeral_system**\ (\ )

Si es ``true``, convierte automáticamente los números de línea de código, los índices de lista, los valores de :ref:`SpinBox<class_SpinBox>` y :ref:`ProgressBar<class_ProgressBar>` del árabe occidental (0..9) a los sistemas de numeración utilizados en la configuración regional actual.

\ **Nota:** Los números dentro del texto no se convierten automáticamente, se pueden hacer manualmente, usando :ref:`TextServer.format_number()<class_TextServer_method_format_number>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_behavior_recursive:

.. rst-class:: classref-property

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **mouse_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_mouse_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_behavior_recursive**\ (\ value\: :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`\ )
- :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **get_mouse_behavior_recursive**\ (\ )

Determina qué controles pueden recibir entrada del ratón junto con :ref:`mouse_filter<class_Control_property_mouse_filter>`. Véase :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>`. Dado que el comportamiento predeterminado es :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>`, esto se puede utilizar para evitar que todos los controles hijos reciban entrada del ratón.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_default_cursor_shape:

.. rst-class:: classref-property

:ref:`CursorShape<enum_Control_CursorShape>` **mouse_default_cursor_shape** = ``0`` :ref:`🔗<class_Control_property_mouse_default_cursor_shape>`

.. rst-class:: classref-property-setget

- |void| **set_default_cursor_shape**\ (\ value\: :ref:`CursorShape<enum_Control_CursorShape>`\ )
- :ref:`CursorShape<enum_Control_CursorShape>` **get_default_cursor_shape**\ (\ )

La forma del cursor por defecto para este control. Útil para los plugins de Godot y las aplicaciones o juegos que utilizan los cursores del ratón del sistema.

\ **Nota:** En Linux, las formas pueden variar dependiendo del tema del cursor del sistema.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_filter:

.. rst-class:: classref-property

:ref:`MouseFilter<enum_Control_MouseFilter>` **mouse_filter** = ``0`` :ref:`🔗<class_Control_property_mouse_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_filter**\ (\ value\: :ref:`MouseFilter<enum_Control_MouseFilter>`\ )
- :ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter**\ (\ )

Determina qué controles podrán recibir eventos de entrada de botón del ratón a través de :ref:`_gui_input()<class_Control_private_method__gui_input>` y las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` y :ref:`mouse_exited<class_Control_signal_mouse_exited>`. También determina cómo deben propagarse estos eventos. Consulta las constantes para saber qué hace cada una. Utiliza :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` para determinar si un control puede recibir entrada del ratón, ya que :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` también le afecta.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_force_pass_scroll_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_force_pass_scroll_events** = ``true`` :ref:`🔗<class_Control_property_mouse_force_pass_scroll_events>`

.. rst-class:: classref-property-setget

- |void| **set_force_pass_scroll_events**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_pass_scroll_events**\ (\ )

Cuando está activado, los eventos de la rueda del ratón procesados por :ref:`_gui_input()<class_Control_private_method__gui_input>` se pasarán al control padre incluso si :ref:`mouse_filter<class_Control_property_mouse_filter>` está establecido en :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`.

Deberías desactivarlo en la raíz de tu IU si no quieres que los eventos de desplazamiento vayan al procesamiento de :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`.

\ **Nota:** Debido a que esta propiedad por defecto es ``true``, esto permite que los contenedores desplazables anidados funcionen inmediatamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_bottom** = ``0.0`` :ref:`🔗<class_Control_property_offset_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde inferior del nodo y su control padre, basado en :ref:`anchor_bottom<class_Control_property_anchor_bottom>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_left** = ``0.0`` :ref:`🔗<class_Control_property_offset_left>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde izquierdo del nodo y su control padre, basado en :ref:`anchor_left<class_Control_property_anchor_left>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_right** = ``0.0`` :ref:`🔗<class_Control_property_offset_right>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde derecho del nodo y su control padre, basado en :ref:`anchor_right<class_Control_property_anchor_right>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_top** = ``0.0`` :ref:`🔗<class_Control_property_offset_top>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde superior del nodo y su control padre, basado en :ref:`anchor_top<class_Control_property_anchor_top>`.

Los márgenes a menudo están controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset**\ (\ )

Por defecto, el pivote del nodo es su esquina superior izquierda. Cuando cambias su :ref:`rotation<class_Control_property_rotation>` o :ref:`scale<class_Control_property_scale>`, rotará o escalará alrededor de este pivote. Establece esta propiedad a :ref:`size<class_Control_property_size>` / 2 para pivotar alrededor del centro del Control.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

The node's position, relative to its containing node. It corresponds to the rectangle's top-left corner. The property is not affected by :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Control_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

La rotación del nodo alrededor de su pivote, en radianes. Véase :ref:`pivot_offset<class_Control_property_pivot_offset>` para cambiar la posición del pivote.

\ **Nota:** Esta propiedad se edita en el inspector en grados. Si quieres usar grados en un script, usa :ref:`rotation_degrees<class_Control_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Control_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Propiedad auxiliar para acceder a :ref:`rotation<class_Control_property_rotation>` en grados en lugar de radianes.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

The node's scale, relative to its :ref:`size<class_Control_property_size>`. Change this property to scale the node around its :ref:`pivot_offset<class_Control_property_pivot_offset>`. The Control's tooltip will also scale according to this value.

\ **Note:** This property is mainly intended to be used for animation purposes. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the :doc:`documentation <../tutorials/rendering/multiple_resolutions>` instead of scaling Controls individually.

\ **Note:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` does *not* take **Control** :ref:`scale<class_Control_property_scale>` into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` can be enabled in the inspector.

\ **Note:** If the Control node is a child of a :ref:`Container<class_Container>` node, the scale will be reset to ``Vector2(1, 1)`` when the scene is instantiated. To set the Control's scale when it's instantiated, wait for one frame using ``await get_tree().process_frame`` then set its :ref:`scale<class_Control_property_scale>` property.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_shortcut_context:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **shortcut_context** :ref:`🔗<class_Control_property_shortcut_context>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_context**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_shortcut_context**\ (\ )

El :ref:`Node<class_Node>` que debe ser un padre del **Control** enfocado para que el atajo se active. Si es ``null``, el atajo puede activarse cuando cualquier control esté enfocado (un atajo global). Esto permite que los atajos se acepten solo cuando el usuario tiene una cierta área de la GUI enfocada.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_size>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

El tamaño del rectángulo delimitador del nodo, en el sistema de coordenadas del nodo. Los nodos :ref:`Container<class_Container>` actualizan esta propiedad automáticamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_horizontal:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_horizontal** = ``1`` :ref:`🔗<class_Control_property_size_flags_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_h_size_flags**\ (\ )

Le dice a los nodos padre :ref:`Container<class_Container>` cómo deben cambiar de tamaño y colocar el nodo en el eje X. Usa una combinación de las constantes :ref:`SizeFlags<enum_Control_SizeFlags>` para cambiar los flags. Consulta las constantes para saber qué hace cada una.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_stretch_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_flags_stretch_ratio** = ``1.0`` :ref:`🔗<class_Control_property_size_flags_stretch_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stretch_ratio**\ (\ )

Si el nodo y al menos uno de sus vecinos utiliza la bandera de tamaño :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>`, el padre :ref:`Container<class_Container>` le permitirá ocupar más o menos espacio dependiendo de esta propiedad. Si este nodo tiene una relación de estiramiento de 2 y su vecino una relación de 1, este nodo ocupará dos tercios del espacio disponible.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_vertical:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_vertical** = ``1`` :ref:`🔗<class_Control_property_size_flags_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_v_size_flags**\ (\ )

Le dice a los nodos padres :ref:`Container<class_Container>` cómo deberían cambiar de tamaño y colocar el nodo en el eje Y. Usa una combinación de las constantes :ref:`SizeFlags<enum_Control_SizeFlags>` para cambiar las banderas. Mira las constantes para aprender lo que hace cada una.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme:

.. rst-class:: classref-property

:ref:`Theme<class_Theme>` **theme** :ref:`🔗<class_Control_property_theme>`

.. rst-class:: classref-property-setget

- |void| **set_theme**\ (\ value\: :ref:`Theme<class_Theme>`\ )
- :ref:`Theme<class_Theme>` **get_theme**\ (\ )

El recurso :ref:`Theme<class_Theme>` que este nodo y todos sus hijos **Control** y :ref:`Window<class_Window>` usan. Si un nodo hijo tiene su propio recurso :ref:`Theme<class_Theme>` establecido, los elementos del tema se fusionan con las definiciones del hijo, teniendo este mayor prioridad.

\ **Nota:** Los estilos de :ref:`Window<class_Window>` no tendrán efecto a menos que la ventana esté integrada.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme_type_variation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **theme_type_variation** = ``&""`` :ref:`🔗<class_Control_property_theme_type_variation>`

.. rst-class:: classref-property-setget

- |void| **set_theme_type_variation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_theme_type_variation**\ (\ )

El nombre de una variación del tipo de tema utilizada por este **Control** para buscar sus propios elementos de tema. Cuando está vacío, se utiliza el nombre de la clase del nodo (por ejemplo, ``Button`` para el control :ref:`Button<class_Button>`), así como los nombres de clase de todas las clases padre (en orden de herencia).

Cuando se establece, esta propiedad da la máxima prioridad al tipo del nombre especificado. Este tipo puede a su vez extender otro tipo, formando una cadena de dependencias. Véase :ref:`Theme.set_type_variation()<class_Theme_method_set_type_variation>`. Si el elemento del tema no se puede encontrar utilizando este tipo o sus tipos base, la búsqueda recurre a los nombres de las clases.

\ **Nota:** Para buscar los propios elementos de **Control**, utiliza varios métodos ``get_theme_*`` sin especificar ``theme_type``.

\ **Nota:** Los elementos del tema se buscan en el orden del árbol, de la rama a la raíz, donde se comprueba cada nodo **Control** por su propiedad :ref:`theme<class_Control_property_theme>`. Se devuelve la primera coincidencia con cualquier tipo/nombre de clase. El Theme a nivel de proyecto y el Theme predeterminado se comprueban en último lugar.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **tooltip_auto_translate_mode** = ``0`` :ref:`🔗<class_Control_property_tooltip_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_tooltip_auto_translate_mode**\ (\ )

Define si el texto de la sugerencia debe cambiar automáticamente a su versión traducida dependiendo de la configuración regional actual. Utiliza el mismo modo de traducción automática que este control cuando se establece en :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

\ **Nota:** Las sugerencias personalizadas mediante :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` no utilizan este modo de traducción automática automáticamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip_text** = ``""`` :ref:`🔗<class_Control_property_tooltip_text>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip_text**\ (\ )

The default tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the :ref:`mouse_filter<class_Control_property_mouse_filter>` property is not :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`. The time required for the tooltip to appear can be changed with the :ref:`ProjectSettings.gui/timers/tooltip_delay_sec<class_ProjectSettings_property_gui/timers/tooltip_delay_sec>` setting.

This string is the default return value of :ref:`get_tooltip()<class_Control_method_get_tooltip>`. Override :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` to generate tooltip text dynamically. Override :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` to customize the tooltip interface and behavior.

The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`. The default tooltip includes a :ref:`PopupPanel<class_PopupPanel>` and :ref:`Label<class_Label>` whose theme properties can be customized using :ref:`Theme<class_Theme>` methods with the ``"TooltipPanel"`` and ``"TooltipLabel"`` respectively. For example:


.. tabs::

 .. code-tab:: gdscript

    var style_box = StyleBoxFlat.new()
    style_box.set_bg_color(Color(1, 1, 0))
    style_box.set_border_width_all(2)
    # We assume here that the `theme` property has been assigned a custom Theme beforehand.
    theme.set_stylebox("panel", "TooltipPanel", style_box)
    theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))

 .. code-tab:: csharp

    var styleBox = new StyleBoxFlat();
    styleBox.SetBgColor(new Color(1, 1, 0));
    styleBox.SetBorderWidthAll(2);
    // We assume here that the `Theme` property has been assigned a custom Theme beforehand.
    Theme.SetStyleBox("panel", "TooltipPanel", styleBox);
    Theme.SetColor("font_color", "TooltipLabel", new Color(0, 1, 1));



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Control_private_method__accessibility_get_contextual_info:

.. rst-class:: classref-method

:ref:`String<class_String>` **_accessibility_get_contextual_info**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__accessibility_get_contextual_info>`

Return the description of the keyboard shortcuts and other contextual help for this control.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__can_drop_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__can_drop_data>`

Godot calls this method to test if ``data`` from a control's :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` can be dropped at ``at_position``. ``at_position`` is local to this control.

This method should only be used to test the data. Process the data in :ref:`_drop_data()<class_Control_private_method__drop_data>`.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drop position.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        # Check position if it is relevant to you
        # Otherwise, just check data
        return typeof(data) == TYPE_DICTIONARY and data.has("expected")

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        // Check position if it is relevant to you
        // Otherwise, just check data
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("expected");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__drop_data:

.. rst-class:: classref-method

|void| **_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Control_private_method__drop_data>`

Godot calls this method to pass you the ``data`` from a control's :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` result. Godot first calls :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` to test if ``data`` is allowed to drop at ``at_position`` where ``at_position`` is local to this control.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drop position.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        return typeof(data) == TYPE_DICTIONARY and data.has("color")

    func _drop_data(position, data):
        var color = data["color"]

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("color");
    }

    public override void _DropData(Vector2 atPosition, Variant data)
    {
        Color color = data.AsGodotDictionary()["color"].AsColor();
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_accessibility_container_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_accessibility_container_name**\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_accessibility_container_name>`

Override this method to return a human-readable description of the position of the child ``node`` in the custom container, added to the :ref:`accessibility_name<class_Control_property_accessibility_name>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_drag_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_drag_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_Control_private_method__get_drag_data>`

Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns ``null`` if there is no data to drag. Controls that want to receive drop data should implement :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` and :ref:`_drop_data()<class_Control_private_method__drop_data>`. ``at_position`` is local to this control. Drag may be forced with :ref:`force_drag()<class_Control_method_force_drag>`.

A preview that will follow the mouse that should represent the data can be set with :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`. A good time to set the preview is in this method.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drag position.


.. tabs::

 .. code-tab:: gdscript

    func _get_drag_data(position):
        var mydata = make_data() # This is your custom method generating the drag data.
        set_drag_preview(make_preview(mydata)) # This is your custom method generating the preview of the drag data.
        return mydata

 .. code-tab:: csharp

    public override Variant _GetDragData(Vector2 atPosition)
    {
        var myData = MakeData(); // This is your custom method generating the drag data.
        SetDragPreview(MakePreview(myData)); // This is your custom method generating the preview of the drag data.
        return myData;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_minimum_size>`

Virtual method to be implemented by the user. Returns the minimum size for this control. Alternative to :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` for controlling minimum size via code. The actual minimum size will be the max value of these two (in each axis separately).

If not overridden, defaults to :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Note:** This method will not be called when the script is attached to a **Control** node that already overrides its minimum size (e.g. :ref:`Label<class_Label>`, :ref:`Button<class_Button>`, :ref:`PanelContainer<class_PanelContainer>` etc.). It can only be used with most basic GUI nodes, like **Control**, :ref:`Container<class_Container>`, :ref:`Panel<class_Panel>` etc.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip>`

Virtual method to be implemented by the user. Returns the tooltip text for the position ``at_position`` in control's local coordinates, which will typically appear when the cursor is resting over this control. See :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__gui_input:

.. rst-class:: classref-method

|void| **_gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Control_private_method__gui_input>`

Virtual method to be implemented by the user. Override this method to handle and accept inputs on UI elements. See also :ref:`accept_event()<class_Control_method_accept_event>`.

\ **Example:** Click on the control to print a message:


.. tabs::

 .. code-tab:: gdscript

    func _gui_input(event):
        if event is InputEventMouseButton:
            if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
                print("I've been clicked D:")

 .. code-tab:: csharp

    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mb)
        {
            if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
            {
                GD.Print("I've been clicked D:");
            }
        }
    }



If the ``event`` inherits :ref:`InputEventMouse<class_InputEventMouse>`, this method will **not** be called when:

- the control's :ref:`mouse_filter<class_Control_property_mouse_filter>` is set to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- the control is obstructed by another control on top, that doesn't have :ref:`mouse_filter<class_Control_property_mouse_filter>` set to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- the control's parent has :ref:`mouse_filter<class_Control_property_mouse_filter>` set to :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` or has accepted the event;

- the control's parent has :ref:`clip_contents<class_Control_property_clip_contents>` enabled and the ``event``'s position is outside the parent's rectangle;

- the ``event``'s position is outside the control (see :ref:`_has_point()<class_Control_private_method__has_point>`).

\ **Note:** The ``event``'s position is relative to this control's origin.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__has_point>`

Virtual method to be implemented by the user. Returns whether the given ``point`` is inside this control.

If not overridden, default behavior is checking if the point is within control's Rect.

\ **Note:** If you want to check if a point is inside the control, you can use ``Rect2(Vector2.ZERO, size).has_point(point)``.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__make_custom_tooltip:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_make_custom_tooltip**\ (\ for_text\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__make_custom_tooltip>`

Virtual method to be implemented by the user. Returns a **Control** node that should be used as a tooltip instead of the default one. ``for_text`` is the return value of :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

The returned node must be of type **Control** or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance). When ``null`` or a non-Control node is returned, the default tooltip will be used instead.

The returned node will be added as child to a :ref:`PopupPanel<class_PopupPanel>`, so you should only provide the contents of that panel. That :ref:`PopupPanel<class_PopupPanel>` can be themed using :ref:`Theme.set_stylebox()<class_Theme_method_set_stylebox>` for the type ``"TooltipPanel"`` (see :ref:`tooltip_text<class_Control_property_tooltip_text>` for an example).

\ **Note:** The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` to some non-zero value.

\ **Note:** The node (and any relevant children) should have their :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` set to ``true`` when returned, otherwise, the viewport that instantiates it will not be able to calculate its minimum size reliably.

\ **Note:** If overridden, this method is called even if :ref:`get_tooltip()<class_Control_method_get_tooltip>` returns an empty string. When this happens with the default tooltip, it is not displayed. To copy this behavior, return ``null`` in this method when ``for_text`` is empty.

\ **Example:** Use a constructed node as a tooltip:


.. tabs::

 .. code-tab:: gdscript

    func _make_custom_tooltip(for_text):
        var label = Label.new()
        label.text = for_text
        return label

 .. code-tab:: csharp

    public override Control _MakeCustomTooltip(string forText)
    {
        var label = new Label();
        label.Text = forText;
        return label;
    }



\ **Example:** Usa a scene instance as a tooltip:


.. tabs::

 .. code-tab:: gdscript

    func _make_custom_tooltip(for_text):
        var tooltip = preload("res://some_tooltip_scene.tscn").instantiate()
        tooltip.get_node("Label").text = for_text
        return tooltip

 .. code-tab:: csharp

    public override Control _MakeCustomTooltip(string forText)
    {
        Node tooltip = ResourceLoader.Load<PackedScene>("res://some_tooltip_scene.tscn").Instantiate();
        tooltip.GetNode<Label>("Label").Text = forText;
        return tooltip;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__structured_text_parser:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **_structured_text_parser**\ (\ args\: :ref:`Array<class_Array>`, text\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__structured_text_parser>`

User defined BiDi algorithm override function.

Returns an :ref:`Array<class_Array>` of :ref:`Vector3i<class_Vector3i>` text ranges and text base directions, in the left-to-right order. Ranges should cover full source ``text`` without overlaps. BiDi algorithm will be used on each range separately.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accept_event:

.. rst-class:: classref-method

|void| **accept_event**\ (\ ) :ref:`🔗<class_Control_method_accept_event>`

Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` or :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Note:** This does not affect the methods in :ref:`Input<class_Input>`, only the way events are propagated.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drag:

.. rst-class:: classref-method

|void| **accessibility_drag**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drag>`

Starts drag-and-drop operation without using a mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drop:

.. rst-class:: classref-method

|void| **accessibility_drop**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drop>`

Ends drag-and-drop operation without using a mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_color_override:

.. rst-class:: classref-method

|void| **add_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Control_method_add_theme_color_override>`

Creates a local override for a theme :ref:`Color<class_Color>` with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_color_override()<class_Control_method_remove_theme_color_override>`.

See also :ref:`get_theme_color()<class_Control_method_get_theme_color>`.

\ **Example:** Override a :ref:`Label<class_Label>`'s color and reset it later:


.. tabs::

 .. code-tab:: gdscript

    # Given the child Label node "MyLabel", override its font color with a custom value.
    $MyLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
    # Reset the font color of the child label.
    $MyLabel.remove_theme_color_override("font_color")
    # Alternatively it can be overridden with the default value from the Label type.
    $MyLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

 .. code-tab:: csharp

    // Given the child Label node "MyLabel", override its font color with a custom value.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
    // Reset the font color of the child label.
    GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color");
    // Alternatively it can be overridden with the default value from the Label type.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));



.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_constant_override:

.. rst-class:: classref-method

|void| **add_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_constant_override>`

Creates a local override for a theme constant with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_constant_override()<class_Control_method_remove_theme_constant_override>`.

See also :ref:`get_theme_constant()<class_Control_method_get_theme_constant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_override:

.. rst-class:: classref-method

|void| **add_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ ) :ref:`🔗<class_Control_method_add_theme_font_override>`

Creates a local override for a theme :ref:`Font<class_Font>` with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_font_override()<class_Control_method_remove_theme_font_override>`.

See also :ref:`get_theme_font()<class_Control_method_get_theme_font>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_size_override:

.. rst-class:: classref-method

|void| **add_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_font_size_override>`

Creates a local override for a theme font size with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_font_size_override()<class_Control_method_remove_theme_font_size_override>`.

See also :ref:`get_theme_font_size()<class_Control_method_get_theme_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_icon_override:

.. rst-class:: classref-method

|void| **add_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Control_method_add_theme_icon_override>`

Creates a local override for a theme icon with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_icon_override()<class_Control_method_remove_theme_icon_override>`.

See also :ref:`get_theme_icon()<class_Control_method_get_theme_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_stylebox_override:

.. rst-class:: classref-method

|void| **add_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ ) :ref:`🔗<class_Control_method_add_theme_stylebox_override>`

Creates a local override for a theme :ref:`StyleBox<class_StyleBox>` with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_stylebox_override()<class_Control_method_remove_theme_stylebox_override>`.

See also :ref:`get_theme_stylebox()<class_Control_method_get_theme_stylebox>`.

\ **Example:** Modify a property in a :ref:`StyleBox<class_StyleBox>` by duplicating it:


.. tabs::

 .. code-tab:: gdscript

    # The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
    # Resources are shared across instances, so we need to duplicate it
    # to avoid modifying the appearance of all other buttons.
    var new_stylebox_normal = $MyButton.get_theme_stylebox("normal").duplicate()
    new_stylebox_normal.border_width_top = 3
    new_stylebox_normal.border_color = Color(0, 1, 0.5)
    $MyButton.add_theme_stylebox_override("normal", new_stylebox_normal)
    # Remove the stylebox override.
    $MyButton.remove_theme_stylebox_override("normal")

 .. code-tab:: csharp

    // The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
    // Resources are shared across instances, so we need to duplicate it
    // to avoid modifying the appearance of all other buttons.
    StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
    newStyleboxNormal.BorderWidthTop = 3;
    newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f);
    GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal);
    // Remove the stylebox override.
    GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");



.. rst-class:: classref-item-separator

----

.. _class_Control_method_begin_bulk_theme_override:

.. rst-class:: classref-method

|void| **begin_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_begin_bulk_theme_override>`

Prevents ``*_theme_*_override`` methods from emitting :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` until :ref:`end_bulk_theme_override()<class_Control_method_end_bulk_theme_override>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_end_bulk_theme_override:

.. rst-class:: classref-method

|void| **end_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_end_bulk_theme_override>`

Ends a bulk theme override update. See :ref:`begin_bulk_theme_override()<class_Control_method_begin_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_next_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_next_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_next_valid_focus>`

Finds the next (below in the tree) **Control** that can receive the focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_prev_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_prev_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_prev_valid_focus>`

Finds the previous (above in the tree) **Control** that can receive the focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_valid_focus_neighbor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_valid_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_find_valid_focus_neighbor>`

Finds the next **Control** that can receive the focus on the specified :ref:`Side<enum_@GlobalScope_Side>`.

\ **Note:** This is different from :ref:`get_focus_neighbor()<class_Control_method_get_focus_neighbor>`, which returns the path of a specified focus neighbor.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_force_drag:

.. rst-class:: classref-method

|void| **force_drag**\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_force_drag>`

Forces drag and bypasses :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` and :ref:`set_drag_preview()<class_Control_method_set_drag_preview>` by passing ``data`` and ``preview``. Drag will start even if the mouse is neither over nor pressed on this control.

The methods :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` and :ref:`_drop_data()<class_Control_private_method__drop_data>` must be implemented on controls that want to receive drop data.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_anchor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_anchor>`

Devuelve el anclaje para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` y :ref:`anchor_top<class_Control_property_anchor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_begin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_begin**\ (\ ) |const| :ref:`🔗<class_Control_method_get_begin>`

Returns :ref:`offset_left<class_Control_property_offset_left>` and :ref:`offset_top<class_Control_property_offset_top>`. See also :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_minimum_size>`

Returns combined minimum size from :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` and :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_cursor_shape:

.. rst-class:: classref-method

:ref:`CursorShape<enum_Control_CursorShape>` **get_cursor_shape**\ (\ position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_cursor_shape>`

Devuelve la forma del cursor del ratón para este control cuando se pasa por encima de ``position`` en coordenadas locales. Para la mayoría de los controles, esto es lo mismo que :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`, pero algunos controles incorporados implementan una lógica más compleja.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_end:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_end**\ (\ ) |const| :ref:`🔗<class_Control_method_get_end>`

Devuelve :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_bottom<class_Control_property_offset_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_mode_with_override:

.. rst-class:: classref-method

:ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_focus_mode_with_override>`

Devuelve el :ref:`focus_mode<class_Control_property_focus_mode>`, pero tiene en cuenta el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`. Si :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` está establecido en :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, o está establecido en :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>` y su antecesor está establecido en :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, entonces esto devuelve :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_neighbor:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_focus_neighbor>`

Devuelve el vecino de foco para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` y :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

\ **Nota:** Para encontrar el siguiente **Control** en el :ref:`Side<enum_@GlobalScope_Side>` específico, incluso si no se ha asignado un vecino, usa :ref:`find_valid_focus_neighbor()<class_Control_method_find_valid_focus_neighbor>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_global_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_global_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_global_rect>`

Devuelve la posición y el tamaño del control en relación con el lienzo que lo contiene. Véase :ref:`global_position<class_Control_property_global_position>` y :ref:`size<class_Control_property_size>`.

\ **Nota:** Si el propio nodo o cualquier :ref:`CanvasItem<class_CanvasItem>` padre entre el nodo y el lienzo tienen una rotación o inclinación no predeterminada, el tamaño resultante probablemente no sea significativo.

\ **Nota:** Establecer :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` a ``true`` puede dar lugar a imprecisiones de redondeo entre el control visualizado y el :ref:`Rect2<class_Rect2>` devuelto.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_minimum_size>`

Devuelve el tamaño mínimo para este control. Véase :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_mouse_filter_with_override:

.. rst-class:: classref-method

:ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_mouse_filter_with_override>`

Devuelve el :ref:`mouse_filter<class_Control_property_mouse_filter>`, pero tiene en cuenta el :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`. Si :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` está establecido en :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, o está establecido en :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>` y su antecesor está establecido en :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, entonces esto devuelve :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_offset>`

Devuelve el offset para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_area_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_parent_area_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_area_size>`

Devuelve la anchura/altura ocupada en el control parental.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_parent_control**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_control>`

Devuelve el nodo de control del padre.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_rect>`

Devuelve la posición y el tamaño del control en el sistema de coordenadas del nodo que lo contiene. Véase :ref:`position<class_Control_property_position>`, :ref:`scale<class_Control_property_scale>` y :ref:`size<class_Control_property_size>`.

\ **Nota:** Si :ref:`rotation<class_Control_property_rotation>` no es la rotación predeterminada, el tamaño resultante no es significativo.

\ **Nota:** Establecer :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` a ``true`` puede provocar imprecisiones de redondeo entre el control mostrado y el :ref:`Rect2<class_Rect2>` devuelto.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_screen_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_position**\ (\ ) |const| :ref:`🔗<class_Control_method_get_screen_position>`

Returns the position of this **Control** in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.

Equals to :ref:`global_position<class_Control_property_global_position>` if the window is embedded (see :ref:`Viewport.gui_embed_subwindows<class_Viewport_property_gui_embed_subwindows>`).

\ **Example:** Show a popup at the mouse position:

::

    popup_menu.position = get_screen_position() + get_local_mouse_position()
    popup_menu.reset_size()
    popup_menu.popup()

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_color>`

Returns a :ref:`Color<class_Color>` from the first matching :ref:`Theme<class_Theme>` in the tree if that :ref:`Theme<class_Theme>` has a color item with the specified ``name`` and ``theme_type``. If ``theme_type`` is omitted the class name of the current control is used as the type, or :ref:`theme_type_variation<class_Control_property_theme_type_variation>` if it is defined. If the type is a class name its parent classes are also checked, in order of inheritance. If the type is a variation its base types are checked, in order of dependency, then the control's class name and its parent classes are checked.

For the current control its local overrides are considered first (see :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`), then its assigned :ref:`theme<class_Control_property_theme>`. After the current control, each parent control and its assigned :ref:`theme<class_Control_property_theme>` are considered; controls without a :ref:`theme<class_Control_property_theme>` assigned are skipped. If no matching :ref:`Theme<class_Theme>` is found in the tree, the custom project :ref:`Theme<class_Theme>` (see :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`) and the default :ref:`Theme<class_Theme>` are used (see :ref:`ThemeDB<class_ThemeDB>`).


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Get the font color defined for the current Control's class, if it exists.
        modulate = get_theme_color("font_color")
        # Get the font color defined for the Button class.
        modulate = get_theme_color("font_color", "Button")

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Get the font color defined for the current Control's class, if it exists.
        Modulate = GetThemeColor("font_color");
        // Get the font color defined for the Button class.
        Modulate = GetThemeColor("font_color", "Button");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_constant>`

Devuelve una constante del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento constante con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_base_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_theme_default_base_scale**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_base_scale>`

Devuelve el valor de escala base predeterminado del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_default_font**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font>`

Devuelve la fuente predeterminada del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_font<class_Theme_property_default_font>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_default_font_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font_size>`

Devuelve el tamaño de fuente predeterminado del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_font_size<class_Theme_property_default_font_size>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font>`

Devuelve una :ref:`Font<class_Font>` del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font_size>`

Devuelve un tamaño de fuente del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de tamaño de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_icon>`

Devuelve un icono del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de icono con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_stylebox:

.. rst-class:: classref-method

:ref:`StyleBox<class_StyleBox>` **get_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_stylebox>`

Returns a :ref:`StyleBox<class_StyleBox>` from the first matching :ref:`Theme<class_Theme>` in the tree if that :ref:`Theme<class_Theme>` has a stylebox item with the specified ``name`` and ``theme_type``.

See :ref:`get_theme_color()<class_Control_method_get_theme_color>` for details.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_tooltip>`

Returns the tooltip text for the position ``at_position`` in control's local coordinates, which will typically appear when the cursor is resting over this control. By default, it returns :ref:`tooltip_text<class_Control_property_tooltip_text>`.

This method can be overridden to customize its behavior. See :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>`.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_click_focus:

.. rst-class:: classref-method

|void| **grab_click_focus**\ (\ ) :ref:`🔗<class_Control_method_grab_click_focus>`

Creates an :ref:`InputEventMouseButton<class_InputEventMouseButton>` that attempts to click the control. If the event is received, the control gains focus.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        grab_click_focus() # When clicking another Control node, this node will be clicked instead.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        GrabClickFocus(); // When clicking another Control node, this node will be clicked instead.
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_focus:

.. rst-class:: classref-method

|void| **grab_focus**\ (\ ) :ref:`🔗<class_Control_method_grab_focus>`

Steal the focus from another control and become the focused control (see :ref:`focus_mode<class_Control_property_focus_mode>`).

\ **Note:** Using this method together with :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>` makes it more reliable, especially when called inside :ref:`Node._ready()<class_Node_private_method__ready>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_focus:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_has_focus>`

Devuelve ``true`` si este es el control enfocado actual. Ver :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_color>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de color con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_color_override>`

Devuelve ``true`` si hay una sobrescritura local para un :ref:`Color<class_Color>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento constante con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant_override>`

Devuelve ``true`` si existe una sobrescritura local para una constante de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_override>`

Devuelve ``true`` si hay una sobrescritura local para una :ref:`Font<class_Font>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de tamaño de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size_override>`

Devuelve ``true`` si hay una sobrescritura local para un tamaño de fuente de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de icono con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon_override>`

Devuelve ``true`` si hay una sobrescritura local para un icono de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de stylebox con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox_override>`

Devuelve ``true`` si hay una sobrescritura local para un :ref:`StyleBox<class_StyleBox>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_drag_successful:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_drag_successful**\ (\ ) |const| :ref:`🔗<class_Control_method_is_drag_successful>`

Devuelve ``true`` si una operación de arrastre es exitosa. Alternativa a :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>`.

Mejor usado con :ref:`Node.NOTIFICATION_DRAG_END<class_Node_constant_NOTIFICATION_DRAG_END>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_layout_rtl:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_layout_rtl**\ (\ ) |const| :ref:`🔗<class_Control_method_is_layout_rtl>`

Devuelve ``true`` si el diseño es de derecha a izquierda. Véase también :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_release_focus:

.. rst-class:: classref-method

|void| **release_focus**\ (\ ) :ref:`🔗<class_Control_method_release_focus>`

Give up the focus. No other control will be able to receive input.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_color_override:

.. rst-class:: classref-method

|void| **remove_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_color_override>`

Removes a local override for a theme :ref:`Color<class_Color>` with the specified ``name`` previously added by :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_constant_override:

.. rst-class:: classref-method

|void| **remove_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_constant_override>`

Removes a local override for a theme constant with the specified ``name`` previously added by :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_override:

.. rst-class:: classref-method

|void| **remove_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_override>`

Removes a local override for a theme :ref:`Font<class_Font>` with the specified ``name`` previously added by :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_size_override:

.. rst-class:: classref-method

|void| **remove_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_size_override>`

Removes a local override for a theme font size with the specified ``name`` previously added by :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_icon_override:

.. rst-class:: classref-method

|void| **remove_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_icon_override>`

Removes a local override for a theme icon with the specified ``name`` previously added by :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_stylebox_override:

.. rst-class:: classref-method

|void| **remove_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_stylebox_override>`

Removes a local override for a theme :ref:`StyleBox<class_StyleBox>` with the specified ``name`` previously added by :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_reset_size:

.. rst-class:: classref-method

|void| **reset_size**\ (\ ) :ref:`🔗<class_Control_method_reset_size>`

Restablece el tamaño a :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`. Esto equivale a llamar a ``set_size(Vector2())`` (o cualquier tamaño por debajo del mínimo).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor:

.. rst-class:: classref-method

|void| **set_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Control_method_set_anchor>`

Establece el anclaje para el :ref:`Side<enum_@GlobalScope_Side>` especificado en ``anchor``. Un método setter para :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` y :ref:`anchor_top<class_Control_property_anchor_top>`.

Si ``keep_offset`` es ``true``, los offsets no se actualizarán después de esta operación.

Si ``push_opposite_anchor`` es ``true`` y el anclaje opuesto se superpone a este anclaje, el opuesto tendrá su valor sobrescrito. Por ejemplo, al establecer el anclaje izquierdo en 1 y el anclaje derecho tiene un valor de 0.5, el anclaje derecho también obtendrá un valor de 1. Si ``push_opposite_anchor`` fuera ``false``, el anclaje izquierdo obtendría el valor 0.5.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor_and_offset:

.. rst-class:: classref-method

|void| **set_anchor_and_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchor_and_offset>`

Funciona igual que :ref:`set_anchor()<class_Control_method_set_anchor>`, pero en lugar del argumento ``keep_offset`` y la actualización automática del dessplazamiento, te permite establecer el desplazamiento tú mismo (véase :ref:`set_offset()<class_Control_method_set_offset>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_and_offsets_preset:

.. rst-class:: classref-method

|void| **set_anchors_and_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_anchors_and_offsets_preset>`

Establece tanto el preset del ancla como el preset del desplazamiento. Véase :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` y :ref:`set_offsets_preset()<class_Control_method_set_offsets_preset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_preset:

.. rst-class:: classref-method

|void| **set_anchors_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchors_preset>`

Establece los anclajes a un ``preset`` del enum :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Esto es el equivalente en código a usar el menú de Layout en el editor 2D.

Si ``keep_offsets`` es ``true``, la posición del control también se actualizará.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_begin:

.. rst-class:: classref-method

|void| **set_begin**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_begin>`

Establece :ref:`offset_left<class_Control_property_offset_left>` y :ref:`offset_top<class_Control_property_offset_top>` al mismo tiempo. Equivale a cambiar :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_forwarding:

.. rst-class:: classref-method

|void| **set_drag_forwarding**\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Control_method_set_drag_forwarding>`

Establece los callables dados para ser usados en lugar de los métodos virtuales de arrastrar y soltar propios del control. Si un callable está vacío, su respectivo método virtual se usa de forma normal.

Los argumentos para cada callable deben ser exactamente los mismos que sus respectivos métodos virtuales, que serían:

- ``drag_func`` corresponde a :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` y requiere un :ref:`Vector2<class_Vector2>`;

- ``can_drop_func`` corresponde a :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` y requiere tanto un :ref:`Vector2<class_Vector2>` como un :ref:`Variant<class_Variant>`;

- ``drop_func`` corresponde a :ref:`_drop_data()<class_Control_private_method__drop_data>` y requiere tanto un :ref:`Vector2<class_Vector2>` como un :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_preview:

.. rst-class:: classref-method

|void| **set_drag_preview**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_set_drag_preview>`

Shows the given control at the mouse pointer. A good time to call this method is in :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>`. The control must not be in the scene tree. You should not free the control, and you should not keep a reference to the control beyond the duration of the drag. It will be deleted automatically after the drag has ended.


.. tabs::

 .. code-tab:: gdscript

    @export var color = Color(1, 0, 0, 1)

    func _get_drag_data(position):
        # Use a control that is not in the tree
        var cpb = ColorPickerButton.new()
        cpb.color = color
        cpb.size = Vector2(50, 50)
        set_drag_preview(cpb)
        return color

 .. code-tab:: csharp

    [Export]
    private Color _color = new Color(1, 0, 0, 1);

    public override Variant _GetDragData(Vector2 atPosition)
    {
        // Use a control that is not in the tree
        var cpb = new ColorPickerButton();
        cpb.Color = _color;
        cpb.Size = new Vector2(50, 50);
        SetDragPreview(cpb);
        return _color;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_end:

.. rst-class:: classref-method

|void| **set_end**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_end>`

Establece :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_bottom<class_Control_property_offset_bottom>` al mismo tiempo.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_focus_neighbor:

.. rst-class:: classref-method

|void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Control_method_set_focus_neighbor>`

Sets the focus neighbor for the specified :ref:`Side<enum_@GlobalScope_Side>` to the **Control** at ``neighbor`` node path. A setter method for :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` and :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_global_position:

.. rst-class:: classref-method

|void| **set_global_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_global_position>`

Establece la :ref:`global_position<class_Control_property_global_position>` a la ``position`` dada.

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Control_method_set_offset>`

Establece el offset para el :ref:`Side<enum_@GlobalScope_Side>` especificado en ``offset``. Un método setter para :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offsets_preset:

.. rst-class:: classref-method

|void| **set_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_offsets_preset>`

Establece los offsets a un ``preset`` del enum :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Esto es el equivalente en código a usar el menú de Layout en el editor 2D.

Usa el parámetro ``resize_mode`` con constantes del enum :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` para determinar mejor el tamaño resultante del **Control**. El tamaño constante será ignorado si se usa con presets que cambian el tamaño, p. ej. :ref:`PRESET_LEFT_WIDE<class_Control_constant_PRESET_LEFT_WIDE>`.

Usa el parámetro ``margin`` para determinar el espacio entre el **Control** y los bordes.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_position>`

Establece la :ref:`position<class_Control_property_position>` a la ``position`` dada.

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_size>`

Establece el tamaño (véase :ref:`size<class_Control_property_size>`).

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_minimum_size:

.. rst-class:: classref-method

|void| **update_minimum_size**\ (\ ) :ref:`🔗<class_Control_method_update_minimum_size>`

Invalidates the size cache in this node and in parent nodes up to top level. Intended to be used with :ref:`get_minimum_size()<class_Control_method_get_minimum_size>` when the return value is changed. Setting :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` directly calls this method automatically.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_warp_mouse:

.. rst-class:: classref-method

|void| **warp_mouse**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_warp_mouse>`

Mueve el cursor del ratón a ``position``, relativo a :ref:`position<class_Control_property_position>` de este **Control**.

\ **Nota:** :ref:`warp_mouse()<class_Control_method_warp_mouse>` solo es compatible con Windows, macOS y Linux. No tiene ningún efecto en Android, iOS y Web.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
