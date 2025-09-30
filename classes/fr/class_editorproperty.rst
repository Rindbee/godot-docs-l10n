:github_url: hide

.. _class_EditorProperty:

EditorProperty
==============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Custom control for editing properties that can be added to the :ref:`EditorInspector<class_EditorInspector>`.

.. rst-class:: classref-introduction-group

Description
-----------

A custom control for editing properties that can be added to the :ref:`EditorInspector<class_EditorInspector>`. It is added via :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checkable<class_EditorProperty_property_checkable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checked<class_EditorProperty_property_checked>`                   | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`deletable<class_EditorProperty_property_deletable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_background<class_EditorProperty_property_draw_background>`   | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_label<class_EditorProperty_property_draw_label>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_warning<class_EditorProperty_property_draw_warning>`         | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                              | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`keying<class_EditorProperty_property_keying>`                     | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`label<class_EditorProperty_property_label>`                       | ``""``                                                              |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`name_split_ratio<class_EditorProperty_property_name_split_ratio>` | ``0.5``                                                             |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`read_only<class_EditorProperty_property_read_only>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`selectable<class_EditorProperty_property_selectable>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`use_folding<class_EditorProperty_property_use_folding>`           | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_set_read_only<class_EditorProperty_private_method__set_read_only>`\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_update_property<class_EditorProperty_private_method__update_property>`\ (\ ) |virtual|                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_focusable<class_EditorProperty_method_add_focusable>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`deselect<class_EditorProperty_method_deselect>`\ (\ )                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit_changed<class_EditorProperty_method_emit_changed>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_edited_object<class_EditorProperty_method_get_edited_object>`\ (\ )                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_edited_property<class_EditorProperty_method_get_edited_property>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_selected<class_EditorProperty_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`select<class_EditorProperty_method_select>`\ (\ focusable\: :ref:`int<class_int>` = -1\ )                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bottom_editor<class_EditorProperty_method_set_bottom_editor>`\ (\ editor\: :ref:`Control<class_Control>`\ )                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_label_reference<class_EditorProperty_method_set_label_reference>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_object_and_property<class_EditorProperty_method_set_object_and_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ )                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`update_property<class_EditorProperty_method_update_property>`\ (\ )                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorProperty_signal_multiple_properties_changed:

.. rst-class:: classref-signal

