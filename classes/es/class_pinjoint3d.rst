:github_url: hide

.. _class_PinJoint3D:

PinJoint3D
==========

**Hereda:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una articulación física que une dos cuerpos físicos 3D en un solo punto, permitiéndoles rotar libremente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una articulación física que une dos cuerpos físicos 3D en un solo punto, permitiéndoles rotar libremente. Por ejemplo, un :ref:`RigidBody3D<class_RigidBody3D>` puede ser unido a un :ref:`StaticBody3D<class_StaticBody3D>` para crear un péndulo o un balancín.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_PinJoint3D_property_params/bias>`                   | ``0.3`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/damping<class_PinJoint3D_property_params/damping>`             | ``1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/impulse_clamp<class_PinJoint3D_property_params/impulse_clamp>` | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_PinJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_PinJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_PinJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_PinJoint3D_Param>`

.. _class_PinJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_BIAS** = ``0``

La fuerza con la que los objetos fijados se mantienen en relación posicional entre sí. Cuanto mayor, más fuerte.

.. _class_PinJoint3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_DAMPING** = ``1``

La fuerza con la que los objetos fijados se mantienen en relación de velocidad entre sí. Cuanto mayor, más fuerte.

.. _class_PinJoint3D_constant_PARAM_IMPULSE_CLAMP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_IMPULSE_CLAMP** = ``2``

Si es mayor que 0, este valor es el valor máximo para un impulso que produce esta Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PinJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_PinJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

La fuerza con la que los objetos fijados se mantienen en relación posicional entre sí. Cuanto mayor, más fuerte.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/damping** = ``1.0`` :ref:`🔗<class_PinJoint3D_property_params/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

La fuerza con la que los objetos fijados se mantienen en relación de velocidad entre sí. Cuanto mayor, más fuerte.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/impulse_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/impulse_clamp** = ``0.0`` :ref:`🔗<class_PinJoint3D_property_params/impulse_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

Si es mayor que 0, este valor es el valor máximo para un impulso que produce esta Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PinJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const| :ref:`🔗<class_PinJoint3D_method_get_param>`

Devuelve el valor del parámetro especificado.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PinJoint3D_method_set_param>`

Establece el valor del parámetro especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
