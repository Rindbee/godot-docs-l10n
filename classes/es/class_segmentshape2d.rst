:github_url: hide

.. _class_SegmentShape2D:

SegmentShape2D
==============

**Hereda:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 2D line segment shape used for physics collision.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A 2D line segment shape, intended for use in physics. Usually used to provide a shape for a :ref:`CollisionShape2D<class_CollisionShape2D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`a<class_SegmentShape2D_property_a>` | ``Vector2(0, 0)``  |
   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`b<class_SegmentShape2D_property_b>` | ``Vector2(0, 10)`` |
   +-------------------------------+-------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SegmentShape2D_property_a:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **a** = ``Vector2(0, 0)`` :ref:`🔗<class_SegmentShape2D_property_a>`

.. rst-class:: classref-property-setget

- |void| **set_a**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_a**\ (\ )

La posición del primer punto del segmento.

.. rst-class:: classref-item-separator

----

.. _class_SegmentShape2D_property_b:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **b** = ``Vector2(0, 10)`` :ref:`🔗<class_SegmentShape2D_property_b>`

.. rst-class:: classref-property-setget

- |void| **set_b**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_b**\ (\ )

La posición del segundo punto del segmento.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
