:github_url: hide

.. _class_TorusMesh:

TorusMesh
=========

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase que representa un toro :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que representa un toro :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`inner_radius<class_TorusMesh_property_inner_radius>`   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`outer_radius<class_TorusMesh_property_outer_radius>`   | ``1.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`ring_segments<class_TorusMesh_property_ring_segments>` | ``32``  |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_TorusMesh_property_rings>`                 | ``64``  |
   +---------------------------+--------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TorusMesh_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_TorusMesh_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

El radio interior del toroide.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_TorusMesh_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

El radio exterior del toroide.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_ring_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_segments** = ``32`` :ref:`🔗<class_TorusMesh_property_ring_segments>`

.. rst-class:: classref-property-setget

- |void| **set_ring_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_segments**\ (\ )

El número de bordes con que se construye cada anillo del toroide.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``64`` :ref:`🔗<class_TorusMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

El número de piezas de las que está construido el toroide.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
