:github_url: hide

.. _class_CapsuleShape3D:

CapsuleShape3D
==============

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de cápsula 3D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de cápsula 3D, para ser usada en física. Normalmente usada para proveer una forma para un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Rendimiento:** **CapsuleShape3D** es rápida para comprobar colisiones. Es más rápida que :ref:`CylinderShape3D<class_CylinderShape3D>`, pero más lenta que :ref:`SphereShape3D<class_SphereShape3D>` y :ref:`BoxShape3D<class_BoxShape3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape3D_property_height>`         | ``2.0`` |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape3D_property_mid_height>` |         |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape3D_property_radius>`         | ``0.5`` |
   +---------------------------+-------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CapsuleShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

The capsule's full height, including the hemispheres.

\ **Note:** The :ref:`height<class_CapsuleShape3D_property_height>` of a capsule must be at least twice its :ref:`radius<class_CapsuleShape3D_property_radius>`. Otherwise, the capsule becomes a sphere. If the :ref:`height<class_CapsuleShape3D_property_height>` is less than twice the :ref:`radius<class_CapsuleShape3D_property_radius>`, the properties adjust to a valid value.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

La altura de la cápsula, excluyendo los hemisferios. Esta es la altura de la parte cilíndrica central en el medio de la cápsula, y es la distancia entre los centros de los dos hemisferios. Esto es un envoltorio para :ref:`height<class_CapsuleShape3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The capsule's radius.

\ **Note:** The :ref:`radius<class_CapsuleShape3D_property_radius>` of a capsule cannot be greater than half of its :ref:`height<class_CapsuleShape3D_property_height>`. Otherwise, the capsule becomes a sphere. If the :ref:`radius<class_CapsuleShape3D_property_radius>` is greater than half of the :ref:`height<class_CapsuleShape3D_property_height>`, the properties adjust to a valid value.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