**multiple_properties_changed**\ (\ properties\: :ref:`PackedStringArray<class_PackedStringArray>`, value\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EditorProperty_signal_multiple_properties_changed>`

Emit it if you want multiple properties modified at the same time. Do not use if added via :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ property\: :ref:`StringName<class_StringName>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_object_id_selected>`

Utilisé par des sous-inspecteurs. Émettez-le si l'identifiant d'un Object a été sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_can_revert_changed:

.. rst-class:: classref-signal

**property_can_revert_changed**\ (\ property\: :ref:`StringName<class_StringName>`, can_revert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_can_revert_changed>`

Emitted when the revertability (i.e., whether it has a non-default value and thus is displayed with a revert icon) of a property has changed.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_changed:

.. rst-class:: classref-signal

**property_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>`, changing\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_changed>`

Ne l'émettez pas manuellement, utilisez plutôt la méthode :ref:`emit_changed()<class_EditorProperty_method_emit_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_checked:

.. rst-class:: classref-signal

**property_checked**\ (\ property\: :ref:`StringName<class_StringName>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_checked>`

Émis lors de la vérification d’une propriété. Utilisé en interne.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_deleted>`

Émis lorsqu'une propriété a été supprimée. Utilisé en interne.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_favorited:

.. rst-class:: classref-signal

**property_favorited**\ (\ property\: :ref:`StringName<class_StringName>`, favorited\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_favorited>`

Emit it if you want to mark a property as favorited, making it appear at the top of the inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed>`

Émettez-le si vous voulez ajouter cette valeur comme clé d'animation (vérifiez que la clé est d'abord activée).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed_with_value:

.. rst-class:: classref-signal

**property_keyed_with_value**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed_with_value>`

Emettez-le si vous voulez définir une clé pour cette propriété avec une valeur unique.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_overridden:

.. rst-class:: classref-signal

**property_overridden**\ (\ ) :ref:`🔗<class_EditorProperty_signal_property_overridden>`

Emitted when a setting override for the current project is requested.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_pinned:

.. rst-class:: classref-signal

**property_pinned**\ (\ property\: :ref:`StringName<class_StringName>`, pinned\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_pinned>`

Emit it if you want to mark (or unmark) the value of a property for being saved regardless of being equal to the default value.

The default value is the one the property will get when the node is just instantiated and can come from an ancestor scene in the inheritance/instantiation chain, a script or a builtin class.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ path\: :ref:`String<class_String>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorProperty_signal_resource_selected>`

Si vous voulez que la sous-ressource soit modifié, émettez ce signal avec cette ressource.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_selected:

.. rst-class:: classref-signal

**selected**\ (\ path\: :ref:`String<class_String>`, focusable_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_selected>`

Émis lors de la sélection. Utilisé en interne.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_EditorProperty_property_checkable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checkable** = ``false`` :ref:`🔗<class_EditorProperty_property_checkable>`

.. rst-class:: classref-property-setget

- |void| **set_checkable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checkable**\ (\ )

Utilisé par l'inspecteur, défini à ``true`` lorsque la propriété peut être cochée.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checked** = ``false`` :ref:`🔗<class_EditorProperty_property_checked>`

.. rst-class:: classref-property-setget

- |void| **set_checked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checked**\ (\ )

Utilisé par l'inspecteur, défini à ``true`` quand la propriété est cochée.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_deletable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deletable** = ``false`` :ref:`🔗<class_EditorProperty_property_deletable>`

.. rst-class:: classref-property-setget

- |void| **set_deletable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deletable**\ (\ )

Used by the inspector, set to ``true`` when the property can be deleted by the user.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_background:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_background** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_background>`

.. rst-class:: classref-property-setget

- |void| **set_draw_background**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_background**\ (\ )

Used by the inspector, set to ``true`` when the property background is drawn.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_label:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_label** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_label>`

.. rst-class:: classref-property-setget

- |void| **set_draw_label**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_label**\ (\ )

Used by the inspector, set to ``true`` when the property label is drawn.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_warning** = ``false`` :ref:`🔗<class_EditorProperty_property_draw_warning>`

.. rst-class:: classref-property-setget

- |void| **set_draw_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_warning**\ (\ )

Utilisé par l'inspecteur, définit à ``true`` quand la propriété est affiché avec la couleur d'avertissement de l'éditeur. Ceci est utilisé pour les propriétés modifiables pour les nœuds enfants.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_keying:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keying** = ``false`` :ref:`🔗<class_EditorProperty_property_keying>`

.. rst-class:: classref-property-setget

- |void| **set_keying**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keying**\ (\ )

Utilisé par l'inspecteur, définit à ``true`` si la propriété peut ajouter une clé pour être animée.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorProperty_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Réglez cette propriété pour changer l'étiquette (si vous voulez en montrer une).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_name_split_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **name_split_ratio** = ``0.5`` :ref:`🔗<class_EditorProperty_property_name_split_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_name_split_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_name_split_ratio**\ (\ )

Space distribution ratio between the label and the editing field.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorProperty_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Utilisé par l'inspecteur, défini à ``true`` quand la propriété est en lecture-seule.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_EditorProperty_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Used by the inspector, set to ``true`` when the property is selectable.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_use_folding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_folding** = ``false`` :ref:`🔗<class_EditorProperty_property_use_folding>`

.. rst-class:: classref-property-setget

- |void| **set_use_folding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_folding**\ (\ )

Used by the inspector, set to ``true`` when the property is using folding.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorProperty_private_method__set_read_only:

.. rst-class:: classref-method

|void| **_set_read_only**\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__set_read_only>`

Called when the read-only status of the property is changed. It may be used to change custom controls into a read-only or modifiable state.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_private_method__update_property:

.. rst-class:: classref-method

|void| **_update_property**\ (\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__update_property>`

Lorsque cette fonction virtuelle est appelée, vous devez mettre à jour votre éditeur.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_add_focusable:

.. rst-class:: classref-method

|void| **add_focusable**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_add_focusable>`

Si l'un des contrôles ajoutés peut récupérer le focus du clavier, ajoutez-le ici. Cela permettra de rétablir le focus si l'inspecteur est mis à jour.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_deselect:

.. rst-class:: classref-method

|void| **deselect**\ (\ ) :ref:`🔗<class_EditorProperty_method_deselect>`

Draw property as not selected. Used by the inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorProperty_method_emit_changed>`

Si une ou plusieurs propriétés ont changé, ceci doit être appelé. ``field`` est utilisé au cas où votre éditeur peut modifier les champs séparément (par exemple : Vector3.x) L'argument ``changing`` évite à l'éditeur de demander que cette propriété soit rafraîchie (laissez-le à ``false`` en cas de doute).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorProperty_method_get_edited_object>`

Returns the edited object.

\ **Note:** This method could return ``null`` if the editor has not yet been associated with a property. However, in :ref:`_update_property()<class_EditorProperty_private_method__update_property>` and :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>`, this value is *guaranteed* to be non-``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_property:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_edited_property**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_get_edited_property>`

Returns the edited property. If your editor is for a single property (added via :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`), then this will return the property.

\ **Note:** This method could return ``null`` if the editor has not yet been associated with a property. However, in :ref:`_update_property()<class_EditorProperty_private_method__update_property>` and :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>`, this value is *guaranteed* to be non-``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_is_selected>`

Returns ``true`` if property is drawn as selected. Used by the inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ focusable\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_EditorProperty_method_select>`

Draw property as selected. Used by the inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_bottom_editor:

.. rst-class:: classref-method

|void| **set_bottom_editor**\ (\ editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_bottom_editor>`

Puts the ``editor`` control below the property label. The control must be previously added using :ref:`Node.add_child()<class_Node_method_add_child>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_label_reference:

.. rst-class:: classref-method

|void| **set_label_reference**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_label_reference>`

Used by the inspector, set to a control that will be used as a reference to calculate the size of the label.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_object_and_property:

.. rst-class:: classref-method

|void| **set_object_and_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_method_set_object_and_property>`

Assigns object and property to edit.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_update_property:

.. rst-class:: classref-method

|void| **update_property**\ (\ ) :ref:`🔗<class_EditorProperty_method_update_property>`

Forces a refresh of the property display.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
