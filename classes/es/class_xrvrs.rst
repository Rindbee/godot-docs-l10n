:github_url: hide

.. _class_XRVRS:

XRVRS
=====

**Hereda:** :ref:`Object<class_Object>`

Clase auxiliar para interfaces XR que genera imágenes VRS.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase es utilizada por varias interfaces XR para generar texturas VRS que ayudan a acelerar el renderizado.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_min_radius<class_XRVRS_property_vrs_min_radius>`       | ``20.0``               |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`vrs_render_region<class_XRVRS_property_vrs_render_region>` | ``Rect2i(0, 0, 0, 0)`` |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_strength<class_XRVRS_property_vrs_strength>`           | ``1.0``                |
   +-----------------------------+------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`make_vrs_texture<class_XRVRS_method_make_vrs_texture>`\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_XRVRS_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_XRVRS_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

El radio mínimo alrededor del punto focal donde se garantiza la calidad total si se utiliza VRS como porcentaje del tamaño de la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_render_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **vrs_render_region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_XRVRS_property_vrs_render_region>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_render_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_vrs_render_region**\ (\ )

La región de renderizado a la que se escalará la textura VRS cuando se genere.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_XRVRS_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

La intensidad utilizada para calcular el mapa de densidad VRS. Cuanto mayor sea este valor, más visible será el VRS.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_XRVRS_method_make_vrs_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_vrs_texture**\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_XRVRS_method_make_vrs_texture>`

Genera la textura VRS basándose en un renderizado ``target_size`` ajustado según el tamaño de mosaico VRS. Para cada punto focal de los ojos, introducido en ``eye_foci``, se crea una capa. El punto focal debe estar en NDC.

El resultado se almacenará en caché. Al solicitar una textura VRS con parámetros y ajustes sin cambios, se devolverá el RID almacenado en caché.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
