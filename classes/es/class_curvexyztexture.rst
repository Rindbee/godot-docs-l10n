:github_url: hide

.. _class_CurveXYZTexture:

CurveXYZTexture
===============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una textura 1D donde los canales de color rojo, verde y azul corresponden a puntos en 3 curvas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una textura 1D donde los canales de color rojo, verde y azul corresponden a puntos en 3 recursos :ref:`Curve<class_Curve>` unitarias. En comparación con el uso de :ref:`CurveTexture<class_CurveTexture>`\ s separadas, esto simplifica aún más la tarea de guardar curvas como archivos de imagen.

Si solo necesitas guardar una curva dentro de una sola textura, usa :ref:`CurveTexture<class_CurveTexture>` en su lugar. Véase también :ref:`GradientTexture1D<class_GradientTexture1D>` y :ref:`GradientTexture2D<class_GradientTexture2D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_x<class_CurveXYZTexture_property_curve_x>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_y<class_CurveXYZTexture_property_curve_y>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_z<class_CurveXYZTexture_property_curve_z>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`width<class_CurveXYZTexture_property_width>`     | ``256``                                                                                |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CurveXYZTexture_property_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_x** :ref:`🔗<class_CurveXYZTexture_property_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_x**\ (\ )

La :ref:`Curve<class_Curve>` que se renderiza en el canal rojo de la textura. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_y** :ref:`🔗<class_CurveXYZTexture_property_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_y**\ (\ )

La :ref:`Curve<class_Curve>` que se renderiza en el canal verde de la textura. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_z** :ref:`🔗<class_CurveXYZTexture_property_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_z**\ (\ )

La :ref:`Curve<class_Curve>` que se renderiza en el canal azul de la textura. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveXYZTexture_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

El ancho de la textura (en píxeles). Los valores más altos hacen posible representar mejor los datos de alta frecuencia (como los cambios repentinos de dirección), a costa de un mayor tiempo de generación y uso de memoria.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
