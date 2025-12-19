:github_url: hide

.. _class_TabContainer:

TabContainer
============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un conteneur qui crée un onglet pour chaque contrôle enfant, n'affichant que le contrôle de l'onglet actif.

.. rst-class:: classref-introduction-group

Description
-----------

Arrange les contrôles enfants en une vue en onglets, créant un onglet pour chacun. Le contrôle correspondant à l'onglet actif est rendu visible, tandis que tous les autres contrôles enfants sont cachés. Ignore les contrôles non enfants.

\ **Note :** Le dessin des onglets cliquables est géré par ce nœud, :ref:`TabBar<class_TabBar>` n'est pas nécessaire.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des conteneurs <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`all_tabs_in_front<class_TabContainer_property_all_tabs_in_front>`                       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`                                       | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`current_tab<class_TabContainer_property_current_tab>`                                   | ``-1``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`deselect_enabled<class_TabContainer_property_deselect_enabled>`                         | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`   | :ref:`tab_alignment<class_TabContainer_property_tab_alignment>`                               | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`FocusMode<enum_Control_FocusMode>`          | :ref:`tab_focus_mode<class_TabContainer_property_tab_focus_mode>`                             | ``2``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`TabPosition<enum_TabContainer_TabPosition>` | :ref:`tabs_position<class_TabContainer_property_tabs_position>`                               | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`tabs_rearrange_group<class_TabContainer_property_tabs_rearrange_group>`                 | ``-1``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`tabs_visible<class_TabContainer_property_tabs_visible>`                                 | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_hidden_tabs_for_min_size<class_TabContainer_property_use_hidden_tabs_for_min_size>` | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`     | :ref:`get_current_tab_control<class_TabContainer_method_get_current_tab_control>`\ (\ ) |const|                                                            |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Popup<class_Popup>`         | :ref:`get_popup<class_TabContainer_method_get_popup>`\ (\ ) |const|                                                                                        |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_previous_tab<class_TabContainer_method_get_previous_tab>`\ (\ ) |const|                                                                          |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TabBar<class_TabBar>`       | :ref:`get_tab_bar<class_TabContainer_method_get_tab_bar>`\ (\ ) |const|                                                                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_tab_button_icon<class_TabContainer_method_get_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`     | :ref:`get_tab_control<class_TabContainer_method_get_tab_control>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_count<class_TabContainer_method_get_tab_count>`\ (\ ) |const|                                                                                |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_tab_icon<class_TabContainer_method_get_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_icon_max_width<class_TabContainer_method_get_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_idx_at_point<class_TabContainer_method_get_tab_idx_at_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_idx_from_control<class_TabContainer_method_get_tab_idx_from_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |const|                 |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`     | :ref:`get_tab_metadata<class_TabContainer_method_get_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_tab_title<class_TabContainer_method_get_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_tab_tooltip<class_TabContainer_method_get_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_tab_disabled<class_TabContainer_method_is_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_tab_hidden<class_TabContainer_method_is_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`select_next_available<class_TabContainer_method_select_next_available>`\ (\ )                                                                        |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`select_previous_available<class_TabContainer_method_select_previous_available>`\ (\ )                                                                |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_popup<class_TabContainer_method_set_popup>`\ (\ popup\: :ref:`Node<class_Node>`\ )                                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_button_icon<class_TabContainer_method_set_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_disabled<class_TabContainer_method_set_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )             |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_hidden<class_TabContainer_method_set_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )                   |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_icon<class_TabContainer_method_set_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_icon_max_width<class_TabContainer_method_set_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_metadata<class_TabContainer_method_set_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )       |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_title<class_TabContainer_method_set_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )                  |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_tooltip<class_TabContainer_method_set_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )            |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`drop_mark_color<class_TabContainer_theme_color_drop_mark_color>`             | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_TabContainer_theme_color_font_disabled_color>`     | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hovered_color<class_TabContainer_theme_color_font_hovered_color>`       | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_TabContainer_theme_color_font_outline_color>`       | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_selected_color<class_TabContainer_theme_color_font_selected_color>`     | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_unselected_color<class_TabContainer_theme_color_font_unselected_color>` | ``Color(0.7, 0.7, 0.7, 1)``         |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_separation<class_TabContainer_theme_constant_icon_separation>`          | ``4``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_TabContainer_theme_constant_outline_size>`                | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`side_margin<class_TabContainer_theme_constant_side_margin>`                  | ``8``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`tab_separation<class_TabContainer_theme_constant_tab_separation>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_TabContainer_theme_font_font>`                                    |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_TabContainer_theme_font_size_font_size>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_TabContainer_theme_icon_decrement>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_TabContainer_theme_icon_decrement_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_TabContainer_theme_icon_increment>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_TabContainer_theme_icon_increment_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu<class_TabContainer_theme_icon_menu>`                                    |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_highlight<class_TabContainer_theme_icon_menu_highlight>`                |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_TabContainer_theme_style_panel>`                                 |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_disabled<class_TabContainer_theme_style_tab_disabled>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>`                         |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_hovered<class_TabContainer_theme_style_tab_hovered>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_selected<class_TabContainer_theme_style_tab_selected>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>`               |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tabbar_background<class_TabContainer_theme_style_tabbar_background>`         |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_TabContainer_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_active_tab_rearranged>`

