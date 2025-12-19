:github_url: hide

.. _class_SeparationRayShape3D:

SeparationRayShape3D
====================

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de rayo 3D utilizada para la colisión física que intenta separarse de cualquier colisionador.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de rayo 3D, destinada a ser utilizada en física. Normalmente se utiliza para proporcionar una forma para un :ref:`CollisionShape3D<class_CollisionShape3D>`. Cuando un **SeparationRayShape3D** colisiona con un objeto, intenta separarse de él moviendo su punto final al punto de colisión. Por ejemplo, un **SeparationRayShape3D** al lado de un personaje puede permitirle moverse instantáneamente hacia arriba al tocar las escaleras.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`length<class_SeparationRayShape3D_property_length>`                 | ``1.0``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`slide_on_slope<class_SeparationRayShape3D_property_slide_on_slope>` | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SeparationRayShape3D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``1.0`` :ref:`🔗<class_SeparationRayShape3D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La longitud del rayo.

.. rst-class:: classref-item-separator

----

.. _class_SeparationRayShape3D_property_slide_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_slope** = ``false`` :ref:`🔗<class_SeparationRayShape3D_property_slide_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_slope**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_slide_on_slope**\ (\ )

Si es ``false`` (por defecto), la forma siempre se separa y devuelve una normal a lo largo de su propia dirección.

Si es ``true``, la forma puede devolver la normal correcta y separarse en cualquier dirección, permitiendo el movimiento de deslizamiento en pendientes.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
