:github_url: hide

.. _class_GLTFObjectModelProperty:

GLTFObjectModelProperty
=======================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describe cómo acceder a una propiedad tal como se define en el modelo de objeto glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GLTFObjectModelProperty defines a mapping between a property in the glTF object model and a NodePath in the Godot scene tree. This can be used to animate properties in a glTF file using the ``KHR_animation_pointer`` extension, or to access them through an engine-agnostic script such as a behavior graph as defined by the ``KHR_interactivity`` extension.

The glTF property is identified by JSON pointer(s) stored in :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`, while the Godot property it maps to is defined by :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. In most cases :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` and :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` will each only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties, or a single Godot property will be mapped to multiple glTF JSON pointers, or it might be a many-to-many relationship.

\ :ref:`Expression<class_Expression>` objects can be used to define conversions between the data, such as when glTF defines an angle in radians and Godot uses degrees. The :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` property defines the type of data stored in the glTF file as defined by the object model, see :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` for possible values.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Modelo de objeto GLTF <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc>`__

- `Extensión KHR_animation_pointer de GLTF <https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`gltf_to_godot_expression<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`godot_to_gltf_expression<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`                       | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                   | :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`                             | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`   | :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`               | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`                            | :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>`                         | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_node_path<class_GLTFObjectModelProperty_method_append_node_path>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_path_to_property<class_GLTFObjectModelProperty_method_append_path_to_property>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ )                                          |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` | :ref:`get_accessor_type<class_GLTFObjectModelProperty_method_get_accessor_type>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_json_pointers<class_GLTFObjectModelProperty_method_has_json_pointers>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_node_paths<class_GLTFObjectModelProperty_method_has_node_paths>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_types<class_GLTFObjectModelProperty_method_set_types>`\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GLTFObjectModelProperty_GLTFObjectModelType:

.. rst-class:: classref-enumeration

enum **GLTFObjectModelType**: :ref:`🔗<enum_GLTFObjectModelProperty_GLTFObjectModelType>`

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_UNKNOWN** = ``0``

Unknown or not set object model type. If the object model type is set to this value, the real type still needs to be determined.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_BOOL** = ``1``

Object model type "bool". Represented in the glTF JSON as a boolean, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "SCALAR". When encoded in an accessor, a value of ``0`` is ``false``, and any other value is ``true``.

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT** = ``2``

Object model type "float". Represented in the glTF JSON as a number, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY** = ``3``

Object model type "float\[\]". Represented in the glTF JSON as an array of numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "SCALAR".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2** = ``4``

Object model type "float2". Represented in the glTF JSON as an array of two numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "VEC2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3** = ``5``

Object model type "float3". Represented in the glTF JSON as an array of three numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "VEC3".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4** = ``6``

Object model type "float4". Represented in the glTF JSON as an array of four numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "VEC4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2X2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2X2** = ``7``

Object model type "float2x2". Represented in the glTF JSON as an array of four numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "MAT2".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3X3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3X3** = ``8``

Object model type "float3x3". Represented in the glTF JSON as an array of nine numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "MAT3".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4X4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4X4** = ``9``

Object model type "float4x4". Represented in the glTF JSON as an array of sixteen numbers, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "MAT4".

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_INT** = ``10``

Object model type "int". Represented in the glTF JSON as a number, and encoded in a :ref:`GLTFAccessor<class_GLTFAccessor>` as "SCALAR". The range of values is limited to signed integers. For ``KHR_interactivity``, only 32-bit integers are supported.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFObjectModelProperty_property_gltf_to_godot_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **gltf_to_godot_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>`

.. rst-class:: classref-property-setget

- |void| **set_gltf_to_godot_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_gltf_to_godot_expression**\ (\ )

If set, this :ref:`Expression<class_Expression>` will be used to convert the property value from the glTF object model to the value expected by the Godot property. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If ``null``, the value will be copied as-is.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_godot_to_gltf_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **godot_to_gltf_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>`

.. rst-class:: classref-property-setget

