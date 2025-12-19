:github_url: hide

.. _class_RDPipelineSpecializationConstant:

RDPipelineSpecializationConstant
================================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Constante de especialización del pipeline (utilizada por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una *constante de especialización* es una forma de crear variantes adicionales de shaders sin aumentar realmente el número de versiones de shaders que se compilan. Esto permite mejorar el rendimiento al reducir el número de versiones de shaders y reducir las ramificaciones ``if``, al tiempo que permite que los shaders sean flexibles para diferentes casos de uso.

Este objeto es utilizado por :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`         | :ref:`constant_id<class_RDPipelineSpecializationConstant_property_constant_id>` | ``0`` |
   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`Variant<class_Variant>` | :ref:`value<class_RDPipelineSpecializationConstant_property_value>`             |       |
   +-------------------------------+---------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDPipelineSpecializationConstant_property_constant_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant_id** = ``0`` :ref:`🔗<class_RDPipelineSpecializationConstant_property_constant_id>`

.. rst-class:: classref-property-setget

- |void| **set_constant_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant_id**\ (\ )

El identificador de la constante de especialización. Este es un valor que comienza desde ``0`` y que se incrementa para cada constante de especialización diferente para un shader dado.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineSpecializationConstant_property_value:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **value** :ref:`🔗<class_RDPipelineSpecializationConstant_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_value**\ (\ )

El valor de la constante de especialización. Solo los tipos :ref:`bool<class_bool>`, :ref:`int<class_int>` y :ref:`float<class_float>` son válidos para las constantes de especialización.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
