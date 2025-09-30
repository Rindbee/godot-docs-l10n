:github_url: hide

.. _class_RibbonTrailMesh:

RibbonTrailMesh
===============

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa una :ref:`PrimitiveMesh<class_PrimitiveMesh>` recta con forma de cinta con ancho variable.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**RibbonTrailMesh** representa una malla recta con forma de cinta con ancho variable. La cinta se compone de una serie de secciones planas o en forma de cruz, cada una con la misma :ref:`section_length<class_RibbonTrailMesh_property_section_length>` y el número de :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>`. Una :ref:`curve<class_RibbonTrailMesh_property_curve>` se muestrea a lo largo de la longitud total de la cinta, lo que significa que la curva determina el tamaño de la cinta a lo largo de su longitud.

Esta malla primitiva se utiliza normalmente para rastros de partículas.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Estelas de Partículas 3D <../tutorials/3d/particles/trails>`

- :doc:`Sistemas de partículas (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Curve<class_Curve>`                | :ref:`curve<class_RibbonTrailMesh_property_curve>`                       |         |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`section_length<class_RibbonTrailMesh_property_section_length>`     | ``0.2`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` | ``3``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`sections<class_RibbonTrailMesh_property_sections>`                 | ``5``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Shape<enum_RibbonTrailMesh_Shape>` | :ref:`shape<class_RibbonTrailMesh_property_shape>`                       | ``1``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`size<class_RibbonTrailMesh_property_size>`                         | ``1.0`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_RibbonTrailMesh_Shape:

.. rst-class:: classref-enumeration

enum **Shape**: :ref:`🔗<enum_RibbonTrailMesh_Shape>`

.. _class_RibbonTrailMesh_constant_SHAPE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_FLAT** = ``0``

Da a la malla una única cara plana.

.. _class_RibbonTrailMesh_constant_SHAPE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_CROSS** = ``1``

Da a la malla dos caras planas perpendiculares, formando una forma de cruz.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RibbonTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_RibbonTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Determina el tamaño de la cinta a lo largo de su longitud. El tamaño de un determinado segmento de sección se obtiene multiplicando la línea de base :ref:`size<class_RibbonTrailMesh_property_size>` por el valor de esta curva a la distancia dada. Para valores menores que ``0``, las caras se invertirán. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_RibbonTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La longitud de una sección de la cinta.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_segments** = ``3`` :ref:`🔗<class_RibbonTrailMesh_property_section_segments>`

.. rst-class:: classref-property-setget

- |void| **set_section_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_segments**\ (\ )

El número de segmentos en una sección. La :ref:`curve<class_RibbonTrailMesh_property_curve>` se muestrea en cada segmento para determinar su tamaño. Los valores más altos dan como resultado una cinta más detallada a costa del rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_RibbonTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

El número total de secciones en la cinta.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_shape:

.. rst-class:: classref-property

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **shape** = ``1`` :ref:`🔗<class_RibbonTrailMesh_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape<enum_RibbonTrailMesh_Shape>`\ )
- :ref:`Shape<enum_RibbonTrailMesh_Shape>` **get_shape**\ (\ )

Determina la forma de la cinta.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_RibbonTrailMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

El tamaño de línea de base de la cinta. El tamaño de un segmento de sección particular es se obtiene multiplicando este tamaño por el valor de la :ref:`curve<class_RibbonTrailMesh_property_curve>` en la distancia dada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
