:github_url: hide

.. _class_BoxShape3D:

BoxShape3D
==========

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de caja 3D utilizada para la colisión física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de caja 3D, pensada para su uso en la física. Normalmente se usa para dar forma a un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Rendimiento:** **BoxShape3D** es rápido para comprobar colisiones. Es más rápido que :ref:`CapsuleShape3D<class_CapsuleShape3D>` y :ref:`CylinderShape3D<class_CylinderShape3D>`, pero más lento que :ref:`SphereShape3D<class_SphereShape3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo de Personaje Cinemático en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxShape3D_property_size>` | ``Vector3(1, 1, 1)`` |
   +-------------------------------+---------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BoxShape3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxShape3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

El ancho, la altura y la profundidad de la caja.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
