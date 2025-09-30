:github_url: hide

.. _class_LightOccluder2D:

LightOccluder2D
===============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Ocluye la luz emitida por un Light2D, proyectando sombras.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Ocluye la luz emitida por un Light2D, proyectando sombras. El LightOccluder2D debe estar provisto de un :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` para que la sombra sea computada.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`2D lights and shadows <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` | :ref:`occluder<class_LightOccluder2D_property_occluder>`                       |          |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`occluder_light_mask<class_LightOccluder2D_property_occluder_light_mask>` | ``1``    |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`sdf_collision<class_LightOccluder2D_property_sdf_collision>`             | ``true`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_LightOccluder2D_property_occluder:

.. rst-class:: classref-property

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **occluder** :ref:`🔗<class_LightOccluder2D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_polygon**\ (\ value\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )
- :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ )

El :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` utilizado para calcular la sombra.

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_occluder_light_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **occluder_light_mask** = ``1`` :ref:`🔗<class_LightOccluder2D_property_occluder_light_mask>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_light_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_occluder_light_mask**\ (\ )

La máscara de luz del oclusor de LightOccluder2D. El LightOccluder2D proyectará sombras solo de Light2D(s) que tengan la(s) misma(s) máscara(s) de luz.

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_sdf_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sdf_collision** = ``true`` :ref:`🔗<class_LightOccluder2D_property_sdf_collision>`

.. rst-class:: classref-property-setget

- |void| **set_as_sdf_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_sdf_collision**\ (\ )

Si está habilitado, el oclusor formará parte de un campo de distancia con signo generado en tiempo real que se puede usar en sombreadores personalizados.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
