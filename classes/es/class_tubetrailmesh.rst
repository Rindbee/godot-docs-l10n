:github_url: hide

.. _class_TubeTrailMesh:

TubeTrailMesh
=============

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un :ref:`PrimitiveMesh<class_PrimitiveMesh>` en forma de tubo recto con ancho variable.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**TubeTrailMesh** representa una malla recta con forma de tubo con ancho variable. El tubo se compone de varias secciones cilíndricas, cada una con la misma :ref:`section_length<class_TubeTrailMesh_property_section_length>` y número de :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`. Se muestrea una :ref:`curve<class_TubeTrailMesh_property_curve>` a lo largo de la longitud total del tubo, lo que significa que la curva determina el radio del tubo a lo largo de su longitud.

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

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_TubeTrailMesh_property_cap_bottom>`         | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_TubeTrailMesh_property_cap_top>`               | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Curve<class_Curve>` | :ref:`curve<class_TubeTrailMesh_property_curve>`                   |          |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_steps<class_TubeTrailMesh_property_radial_steps>`     | ``8``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_TubeTrailMesh_property_radius>`                 | ``0.5``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`section_length<class_TubeTrailMesh_property_section_length>` | ``0.2``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`   | ``3``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`sections<class_TubeTrailMesh_property_sections>`             | ``5``    |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TubeTrailMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Si es ``true``, genera una tapa en la parte inferior del tubo. Esto se puede establecer en ``false`` para acelerar la generación y el renderizado cuando la cámara nunca ve la tapa.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Si es ``true``, genera una tapa en la parte superior del tubo. Esto se puede establecer en ``false`` para acelerar la generación y el renderizado cuando la cámara nunca ve la tapa.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_TubeTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Determina el radio del tubo a lo largo de su longitud. El radio de un anillo de sección particular se obtiene multiplicando la línea de base :ref:`radius<class_TubeTrailMesh_property_radius>` por el valor de esta curva a la distancia dada. Para valores menores que ``0``, las caras se invertirán. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radial_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_steps** = ``8`` :ref:`🔗<class_TubeTrailMesh_property_radial_steps>`

.. rst-class:: classref-property-setget

- |void| **set_radial_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_steps**\ (\ )

El número de lados del tubo. Por ejemplo, un valor de ``5`` significa que el tubo será pentagonal. Los valores más altos dan como resultado un tubo más detallado a costa del rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_TubeTrailMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio de línea de base del tubo. El radio de un anillo de sección particular se obtiene multiplicando este radio por el valor de la :ref:`curve<class_TubeTrailMesh_property_curve>` a la distancia dada.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_TubeTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La longitud de una sección del tubo.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_rings** = ``3`` :ref:`🔗<class_TubeTrailMesh_property_section_rings>`

.. rst-class:: classref-property-setget

- |void| **set_section_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_rings**\ (\ )

El número de anillos en una sección. La :ref:`curve<class_TubeTrailMesh_property_curve>` se muestrea en cada anillo para determinar su radio. Los valores más altos dan como resultado un tubo más detallado a costa del rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_TubeTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

El número total de secciones del tubo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
