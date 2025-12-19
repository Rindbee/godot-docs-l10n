:github_url: hide

.. _class_GLTFNode:

GLTFNode
========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase de nodo glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Representa un nodo glTF. Los nodos glTF pueden tener nombres, transformaciones, hijos (otros nodos glTF) y propiedades más especializadas (representadas por sus propias clases).

Los nodos glTF generalmente existen dentro de :ref:`GLTFState<class_GLTFState>`, que representa todos los datos de un archivo glTF. La mayoría de las propiedades de GLTFNode son índices de otros datos en el archivo glTF. Puedes extender un nodo glTF con propiedades adicionales utilizando :ref:`get_additional_data()<class_GLTFNode_method_get_additional_data>` y :ref:`set_additional_data()<class_GLTFNode_method_set_additional_data>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

- `Especificación de escena y nodo glTF <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_004_ScenesNodes.md">`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`camera<class_GLTFNode_property_camera>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`children<class_GLTFNode_property_children>`           | ``PackedInt32Array()``                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`height<class_GLTFNode_property_height>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`light<class_GLTFNode_property_light>`                 | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`mesh<class_GLTFNode_property_mesh>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`original_name<class_GLTFNode_property_original_name>` | ``""``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`parent<class_GLTFNode_property_parent>`               | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`position<class_GLTFNode_property_position>`           | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`             | :ref:`rotation<class_GLTFNode_property_rotation>`           | ``Quaternion(0, 0, 0, 1)``                          |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`scale<class_GLTFNode_property_scale>`                 | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skeleton<class_GLTFNode_property_skeleton>`           | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`skin<class_GLTFNode_property_skin>`                   | ``-1``                                              |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`visible<class_GLTFNode_property_visible>`             | ``true``                                            |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`xform<class_GLTFNode_property_xform>`                 | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+-------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`append_child_index<class_GLTFNode_method_append_child_index>`\ (\ child_index\: :ref:`int<class_int>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`   | :ref:`get_additional_data<class_GLTFNode_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_scene_node_path<class_GLTFNode_method_get_scene_node_path>`\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ )     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_additional_data<class_GLTFNode_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFNode_property_camera:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera** = ``-1`` :ref:`🔗<class_GLTFNode_property_camera>`

.. rst-class:: classref-property-setget

- |void| **set_camera**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera**\ (\ )

Si este nodo glTF es una cámara, el índice de la :ref:`GLTFCamera<class_GLTFCamera>` en el :ref:`GLTFState<class_GLTFState>` que describe las propiedades de la cámara. Si ``-1``, este nodo no es una cámara.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_children:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **children** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFNode_property_children>`

.. rst-class:: classref-property-setget

- |void| **set_children**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_children**\ (\ )

Los índices de los nodos hijo en el :ref:`GLTFState<class_GLTFState>`. Si este nodo glTF no tiene hijos, esto será un array vacío.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``-1`` :ref:`🔗<class_GLTFNode_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

La profundidad en la jerarquía de nodos en la que se encuentra este nodo. Un nodo raíz tendrá una altura de 0, sus hijos tendrán una altura de 1, y así sucesivamente. Si es -1, la altura no se ha calculado.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_light:

.. rst-class:: classref-property

:ref:`int<class_int>` **light** = ``-1`` :ref:`🔗<class_GLTFNode_property_light>`

.. rst-class:: classref-property-setget

- |void| **set_light**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_light**\ (\ )

Si este nodo glTF es una luz, el índice de la :ref:`GLTFLight<class_GLTFLight>` en el :ref:`GLTFState<class_GLTFState>` que describe las propiedades de la luz. Si es -1, este nodo no es una luz.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_mesh:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh** = ``-1`` :ref:`🔗<class_GLTFNode_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh**\ (\ )

Si este nodo glTF es una malla, el índice de la :ref:`GLTFMesh<class_GLTFMesh>` en el :ref:`GLTFState<class_GLTFState>` que describe las propiedades de la malla. Si es -1, este nodo no es una malla.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFNode_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

El nombre original del nodo.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_parent:

.. rst-class:: classref-property

:ref:`int<class_int>` **parent** = ``-1`` :ref:`🔗<class_GLTFNode_property_parent>`

.. rst-class:: classref-property-setget

- |void| **set_parent**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parent**\ (\ )

El índice del nodo padre en el :ref:`GLTFState<class_GLTFState>`. Si es -1, este nodo es un nodo raíz.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

La posición del nodo glTF en relación con su padre.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_rotation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFNode_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation**\ (\ )

La rotación del nodo glTF con respecto a su padre.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFNode_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

La escala del nodo glTF en relación con su padre.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFNode_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

Si este nodo glTF tiene un esqueleto, el índice del :ref:`GLTFSkeleton<class_GLTFSkeleton>` en el :ref:`GLTFState<class_GLTFState>` que describe las propiedades del esqueleto. Si es -1, este nodo no tiene un esqueleto.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_skin:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin** = ``-1`` :ref:`🔗<class_GLTFNode_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin**\ (\ )

Si este nodo glTF tiene una piel, el índice de la :ref:`GLTFSkin<class_GLTFSkin>` en el :ref:`GLTFState<class_GLTFState>` que describe las propiedades de la piel. Si es -1, este nodo no tiene una piel.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_GLTFNode_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_visible**\ (\ )

Si es ``true``, el nodo GLTF es visible. Si es ``false``, el nodo GLTF no es visible. Esto se traduce a la propiedad :ref:`Node3D.visible<class_Node3D_property_visible>` en la escena de Godot, y se exporta a ``KHR_node_visibility`` cuando ``false``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_property_xform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **xform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_GLTFNode_property_xform>`

.. rst-class:: classref-property-setget

- |void| **set_xform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_xform**\ (\ )

La transformación del nodo glTF relativa a su padre. Esta propiedad generalmente no se utiliza ya que se prefieren las propiedades de posición, rotación y escala.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFNode_method_append_child_index:

.. rst-class:: classref-method

|void| **append_child_index**\ (\ child_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFNode_method_append_child_index>`

Appends the given child node index to the :ref:`children<class_GLTFNode_property_children>` array.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFNode_method_get_additional_data>`

Obtiene datos arbitrarios adicionales en esta instancia de **GLTFNode**. Esto se puede utilizar para mantener los datos de estado por nodo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el valor de retorno puede ser cualquier cosa que establezcas. Si no se estableció nada, el valor de retorno es ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_get_scene_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_scene_node_path**\ (\ gltf_state\: :ref:`GLTFState<class_GLTFState>`, handle_skeletons\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFNode_method_get_scene_node_path>`

Devuelve el :ref:`NodePath<class_NodePath>` que este nodo GLTF tendrá en el árbol de la escena de Godot después de ser importado. Esto es útil cuando se importan punteros de modelo de objeto glTF con :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, para manejar extensiones como ``KHR_animation_pointer`` o ``KHR_interactivity``.

Si ``handle_skeletons`` es ``true``, las rutas a los nodos glTF de hueso de esqueleto se resolverán correctamente. Por ejemplo, una ruta que sería ``^"A/B/C/Bone1/Bone2/Bone3"`` si es ``false`` se convertirá en ``^"A/B/C/Skeleton3D:Bone3"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFNode_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFNode_method_set_additional_data>`

Establece datos arbitrarios adicionales en esta instancia de **GLTFNode**. Esto se puede utilizar para mantener los datos de estado por nodo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El primer argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el segundo argumento puede ser cualquier cosa que quieras.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
