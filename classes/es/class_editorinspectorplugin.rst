:github_url: hide

.. _class_EditorInspectorPlugin:

EditorInspectorPlugin
=====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Plugin para agregar editores de propiedades personalizados en el inspector.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorInspectorPlugin** allows adding custom property editors to :ref:`EditorInspector<class_EditorInspector>`.

When an object is edited, the :ref:`_can_handle()<class_EditorInspectorPlugin_private_method__can_handle>` function is called and must return ``true`` if the object type is supported.

If supported, the function :ref:`_parse_begin()<class_EditorInspectorPlugin_private_method__parse_begin>` will be called, allowing to place custom controls at the beginning of the class.

Subsequently, the :ref:`_parse_category()<class_EditorInspectorPlugin_private_method__parse_category>` and :ref:`_parse_property()<class_EditorInspectorPlugin_private_method__parse_property>` are called for every category and property. They offer the ability to add custom controls to the inspector too.

Finally, :ref:`_parse_end()<class_EditorInspectorPlugin_private_method__parse_end>` will be called.

On each of these calls, the "add" functions can be called.

To use **EditorInspectorPlugin**, register it using the :ref:`EditorPlugin.add_inspector_plugin()<class_EditorPlugin_method_add_inspector_plugin>` method first.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Plugins del inspector <../tutorials/plugins/editor/inspector_plugins>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_can_handle<class_EditorInspectorPlugin_private_method__can_handle>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_begin<class_EditorInspectorPlugin_private_method__parse_begin>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_category<class_EditorInspectorPlugin_private_method__parse_category>`\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_end<class_EditorInspectorPlugin_private_method__parse_end>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_group<class_EditorInspectorPlugin_private_method__parse_group>`\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_parse_property<class_EditorInspectorPlugin_private_method__parse_property>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_custom_control<class_EditorInspectorPlugin_method_add_custom_control>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor<class_EditorInspectorPlugin_method_add_property_editor>`\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ )                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor_for_multiple_properties<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorInspectorPlugin_private_method__can_handle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_handle**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const| :ref:`🔗<class_EditorInspectorPlugin_private_method__can_handle>`

Devuelve ``true`` si este objeto puede ser manejado por este plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_begin:

.. rst-class:: classref-method

|void| **_parse_begin**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_begin>`

Called to allow adding controls at the beginning of the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_category:

.. rst-class:: classref-method

|void| **_parse_category**\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_category>`

Called to allow adding controls at the beginning of a category in the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_end:

.. rst-class:: classref-method

|void| **_parse_end**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_end>`

Called to allow adding controls at the end of the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_group:

.. rst-class:: classref-method

|void| **_parse_group**\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_group>`

Called to allow adding controls at the beginning of a group or a sub-group in the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_parse_property**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_property>`

Called to allow adding property-specific editors to the property list for ``object``. The added editor control must extend :ref:`EditorProperty<class_EditorProperty>`. Returning ``true`` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_custom_control:

.. rst-class:: classref-method

|void| **add_custom_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_custom_control>`

Adds a custom control, which is not necessarily a property editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor:

.. rst-class:: classref-method

|void| **add_property_editor**\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor>`

Adds a property editor for an individual property. The ``editor`` control must extend :ref:`EditorProperty<class_EditorProperty>`.

There can be multiple property editors for a property. If ``add_to_end`` is ``true``, this newly added editor will be displayed after all the other editors of the property whose ``add_to_end`` is ``false``. For example, the editor uses this parameter to add an "Edit Region" button for :ref:`Sprite2D.region_rect<class_Sprite2D_property_region_rect>` below the regular :ref:`Rect2<class_Rect2>` editor.

\ ``label`` can be used to choose a custom label for the property editor in the inspector. If left empty, the label is computed from the name of the property instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties:

.. rst-class:: classref-method

|void| **add_property_editor_for_multiple_properties**\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`

Adds an editor that allows modifying multiple properties. The ``editor`` control must extend :ref:`EditorProperty<class_EditorProperty>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