- |void| **set_godot_to_gltf_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_godot_to_gltf_expression**\ (\ )

If set, this :ref:`Expression<class_Expression>` will be used to convert the property value from the Godot property to the value expected by the glTF object model. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If ``null``, the value will be copied as-is.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_json_pointers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **json_pointers** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_json_pointers>`

.. rst-class:: classref-property-setget

- |void| **set_json_pointers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **get_json_pointers**\ (\ )

The glTF object model JSON pointers used to identify the property in the glTF object model. In most cases, there will be only one item in this array, but specific cases may require multiple pointers. The items are themselves arrays which represent the JSON pointer split into its components.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_node_paths:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **node_paths** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_node_paths>`

.. rst-class:: classref-property-setget

- |void| **set_node_paths**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_node_paths**\ (\ )

An array of :ref:`NodePath<class_NodePath>`\ s that point to a property, or multiple properties, in the Godot scene tree. On import, this will either be set by :ref:`GLTFDocument<class_GLTFDocument>`, or by a :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` class. For simple cases, use :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` to add properties to this array.

In most cases :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` will only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties. For example, a :ref:`GLTFCamera<class_GLTFCamera>` or :ref:`GLTFLight<class_GLTFLight>` used on multiple glTF nodes will be represented by multiple Godot nodes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_object_model_type:

.. rst-class:: classref-property

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **object_model_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_object_model_type>`

.. rst-class:: classref-property-setget

- |void| **set_object_model_type**\ (\ value\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ )
- :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **get_object_model_type**\ (\ )

The type of data stored in the glTF file as defined by the object model. This is a superset of the available accessor types, and determines the accessor type.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_variant_type:

.. rst-class:: classref-property

:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **variant_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_variant_type>`

.. rst-class:: classref-property-setget

- |void| **set_variant_type**\ (\ value\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )
- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **get_variant_type**\ (\ )

The type of data stored in the Godot property. This is the type of the property that the :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` point to.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFObjectModelProperty_method_append_node_path:

.. rst-class:: classref-method

|void| **append_node_path**\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_node_path>`

Añade una :ref:`NodePath<class_NodePath>` a :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`. Esto puede ser usado por clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` para definir como una propiedad del modelo de objeto glTF se asigna a una propiedad de Godot, o a múltiples propiedades de Godot. Es preferible usar :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` para casos sencillos. Asegúrate de llamar también a :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` una vez (el orden no importa).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_append_path_to_property:

.. rst-class:: classref-method

|void| **append_path_to_property**\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_path_to_property>`

Wrapper de alto nivel sobre :ref:`append_node_path()<class_GLTFObjectModelProperty_method_append_node_path>` que maneja los casos más comunes. Construye una nueva :ref:`NodePath<class_NodePath>` usando ``node_path`` como base y añade ``prop_name`` al subpath. Asegúrate de llamar también a :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>` una vez (el orden no importa).

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_get_accessor_type:

.. rst-class:: classref-method

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_get_accessor_type>`

El tipo de accesor GLTF asociado con el :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` de esta propiedad. Véase :ref:`GLTFAccessor.accessor_type<class_GLTFAccessor_property_accessor_type>` para ver los valores posibles, y véase :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` para ver cómo el tipo de modelo de objeto se asigna a los tipos de accesor.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_json_pointers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_json_pointers**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_json_pointers>`

Devuelve ``true`` si :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` no está vacío. Esto se utiliza durante la exportación para determinar si una **GLTFObjectModelProperty** puede manejar la conversión de una propiedad de Godot a una propiedad de modelo de objeto glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_node_paths:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_paths**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_node_paths>`

Returns ``true`` if :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` is not empty. This is used during import to determine if a **GLTFObjectModelProperty** can handle converting a glTF object model property to a Godot property.

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_set_types:

.. rst-class:: classref-method

|void| **set_types**\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_set_types>`

Sets the :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>` and :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` properties. This is a convenience method to set both properties at once, since they are almost always known at the same time. This method should be called once. Calling it again with the same values will have no effect.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