Émis quand l'onglet actif est réarrangé en glissant la souris. Voir :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_pre_popup_pressed:

.. rst-class:: classref-signal

**pre_popup_pressed**\ (\ ) :ref:`🔗<class_TabContainer_signal_pre_popup_pressed>`

Émis quand le bouton :ref:`Popup<class_Popup>` du **TabContainer** est cliqué. Voir :ref:`set_popup()<class_TabContainer_method_set_popup>` pour les détails.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_button_pressed>`

Émis lorsque l'utilisateur clique sur l'icône du bouton de cet onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_changed>`

Émis au changement d'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_clicked>`

Émis quand un onglet est cliqué, même si c'est l'onglet actuel.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_hovered>`

Émis quand un onglet est survolé par la souris.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_selected>`

Émis lorsqu'un onglet est sélectionné par un clic, une entrée directionnelle ou un script, même s'il s'agit de l'onglet actuel.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TabContainer_TabPosition:

.. rst-class:: classref-enumeration

enum **TabPosition**: :ref:`🔗<enum_TabContainer_TabPosition>`

.. _class_TabContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_TOP** = ``0``

Place la barre d'onglet en haut.

.. _class_TabContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_BOTTOM** = ``1``

Place la barre d'onglets en bas. La :ref:`StyleBox<class_StyleBox>` de la barre d'onglets sera inversée verticalement.

.. _class_TabContainer_constant_POSITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_MAX** = ``2``

Représente la taille de l'énumération :ref:`TabPosition<enum_TabContainer_TabPosition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TabContainer_property_all_tabs_in_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **all_tabs_in_front** = ``false`` :ref:`🔗<class_TabContainer_property_all_tabs_in_front>`

.. rst-class:: classref-property-setget

- |void| **set_all_tabs_in_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_all_tabs_in_front**\ (\ )

Si ``true``, tous les onglets sont dessinés devant le panneau. Si ``false``, les onglets inactifs sont dessinés derrière le panneau.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabContainer_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Si ``true``, les onglets débordant de la largeur de ce nœud seront cachés, affichant deux boutons de navigation à la place. Sinon, la taille minimale de ce nœud est mise à jour de sorte que tous les onglets soient visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabContainer_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

L'index actuel de l'onglet. Lorsque définie, la propriété ``visible`` du nœud :ref:`Control<class_Control>` de cet index est définie à ``true`` et toutes les autres sont définies à ``false``.

Une valeur de ``-1`` signifie qu'aucun onglet n'est sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Si ``true``, tous les onglets peuvent être désélectionnés de sorte qu'aucun onglet ne soit sélectionné. Cliquez sur l'onglet actuel :ref:`current_tab<class_TabContainer_property_current_tab>` pour le désélectionner.

