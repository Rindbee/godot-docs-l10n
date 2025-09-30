:github_url: hide

.. _class_Bone2D:

Bone2D
======

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una articulación utilizada con :ref:`Skeleton2D<class_Skeleton2D>` para controlar y animar otros nodos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A hierarchy of **Bone2D**\ s can be bound to a :ref:`Skeleton2D<class_Skeleton2D>` to control and animate other :ref:`Node2D<class_Node2D>` nodes.

You can use **Bone2D** and :ref:`Skeleton2D<class_Skeleton2D>` nodes to animate 2D meshes created with the :ref:`Polygon2D<class_Polygon2D>` UV editor.

Each bone has a :ref:`rest<class_Bone2D_property_rest>` transform that you can reset to with :ref:`apply_rest()<class_Bone2D_method_apply_rest>`. These rest poses are relative to the bone's parent.

If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rest<class_Bone2D_property_rest>` | ``Transform2D(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------+-----------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_rest<class_Bone2D_method_apply_rest>`\ (\ )                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_autocalculate_length_and_angle<class_Bone2D_method_get_autocalculate_length_and_angle>`\ (\ ) |const|                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bone_angle<class_Bone2D_method_get_bone_angle>`\ (\ ) |const|                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_index_in_skeleton<class_Bone2D_method_get_index_in_skeleton>`\ (\ ) |const|                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_length<class_Bone2D_method_get_length>`\ (\ ) |const|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_skeleton_rest<class_Bone2D_method_get_skeleton_rest>`\ (\ ) |const|                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_autocalculate_length_and_angle<class_Bone2D_method_set_autocalculate_length_and_angle>`\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bone_angle<class_Bone2D_method_set_bone_angle>`\ (\ angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_length<class_Bone2D_method_set_length>`\ (\ length\: :ref:`float<class_float>`\ )                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Bone2D_property_rest:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **rest** = ``Transform2D(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Bone2D_property_rest>`

.. rst-class:: classref-property-setget

- |void| **set_rest**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_rest**\ (\ )

La transformación en reposo del hueso. Puedes reajustar las transformaciones del nodo a este valor usando :ref:`apply_rest()<class_Bone2D_method_apply_rest>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Bone2D_method_apply_rest:

.. rst-class:: classref-method

|void| **apply_rest**\ (\ ) :ref:`🔗<class_Bone2D_method_apply_rest>`

Resets the bone to the rest pose. This is equivalent to setting :ref:`Node2D.transform<class_Node2D_property_transform>` to :ref:`rest<class_Bone2D_property_rest>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_autocalculate_length_and_angle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_autocalculate_length_and_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_autocalculate_length_and_angle>`

Returns whether this **Bone2D** is going to autocalculate its length and bone angle using its first **Bone2D** child node, if one exists. If there are no **Bone2D** children, then it cannot autocalculate these values and will print a warning.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_bone_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bone_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_bone_angle>`

Returns the angle of the bone in the **Bone2D**.

\ **Note:** This is different from the **Bone2D**'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the **Bone2D**'s :ref:`Node2D.transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_index_in_skeleton:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index_in_skeleton**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_index_in_skeleton>`

Devuelve el índice del nodo como parte de todo el esqueleto. Ver :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_length>`

Returns the length of the bone in the **Bone2D** node.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_skeleton_rest:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_skeleton_rest**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_skeleton_rest>`

Returns the node's :ref:`rest<class_Bone2D_property_rest>` :ref:`Transform2D<class_Transform2D>` if it doesn't have a parent, or its rest pose relative to its parent.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_autocalculate_length_and_angle:

.. rst-class:: classref-method

|void| **set_autocalculate_length_and_angle**\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Bone2D_method_set_autocalculate_length_and_angle>`

When set to ``true``, the **Bone2D** node will attempt to automatically calculate the bone angle and length using the first child **Bone2D** node, if one exists. If none exist, the **Bone2D** cannot automatically calculate these values and will print a warning.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_bone_angle:

.. rst-class:: classref-method

|void| **set_bone_angle**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_bone_angle>`

Sets the bone angle for the **Bone2D**. This is typically set to the rotation from the **Bone2D** to a child **Bone2D** node.

\ **Note:** This is different from the **Bone2D**'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the **Bone2D**'s :ref:`Node2D.transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_length:

.. rst-class:: classref-method

|void| **set_length**\ (\ length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_length>`

Sets the length of the bone in the **Bone2D**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
