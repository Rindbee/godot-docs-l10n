:github_url: hide

.. _class_OpenXRCompositionLayerCylinder:

OpenXRCompositionLayerCylinder
==============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una capa de composición de OpenXR que se renderiza como una sección interna de un cilindro.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una capa de composición de OpenXR que permite renderizar un :ref:`SubViewport<class_SubViewport>` en una sección interna de un cilindro.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`aspect_ratio<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`           | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_angle<class_OpenXRCompositionLayerCylinder_property_central_angle>`         | ``1.5707964`` |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerCylinder_property_fallback_segments>` | ``10``        |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerCylinder_property_radius>`                       | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRCompositionLayerCylinder_property_aspect_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **aspect_ratio** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_aspect_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aspect_ratio**\ (\ )

La relación de aspecto de la sección. Se utiliza para establecer la altura en relación con la anchura.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_central_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_central_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_angle**\ (\ )

El ángulo central del cilindro. Se utiliza para establecer la anchura.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

El número de segmentos a utilizar en la malla de respaldo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio del cilindro.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
