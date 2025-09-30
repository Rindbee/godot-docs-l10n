:github_url: hide

.. _class_RectangleShape2D:

RectangleShape2D
================

**Hereda:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de rectángulo 2D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de rectángulo 2D, destinada a su uso en física. Normalmente se usa para proporcionar una forma a una :ref:`CollisionShape2D<class_CollisionShape2D>`.

\ **Rendimiento:** La comprobación de colisiones con **RectangleShape2D** es rápida. Es más rápida que :ref:`CapsuleShape2D<class_CapsuleShape2D>`, pero más lenta que :ref:`CircleShape2D<class_CircleShape2D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pong en 2D <https://godotengine.org/asset-library/asset/2728>`__

- `Demo de Personaje Cinemático en 2D <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------+---------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_RectangleShape2D_property_size>` | ``Vector2(20, 20)`` |
   +-------------------------------+---------------------------------------------------+---------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RectangleShape2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(20, 20)`` :ref:`🔗<class_RectangleShape2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

El ancho y la altura del rectángulo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
