:github_url: hide

.. _class_PlaneMesh:

PlaneMesh
=========

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`QuadMesh<class_QuadMesh>`

Clase que representa un plano :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que representa un :ref:`PrimitiveMesh<class_PrimitiveMesh>` plano. Esta malla plana no tiene grosor. Por defecto, esta malla está alineada en los ejes X y Z; esta rotación por defecto no es adecuada para su uso con materiales de publicidad. Para materiales de publicidad, cambia :ref:`orientation<class_PlaneMesh_property_orientation>` a :ref:`FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

\ **Nota:** Cuando utilices un **PlaneMesh** texturizado grande (por ejemplo, como suelo), puedes toparte con problemas de fluctuación de las UV dependiendo del ángulo de la cámara. Para solucionar esto, aumenta :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` y :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` hasta que ya no notes la fluctuación de las UV.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                  | :ref:`center_offset<class_PlaneMesh_property_center_offset>`     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | :ref:`orientation<class_PlaneMesh_property_orientation>`         | ``1``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector2<class_Vector2>`                  | :ref:`size<class_PlaneMesh_property_size>`                       | ``Vector2(2, 2)``    |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_PlaneMesh_Orientation:

.. rst-class:: classref-enumeration

enum **Orientation**: :ref:`🔗<enum_PlaneMesh_Orientation>`

.. _class_PlaneMesh_constant_FACE_X:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_X** = ``0``

**PlaneMesh** mirará hacia el eje X positivo.

.. _class_PlaneMesh_constant_FACE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Y** = ``1``

**PlaneMesh** mirará hacia el eje Y positivo. Esto coincide con el comportamiento del **PlaneMesh** en Godot 3.x.

.. _class_PlaneMesh_constant_FACE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Z** = ``2``

**PlaneMesh** mirará hacia el eje Z positivo. Esto coincide con el comportamiento de QuadMesh en Godot 3.x.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PlaneMesh_property_center_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PlaneMesh_property_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_center_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_offset**\ (\ )

Desplazamiento del plano generado. Útil para partículas.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_PlaneMesh_Orientation>` **orientation** = ``1`` :ref:`🔗<class_PlaneMesh_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_PlaneMesh_Orientation>`\ )
- :ref:`Orientation<enum_PlaneMesh_Orientation>` **get_orientation**\ (\ )

Dirección a la que mira el **PlaneMesh**.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(2, 2)`` :ref:`🔗<class_PlaneMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

El tamaño del plano generado.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Número de subdivisión a lo largo del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Número de subdivisión a lo largo del eje X.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
