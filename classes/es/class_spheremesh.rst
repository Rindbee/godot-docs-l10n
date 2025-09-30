:github_url: hide

.. _class_SphereMesh:

SphereMesh
==========

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase que representa una malla esférica :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que representa una malla esférica :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SphereMesh_property_height>`                   | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`is_hemisphere<class_SphereMesh_property_is_hemisphere>`     | ``false`` |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_SphereMesh_property_radial_segments>` | ``64``    |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereMesh_property_radius>`                   | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_SphereMesh_property_rings>`                     | ``32``    |
   +---------------------------+-------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SphereMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_SphereMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Altura completa de la esfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_is_hemisphere:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_hemisphere** = ``false`` :ref:`🔗<class_SphereMesh_property_is_hemisphere>`

.. rst-class:: classref-property-setget

- |void| **set_is_hemisphere**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_hemisphere**\ (\ )

Si es ``true``, se crea un hemisferio en lugar de una esfera completa.

\ **Nota:** Para obtener un hemisferio regular, la altura y el radio de la esfera deben ser iguales.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_SphereMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Número de segmentos radiales en la esfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_SphereMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Radio de la esfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``32`` :ref:`🔗<class_SphereMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Número de segmentos a lo largo de la altura de la esfera.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
