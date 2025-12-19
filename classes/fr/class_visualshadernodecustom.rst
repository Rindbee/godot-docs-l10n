:github_url: hide

.. _class_VisualShaderNodeCustom:

VisualShaderNodeCustom
======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe virtuelle pour définir des :ref:`VisualShaderNode<class_VisualShaderNode>`\ s personnalisés à utiliser dans l'éditeur de shaders visuels.

.. rst-class:: classref-introduction-group

Description
-----------

By inheriting this class you can create a custom :ref:`VisualShader<class_VisualShader>` script addon which will be automatically added to the Visual Shader Editor. The :ref:`VisualShaderNode<class_VisualShaderNode>`'s behavior is defined by overriding the provided virtual methods.

In order for the node to be registered as an editor addon, you must use the ``@tool`` annotation and provide a ``class_name`` for your custom script. For example:

::

    @tool
    extends VisualShaderNodeCustom
    class_name VisualShaderNodeNoise

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Plugins de Visual Shader <../tutorials/plugins/editor/visual_shader_plugins>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_category<class_VisualShaderNodeCustom_private_method__get_category>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_code<class_VisualShaderNodeCustom_private_method__get_code>`\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_default_input_port<class_VisualShaderNodeCustom_private_method__get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const|                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_description<class_VisualShaderNodeCustom_private_method__get_description>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_func_code<class_VisualShaderNodeCustom_private_method__get_func_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_global_code<class_VisualShaderNodeCustom_private_method__get_global_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_input_port_count<class_VisualShaderNodeCustom_private_method__get_input_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_input_port_default_value<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_input_port_name<class_VisualShaderNodeCustom_private_method__get_input_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_input_port_type<class_VisualShaderNodeCustom_private_method__get_input_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_name<class_VisualShaderNodeCustom_private_method__get_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_output_port_count<class_VisualShaderNodeCustom_private_method__get_output_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_output_port_name<class_VisualShaderNodeCustom_private_method__get_output_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_output_port_type<class_VisualShaderNodeCustom_private_method__get_output_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_count<class_VisualShaderNodeCustom_private_method__get_property_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_default_index<class_VisualShaderNodeCustom_private_method__get_property_default_index>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_property_name<class_VisualShaderNodeCustom_private_method__get_property_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_property_options<class_VisualShaderNodeCustom_private_method__get_property_options>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_return_icon_type<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_available<class_VisualShaderNodeCustom_private_method__is_available>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_highend<class_VisualShaderNodeCustom_private_method__is_highend>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_index<class_VisualShaderNodeCustom_method_get_option_index>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisualShaderNodeCustom_private_method__get_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_category**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_category>`

Override this method to define the path to the associated custom node in the Visual Shader Editor's members dialog. The path may look like ``"MyGame/MyFunctions/Noise"``.

Defining this method is **optional**. If not overridden, the node will be filed under the "Addons" category.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_code**\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_code>`

Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

The ``input_vars`` and ``output_vars`` arrays contain the string names of the various input and output variables, as defined by ``_get_input_*`` and ``_get_output_*`` virtual methods in this class.

The output ports can be assigned values in the shader code. For example, ``return output_vars[0] + " = " + input_vars[0] + ";"``.

You can customize the generated code based on the shader ``mode`` and/or ``type``.

Defining this method is **required**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_default_input_port>`

Override this method to define the input port which should be connected by default when this node is created as a result of dragging a connection from an existing node to the empty space on the graph.

Defining this method is **optional**. If not overridden, the connection will be created to the first valid port.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_description>`

Redéfinissez cette méthode pour définir la description du nœud personnalisé associé dans la fenêtre des membres de l'éditeur de shader visuel.

La définition de cette méthode est **optionnelle**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_func_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_func_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_func_code>`

Override this method to add a shader code to the beginning of each shader function (once). The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

If there are multiple custom nodes of different types which use this feature the order of each insertion is undefined.

You can customize the generated code based on the shader ``mode`` and/or ``type``.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_global_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_global_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_global_code>`

Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the ``"""`` multiline string construct can be used for convenience).

Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.

You can customize the generated code based on the shader ``mode``.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_input_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_count>`

Override this method to define the number of input ports of the associated custom node.

Defining this method is **required**. If not overridden, the node has no input ports.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`

Override this method to define the default value for the specified input port. Prefer use this over :ref:`VisualShaderNode.set_input_port_default_value()<class_VisualShaderNode_method_set_input_port_default_value>`.

Defining this method is **required**. If not overridden, the node has no default values for their input ports.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_input_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_name>`

Override this method to define the names of input ports of the associated custom node. The names are used both for the input slots in the editor and as identifiers in the shader code, and are passed in the ``input_vars`` array in :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Defining this method is **optional**, but recommended. If not overridden, input ports are named as ``"in" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_input_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_type>`

Override this method to define the returned type of each input port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, input ports will return the :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>` type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_name>`

Override this method to define the name of the associated custom node in the Visual Shader Editor's members dialog and graph.

Defining this method is **optional**, but recommended. If not overridden, the node will be named as "Unnamed".

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_output_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_count>`

Override this method to define the number of output ports of the associated custom node.

Defining this method is **required**. If not overridden, the node has no output ports.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_output_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_name>`

Override this method to define the names of output ports of the associated custom node. The names are used both for the output slots in the editor and as identifiers in the shader code, and are passed in the ``output_vars`` array in :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Defining this method is **optional**, but recommended. If not overridden, output ports are named as ``"out" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_output_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_type>`

Override this method to define the returned type of each output port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, output ports will return the :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>` type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_count>`

Override this method to define the number of the properties.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_default_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_default_index**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_default_index>`

Override this method to define the default index of the property of the associated custom node.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_property_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_name>`

Override this method to define the names of the property of the associated custom node.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_options:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_property_options**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_options>`

Override this method to define the options inside the drop-down list property of the associated custom node.

Defining this method is **optional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_return_icon_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_return_icon_type**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`

Override this method to define the return icon of the associated custom node in the Visual Shader Editor's members dialog.

Defining this method is **optional**. If not overridden, no return icon is shown.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_available**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_available>`

Override this method to prevent the node to be visible in the member dialog for the certain ``mode`` and/or ``type``.

Defining this method is **optional**. If not overridden, it's ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_highend:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_highend**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_highend>`

Override this method to enable the high-end mark in the Visual Shader Editor's members dialog. This should return ``true`` for nodes that only work when using the Forward+ and Mobile renderers.

Defining this method is **optional**. If not overridden, it's ``false``, which indicates this node works with all renderers (including Compatibility).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_method_get_option_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_index**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeCustom_method_get_option_index>`

Returns the selected index of the drop-down list option within a graph. You may use this function to define the specific behavior in the :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>` or :ref:`_get_global_code()<class_VisualShaderNodeCustom_private_method__get_global_code>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
