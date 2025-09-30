:github_url: hide

.. _class_BoxMesh:

BoxMesh
=======

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Generate an axis-aligned box :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Generate an axis-aligned box :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

The box's UV layout is arranged in a 3×2 layout that allows texturing each face individually. To apply the same texture on all faces, change the material's UV property to ``Vector3(3, 2, 1)``. This is equivalent to adding ``UV *= vec2(3.0, 2.0)`` in a vertex shader.

\ **Note:** When using a large textured **BoxMesh** (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`, :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` and :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>` until you no longer notice UV jittering.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BoxMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The box's width, height and depth.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Número de bucles de borde extra insertados a lo largo del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Número de bucles de borde extra insertados a lo largo del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Número de bucles de borde extra insertados a lo largo del eje X.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
