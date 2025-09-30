:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/OptionButton.xml.

.. _class_OptionButton:

OptionButton
============

**Hérite de :** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A button that brings up a dropdown with selectable options when pressed.

.. rst-class:: classref-introduction-group

Description
-----------

**OptionButton** is a type of button that brings up a dropdown with selectable items when pressed. The item selected becomes the "current" item and is displayed as the button text.

See also :ref:`BaseButton<class_BaseButton>` which contains common properties and methods associated with this node.

\ **Note:** The IDs used for items are limited to signed 32-bit integers, not the full 64 bits of :ref:`int<class_int>`. These have a range of ``-2^31`` to ``2^31 - 1``, that is, ``-2147483648`` to ``2147483647``.

\ **Note:** The :ref:`Button.text<class_Button_property_text>` and :ref:`Button.icon<class_Button_property_icon>` properties are set automatically based on the selected item. They shouldn't be changed manually.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                     | action_mode                                                                 | ``0`` (overrides :ref:`BaseButton<class_BaseButton_property_action_mode>`)    |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment                                                                   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`allow_reselect<class_OptionButton_property_allow_reselect>`           | ``false``                                                                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`fit_to_longest_item<class_OptionButton_property_fit_to_longest_item>` | ``true``                                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`item_count<class_OptionButton_property_item_count>`                   | ``0``                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`selected<class_OptionButton_property_selected>`                       | ``-1``                                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode                                                                 | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_icon_item<class_OptionButton_method_add_icon_item>`\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ )       |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_item<class_OptionButton_method_add_item>`\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ )                                                              |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_separator<class_OptionButton_method_add_separator>`\ (\ text\: :ref:`String<class_String>` = ""\ )                                                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`clear<class_OptionButton_method_clear>`\ (\ )                                                                                                                                          |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` | :ref:`get_item_auto_translate_mode<class_OptionButton_method_get_item_auto_translate_mode>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                     | :ref:`get_item_icon<class_OptionButton_method_get_item_icon>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_item_id<class_OptionButton_method_get_item_id>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_item_index<class_OptionButton_method_get_item_index>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`get_item_metadata<class_OptionButton_method_get_item_metadata>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_item_text<class_OptionButton_method_get_item_text>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_item_tooltip<class_OptionButton_method_get_item_tooltip>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>`                     | :ref:`get_popup<class_OptionButton_method_get_popup>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_selectable_item<class_OptionButton_method_get_selectable_item>`\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const|                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_selected_id<class_OptionButton_method_get_selected_id>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`get_selected_metadata<class_OptionButton_method_get_selected_metadata>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_selectable_items<class_OptionButton_method_has_selectable_items>`\ (\ ) |const|                                                                                                    |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_item_disabled<class_OptionButton_method_is_item_disabled>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_item_separator<class_OptionButton_method_is_item_separator>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_item<class_OptionButton_method_remove_item>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`select<class_OptionButton_method_select>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                           |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_disable_shortcuts<class_OptionButton_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                                                                      |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_auto_translate_mode<class_OptionButton_method_set_item_auto_translate_mode>`\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_disabled<class_OptionButton_method_set_item_disabled>`\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                 |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_icon<class_OptionButton_method_set_item_icon>`\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_id<class_OptionButton_method_set_item_id>`\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_metadata<class_OptionButton_method_set_item_metadata>`\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )                                           |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_text<class_OptionButton_method_set_item_text>`\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ )                                                         |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_item_tooltip<class_OptionButton_method_set_item_tooltip>`\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`show_popup<class_OptionButton_method_show_popup>`\ (\ )                                                                                                                                |
   +-------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`arrow_margin<class_OptionButton_theme_constant_arrow_margin>`     | ``4`` |
   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`modulate_arrow<class_OptionButton_theme_constant_modulate_arrow>` | ``0`` |
   +-----------------------------------+-------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`arrow<class_OptionButton_theme_icon_arrow>`                       |       |
   +-----------------------------------+-------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_OptionButton_signal_item_focused:

.. rst-class:: classref-signal

**item_focused**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_focused>`

Emitted when the user navigates to an item using the :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>` or :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>` input actions. The index of the item selected is passed as argument.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_signal_item_selected:

.. rst-class:: classref-signal

**item_selected**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_signal_item_selected>`

Emitted when the current item has been changed by the user. The index of the item selected is passed as argument.

\ :ref:`allow_reselect<class_OptionButton_property_allow_reselect>` must be enabled to reselect an item.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OptionButton_property_allow_reselect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_reselect** = ``false`` :ref:`🔗<class_OptionButton_property_allow_reselect>`

.. rst-class:: classref-property-setget

- |void| **set_allow_reselect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_reselect**\ (\ )

Si ``true``, l'élément actuellement sélectionné peut être sélectionné à nouveau.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_fit_to_longest_item:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fit_to_longest_item** = ``true`` :ref:`🔗<class_OptionButton_property_fit_to_longest_item>`

.. rst-class:: classref-property-setget

- |void| **set_fit_to_longest_item**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_fit_to_longest_item**\ (\ )

If ``true``, minimum size will be determined by the longest item's text, instead of the currently selected one's.

\ **Note:** For performance reasons, the minimum size doesn't update immediately when adding, removing or modifying items.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_OptionButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

The number of items to select from.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_property_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **selected** = ``-1`` :ref:`🔗<class_OptionButton_property_selected>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_selected**\ (\ )

L'index de l'élément actuellement sélectionné, ou ``-1`` si aucun élément n'est sélectionné.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OptionButton_method_add_icon_item:

.. rst-class:: classref-method

|void| **add_icon_item**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_icon_item>`