Seul l'en-tête de l'onglet sera affiché si aucun onglet n'est sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Si ``true``, les onglets peuvent être réarrangés avec par déposé-glissé.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabContainer_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

La position à laquelle les onglets seront placés.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **tab_focus_mode** = ``2`` :ref:`🔗<class_TabContainer_property_tab_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tab_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_tab_focus_mode**\ (\ )

Le mode d'accès au focus pour le nœud :ref:`TabBar<class_TabBar>` interne.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_position:

.. rst-class:: classref-property

:ref:`TabPosition<enum_TabContainer_TabPosition>` **tabs_position** = ``0`` :ref:`🔗<class_TabContainer_property_tabs_position>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_position**\ (\ value\: :ref:`TabPosition<enum_TabContainer_TabPosition>`\ )
- :ref:`TabPosition<enum_TabContainer_TabPosition>` **get_tabs_position**\ (\ )

La position de la barre d'onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabContainer_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

**TabContainer**\ s with the same rearrange group ID will allow dragging the tabs between them. Enable drag with :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

Setting this to ``-1`` will disable rearranging between **TabContainer**\ s.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tabs_visible** = ``true`` :ref:`🔗<class_TabContainer_property_tabs_visible>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_tabs_visible**\ (\ )

Si ``true``, les onglets sont visibles. Si ``false``, le contenu des onglets et les titres sont masqués.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_use_hidden_tabs_for_min_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hidden_tabs_for_min_size** = ``false`` :ref:`🔗<class_TabContainer_property_use_hidden_tabs_for_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_use_hidden_tabs_for_min_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_hidden_tabs_for_min_size**\ (\ )

Si ``true``, les nœuds :ref:`Control<class_Control>` enfants qui sont cachés auront leur taille minimale qui sera prise en compte dans le total, au lieu de seulement celle actuellement visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TabContainer_method_get_current_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_current_tab_control**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_current_tab_control>`

Renvoie le nœud :ref:`Control<class_Control>` enfant localisé à l'index de l'onglet actif.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_popup:

.. rst-class:: classref-method

:ref:`Popup<class_Popup>` **get_popup**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_popup>`

Renvoie l'instance de nœud :ref:`Popup<class_Popup>` si l'un a déjà été défini avec :ref:`set_popup()<class_TabContainer_method_set_popup>`.

\ **Avertissement :** Il s'agit d'un nœud interne requis, le retirer et le supprimer peut causer un plantage. Si vous voulez le cacher ou l'un de ses enfants, utilisez leur propriété :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_previous_tab>`

Renvoie l'index de l'onglet précédemment actif.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_bar:

.. rst-class:: classref-method

:ref:`TabBar<class_TabBar>` **get_tab_bar**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_bar>`

Renvoie le :ref:`TabBar<class_TabBar>` contenu dans ce conteneur.

\ **Attention :** Il s'agit d'un nœud interne nécessaire, l'enlever et le libérer ou en éditer les onglets peut causer un plantage. Si vous souhaitez modifier les onglets, utilisez les méthodes fournies dans **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_button_icon>`

Renvoie l'icône du bouton dans l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_tab_control**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_control>`

Renvoie le nœud :ref:`Control<class_Control>` de l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_count**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_count>`

Renvoie le nombre d'onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon>`

Renvoie la :ref:`Texture2D<class_Texture2D>` pour l'onglet à l'index ``tab_idx`` ou ``null`` si l'onglet n'a pas de :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon_max_width>`

Renvoie la largeur maximale autorisée de l'icône pour l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_at_point>`

Renvoie l'index de l'onglet aux coordonnées locales ``point``. Renvoie ``-1`` si le point est en dehors des limites du contrôle ou s'il n'y a pas d'onglet à la position demandée.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_from_control:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_from_control**\ (\ control\: :ref:`Control<class_Control>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_from_control>`

