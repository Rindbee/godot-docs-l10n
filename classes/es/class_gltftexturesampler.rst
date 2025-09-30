:github_url: hide

.. _class_GLTFTextureSampler:

GLTFTextureSampler
==================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un muestreador de textura glTF

.. rst-class:: classref-introduction-group

Descripción
----------------------

Representa un muestreador de textura como se define en la especificación base de glTF. Los muestreadores de textura en glTF especifican cómo muestrear datos de la imagen base de la textura, al renderizar la textura en un objeto.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`mag_filter<class_GLTFTextureSampler_property_mag_filter>` | ``9729``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`min_filter<class_GLTFTextureSampler_property_min_filter>` | ``9987``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_s<class_GLTFTextureSampler_property_wrap_s>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_t<class_GLTFTextureSampler_property_wrap_t>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFTextureSampler_property_mag_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **mag_filter** = ``9729`` :ref:`🔗<class_GLTFTextureSampler_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mag_filter**\ (\ )

Filtro de magnificación de la textura, utilizado cuando la textura aparece más grande en la pantalla que la imagen de origen.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_min_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_filter** = ``9987`` :ref:`🔗<class_GLTFTextureSampler_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_filter**\ (\ )

Filtro de minificación de la textura, utilizado cuando la textura aparece más pequeña en la pantalla que la imagen de origen.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_s:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_s** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_s>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_s**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_s**\ (\ )

Wrapping mode to use for S-axis (horizontal) texture coordinates.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_t:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_t** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_t>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_t**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_t**\ (\ )

Wrapping mode to use for T-axis (vertical) texture coordinates.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