Adds an item, with a ``texture`` icon, text ``label`` and (optionally) ``id``. If no ``id`` is passed, the item index will be used as the item's ID. New items are appended at the end.

\ **Note:** The item will be selected if there are no other items.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_item:

.. rst-class:: classref-method

|void| **add_item**\ (\ label\: :ref:`String<class_String>`, id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_OptionButton_method_add_item>`

Adds an item, with text ``label`` and (optionally) ``id``. If no ``id`` is passed, the item index will be used as the item's ID. New items are appended at the end.

\ **Note:** The item will be selected if there are no other items.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_add_separator:

.. rst-class:: classref-method

|void| **add_separator**\ (\ text\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_OptionButton_method_add_separator>`

Adds a separator to the list of items. Separators help to group items, and can optionally be given a ``text`` header. A separator also gets an index assigned, and is appended at the end of the item list.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_OptionButton_method_clear>`

Retire tous les éléments du **OptionButton**.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_auto_translate_mode:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_auto_translate_mode>`

Returns the auto translate mode of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_icon**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_icon>`

Returns the icon of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_id**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_id>`

Returns the ID of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_index**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_index>`

Returns the index of the item with the given ``id``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_item_metadata**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_metadata>`

Récupère les méta-données d'un élément. Les méta-données peuvent être de n'importe quel type et peuvent être utilisées pour enregistrer des informations additionnelles sur un élément, comme un identifiant externe.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_text**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_text>`

Renvoie le texte de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_item_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_tooltip**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_get_item_tooltip>`

Renvoie l'infobulle de l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_popup>`

Renvoie le :ref:`PopupMenu<class_PopupMenu>` contenu dans ce bouton.

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt la propriété :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selectable_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selectable_item**\ (\ from_last\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_OptionButton_method_get_selectable_item>`

Returns the index of the first item which is not disabled, or marked as a separator. If ``from_last`` is ``true``, the items will be searched in reverse order.

Returns ``-1`` if no item is found.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_id**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_id>`

Renvoie l'identifiant de l’élément sélectionné, ou ``-1`` si aucun n'est sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_get_selected_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_selected_metadata**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_get_selected_metadata>`

Obtient les métadonnées de l'élément sélectionné. Les métadonnées peuvent être définies en utilisant :ref:`set_item_metadata()<class_OptionButton_method_set_item_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_has_selectable_items:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selectable_items**\ (\ ) |const| :ref:`🔗<class_OptionButton_method_has_selectable_items>`

Returns ``true`` if this button contains at least one item which is not disabled, or marked as a separator.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_disabled**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_disabled>`

Returns ``true`` if the item at index ``idx`` is disabled.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_is_item_separator:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_item_separator**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OptionButton_method_is_item_separator>`

Returns ``true`` if the item at index ``idx`` is marked as a separator.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_remove_item>`

Retire l'élément à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_select>`

Sélectionne un élément par son index et en fait l'élément actuel. Cela fonctionnera même si l'élément est désactivé.

Passer ``-1`` en index désélectionne tout élément actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_disable_shortcuts>`

Si ``true``, les raccourcis sont désactivés et ne peuvent pas être utilisés pour déclencher le bouton.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_auto_translate_mode:

.. rst-class:: classref-method

|void| **set_item_auto_translate_mode**\ (\ idx\: :ref:`int<class_int>`, mode\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ ) :ref:`🔗<class_OptionButton_method_set_item_auto_translate_mode>`

Sets the auto translate mode of the item at index ``idx``.

Items use :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>` by default, which uses the same auto translate mode as the **OptionButton** itself.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_disabled:

.. rst-class:: classref-method

|void| **set_item_disabled**\ (\ idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OptionButton_method_set_item_disabled>`

Sets whether the item at index ``idx`` is disabled.

Disabled items are drawn differently in the dropdown and are not selectable by the user. If the current selected item is set as disabled, it will remain selected.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_icon:

.. rst-class:: classref-method

|void| **set_item_icon**\ (\ idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_OptionButton_method_set_item_icon>`

Sets the icon of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_id:

.. rst-class:: classref-method

|void| **set_item_id**\ (\ idx\: :ref:`int<class_int>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OptionButton_method_set_item_id>`

Sets the ID of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_metadata:

.. rst-class:: classref-method

|void| **set_item_metadata**\ (\ idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OptionButton_method_set_item_metadata>`

Définit les métadonnées d'un élément. Les métadonnées peuvent être de n'importe quel type et peuvent être utilisées pour stocker des informations supplémentaires sur un élément, comme un identifiant de chaîne externe.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_text:

.. rst-class:: classref-method

|void| **set_item_text**\ (\ idx\: :ref:`int<class_int>`, text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_text>`

Sets the text of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_set_item_tooltip:

.. rst-class:: classref-method

|void| **set_item_tooltip**\ (\ idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OptionButton_method_set_item_tooltip>`

Sets the tooltip of the item at index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_OptionButton_method_show_popup>`

Adjusts popup position and sizing for the **OptionButton**, then shows the :ref:`PopupMenu<class_PopupMenu>`. Prefer this over using ``get_popup().popup()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_OptionButton_theme_constant_arrow_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **arrow_margin** = ``4`` :ref:`🔗<class_OptionButton_theme_constant_arrow_margin>`

L'espace horizontal entre l'icône de la flèche et le bord droit du bouton.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_constant_modulate_arrow:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **modulate_arrow** = ``0`` :ref:`🔗<class_OptionButton_theme_constant_modulate_arrow>`

If different than ``0``, the arrow icon will be modulated to the font color.

.. rst-class:: classref-item-separator

----

.. _class_OptionButton_theme_icon_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **arrow** :ref:`🔗<class_OptionButton_theme_icon_arrow>`

L'icône de la flèche qui est affichée au bord droit du bouton.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