Renvoie l'index de l'onglet lié au contrôle ``control`` donné. Le contrôle doit être un enfant du **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_metadata>`

Renvoie la valeur des métadonnées définies dans l'onglet à l'index ``tab_idx`` en utilisant :ref:`set_tab_metadata()<class_TabContainer_method_set_tab_metadata>`. Si aucune métadonnée n'a été précédemment définie, renvoie ``null`` par défaut.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_title>`

Renvoie le titre de l'onglet à l'index ``tab_idx``. Le titres des onglets sont par défaut le nom des nœuds enfants indexés, mais ça peut être redéfini avec :ref:`set_tab_title()<class_TabContainer_method_set_tab_title>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_tooltip>`

Renvoie le texte de l'info-bulle de l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_disabled>`

Renvoie ``true`` si l'onglet à la position ``tab_idx`` est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_hidden>`

Renvoie ``true`` si l'onglet à l'index ``tab_idx`` est masqué.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_next_available>`

Sélectionne le premier onglet disponible avec un index supérieur à celui actuellement sélectionné. Renvoie\ ``true`` si la sélection d'onglet a changé.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_previous_available>`

Sélectionne le premier onglet disponible avec un index inférieur à celui actuellement sélectionné. Renvoie\ ``true`` si la sélection d'onglet a changé.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_popup:

.. rst-class:: classref-method

|void| **set_popup**\ (\ popup\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_TabContainer_method_set_popup>`

Si défini à une instance de nœud :ref:`Popup<class_Popup>`, une icône de menu popup apparaît dans le coin supérieur droit du **TabContainer** (le définir à ``null`` la fera disparaître). Cliquer dessus étendra le nœud :ref:`Popup<class_Popup>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_button_icon>`

Définit l'icône du bouton de l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_disabled>`

Si ``disabled`` est ``true``, désactive l'onglet à l'index ``tab_idx``, le rendant non-interactif.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_hidden>`

Si ``hidden`` vaut ``true``, cache l'onglet à l'index ``tab_idx``, le faisait disparaître de la zone des onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon>`

Définit une icône pour l'onglet à la position ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon_max_width>`

Définit la largeur maximale autorisée de l'icône pour l'onglet à l'index ``tab_idx``. Cette limite est appliquée en plus de la taille par défaut de l'icône et en plus de :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`. La hauteur est ajustée selon le ratio de l'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_metadata>`

Définit la valeur des métadonnées pour l'onglet à l'index ``tab_idx``, qui peuvent être récupérées plus tard en utilisant :ref:`get_tab_metadata()<class_TabContainer_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_title>`

Définit un titre personnalisé pour l'onglet à l'index ``tab_idx`` (les titres des onglets sont par défaut le nom du nœud enfant indexé). Définissez au nom de l'enfant pour qu'il redevienne le nom par défaut.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_tooltip>`

Définit un texte d'info-bulle personnalisé pour l'onglet à l'index ``tab_idx``.

\ **Note :** Par défaut, si le ``tooltip`` est vide et que le texte de l'onglet est tronqué (tous les caractères ne s'inscrivent pas tous dans l'onglet), le titre sera affiché en tant qu'info-bulle. Pour cacher l'info-bulle, assignez ``" "`` comme texte du ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_TabContainer_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_drop_mark_color>`

Couleur de modulation pour l'icône :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabContainer_theme_color_font_disabled_color>`

La couleur de la police pour les onglets désactivés.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_hovered_color>`

Couleur de police pour l'onglet actuellement survolé.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_outline_color>`

La teinte du contour du texte du nom de l'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_selected_color>`

La couleur de la police pour l'onglet actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_unselected_color>`

Couleur de police pour les autres onglets, non sélectionnés.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_icon_max_width>`

La largeur maximale autorisée de l'icône de l'onglet. Cette limite est appliquée par dessus la taille par défaut de l'icône, mais avant la valeur définie avec :ref:`TabBar.set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. La hauteur est ajustée selon le rapport de l'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_separation** = ``4`` :ref:`🔗<class_TabContainer_theme_constant_icon_separation>`

Espacement entre le nom de l'onglet et son icône.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_outline_size>`

La taille du contour du texte de l'onglet.

\ **Note :** Lors de l'utilisation d'une police avec :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activé, son :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` doit être défini à au moins *deux fois* la valeur de :ref:`outline_size<class_TabContainer_theme_constant_outline_size>` pour que le rendu puisse être correct. Sinon, le contour peut sembler être coupé plus tôt que prévu.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_side_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **side_margin** = ``8`` :ref:`🔗<class_TabContainer_theme_constant_side_margin>`

L'espace du bord gauche ou droite de la barre d'onglet, selon le :ref:`tab_alignment<class_TabContainer_property_tab_alignment>` actuel.

La marge est ignorée avec :ref:`TabBar.ALIGNMENT_RIGHT<class_TabBar_constant_ALIGNMENT_RIGHT>` si les onglets sont coupés (voir :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`) ou si une popup a été définie (voir :ref:`set_popup()<class_TabContainer_method_set_popup>`). La marge est toujours ignorée avec :ref:`TabBar.ALIGNMENT_CENTER<class_TabBar_constant_ALIGNMENT_CENTER>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_tab_separation>`

