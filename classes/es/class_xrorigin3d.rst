:github_url: hide

.. _class_XROrigin3D:

XROrigin3D
==========

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

El punto de origen en AR/VR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este es un nodo especial dentro del sistema AR/VR que asigna la ubicación física del centro de nuestro espacio de seguimiento a la ubicación virtual dentro de nuestro mundo de juego.

Se pueden agregar varios puntos de origen al árbol de escenas, pero solo se puede usar uno a la vez. Todos los nodos :ref:`XRCamera3D<class_XRCamera3D>`, :ref:`XRController3D<class_XRController3D>` y :ref:`XRAnchor3D<class_XRAnchor3D>` deben ser hijos directos de este nodo para que el seguimiento espacial funcione correctamente.

La posición de este nodo se actualiza cuando el personaje necesita moverse por el mundo de juego mientras no nos movemos en el mundo real. El movimiento en el mundo real siempre se relaciona con este punto de origen.

Por ejemplo, si el personaje conduce un coche, el nodo **XROrigin3D** debe ser un nodo hijo de este coche. O bien, si se implementa un sistema de teletransporte para mover al personaje, se debe cambiar la posición de este nodo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`current<class_XROrigin3D_property_current>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`world_scale<class_XROrigin3D_property_world_scale>` | ``1.0``   |
   +---------------------------+-----------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_XROrigin3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_XROrigin3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

Si es ``true``, este nodo de origen está siendo utilizado por el :ref:`XRServer<class_XRServer>`. Solo se puede usar un punto de origen a la vez.

.. rst-class:: classref-item-separator

----

.. _class_XROrigin3D_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XROrigin3D_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

La escala del mundo del juego en comparación con el mundo real. Es igual a :ref:`XRServer.world_scale<class_XRServer_property_world_scale>`. Por defecto, la mayoría de las plataformas de RA/RV asumen que una unidad de juego corresponde a un medidor del mundo real.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