L'espace entre les onglets dans la barre d'onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabContainer_theme_font_font>`

La police utilisée pour les noms des onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabContainer_theme_font_size_font_size>`

Taille de police des noms d'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabContainer_theme_icon_decrement>`

L'icône pour le bouton flèche de gauche qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Lorsque le bouton est désactivé (c'est-à-dire le premier onglet est visible), il apparaît en semi-transparent.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabContainer_theme_icon_decrement_highlight>`

L'icône pour le bouton flèche de gauche qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Utilisé quand le bouton est survolé par le curseur.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabContainer_theme_icon_drop_mark>`

Icon shown to indicate where a dragged tab is gonna be dropped (see :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabContainer_theme_icon_increment>`

L'icône pour le bouton flèche de droite qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Lorsque le bouton est désactivé (c'est-à-dire le dernier onglet est visible), il apparaît en semi-transparent.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabContainer_theme_icon_increment_highlight>`

L'icône pour le bouton flèche de droite qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Utilisé quand le bouton est survolé par le curseur.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu** :ref:`🔗<class_TabContainer_theme_icon_menu>`

L'icône pour le bouton de menu (voir :ref:`set_popup()<class_TabContainer_method_set_popup>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_highlight** :ref:`🔗<class_TabContainer_theme_icon_menu_highlight>`

L'icône du bouton de menu (voir :ref:`set_popup()<class_TabContainer_method_set_popup>`) quand il est survolé par le curseur de la souris.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_TabContainer_theme_style_panel>`

Le style pour le remplissage de l'arrière-plan.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabContainer_theme_style_tab_disabled>`

Le style des onglets désactivés.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabContainer_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` utilisé lorsque le :ref:`TabBar<class_TabBar>` a le focus. La :ref:`StyleBox<class_StyleBox>` :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>` est affichée *par-dessus* la :ref:`StyleBox<class_StyleBox>` de base de l'onglet sélectionné, ainsi une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la :ref:`StyleBox<class_StyleBox>` de base reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un soulignement fonctionne bien à cette fin. Pour désactiver l'effet visuel du focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel du focus va nuire à l'utilisabilité de la navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabContainer_theme_style_tab_hovered>`

Le style de l'onglet actuellement survolé.

\ **Note :** Ce style sera dessiné avec la même largeur que :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>` au minimum.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabContainer_theme_style_tab_selected>`

Le style de l'onglet actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabContainer_theme_style_tab_unselected>`

Le style des autres onglets, non sélectionnés.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tabbar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tabbar_background** :ref:`🔗<class_TabContainer_theme_style_tabbar_background>`

Le style pour le remplissage de l'arrière-plan de la zone :ref:`TabBar<class_TabBar>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
