:github_url: hide

.. _class_SliderJoint3D:

SliderJoint3D
=============

**Hereda:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una unión física que restringe el movimiento de un cuerpo físico 3D a lo largo de un eje en relación con otro cuerpo físico.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una unión física que restringe el movimiento de un cuerpo físico 3D a lo largo de un eje en relación con otro cuerpo físico. Por ejemplo, el Cuerpo A podría ser un :ref:`StaticBody3D<class_StaticBody3D>` que representa la base de un pistón, mientras que el Cuerpo B podría ser un :ref:`RigidBody3D<class_RigidBody3D>` que representa la cabeza del pistón, moviéndose arriba y abajo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>`   | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>`         | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` | ``-1.0`` |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/damping<class_SliderJoint3D_property_linear_ortho/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/restitution<class_SliderJoint3D_property_linear_ortho/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_SliderJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_SliderJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SliderJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_SliderJoint3D_Param>`

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_UPPER** = ``0``

Constante para acceder a :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>`. La diferencia máxima entre los puntos de pivote en su eje X antes de que se produzca la amortiguación.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_LOWER** = ``1``

Constante para acceder a :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>`. La diferencia mínima entre los puntos de pivote en su eje X antes de que se produzca la amortiguación.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

Constante para acceder a :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>`. Un factor aplicado al movimiento a través del eje del deslizador una vez que se sobrepasan los límites. Cuanto menor sea, más lento será el movimiento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_RESTITUTION** = ``3``

Constante para acceder a :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>`. La cantidad de restitución una vez que se sobrepasan los límites. Cuanto menor sea, más energía de velocidad se pierde.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_DAMPING** = ``4``

Constante para acceder a :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>`. La cantidad de amortiguación una vez que se superan los límites del deslizador.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_SOFTNESS** = ``5``

Constante para acceder a :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>`. Un factor aplicado al movimiento a través del eje del deslizador mientras el deslizador esté en los límites. Cuanto más bajo, más lento es el movimiento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_RESTITUTION** = ``6``

Constante para acceder a :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`. La cantidad de restitución dentro de los límites del deslizador.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_DAMPING** = ``7``

Constante para acceder a :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`. La cantidad de amortiguación dentro de los límites del deslizador.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_SOFTNESS** = ``8``

Constante para acceder a :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>`. Un factor aplicado al movimiento a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_RESTITUTION** = ``9``

Constante para acceder a :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`. La cantidad de restitución cuando el movimiento es a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_DAMPING** = ``10``

Constante para acceder a :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`. La cantidad de amortiguación cuando el movimiento es a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_UPPER** = ``11``

Constante para acceder a :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>`. El límite superior de rotación en el deslizador.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_LOWER** = ``12``

Constante para acceder a :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>`. El límite inferior de rotación en el deslizador.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``13``

Constante para acceder a :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>`. Un factor que se aplica a toda la rotación una vez superado el límite.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_RESTITUTION** = ``14``

Constante para acceder a :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>`. La cantidad de restitución de la rotación cuando se supera el límite.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_DAMPING** = ``15``

Constante para acceder a :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>`. La cantidad de amortiguación de la rotación cuando se supera el límite.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_SOFTNESS** = ``16``

Constante para acceder a :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>`. Un factor que se aplica a toda la rotación una vez superado el límite.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_RESTITUTION** = ``17``

Constante para acceder a :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>`. La cantidad de restitución de la rotación en los límites.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_DAMPING** = ``18``

Constante para acceder a :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>`. La cantidad de amortiguación de la rotación en los límites.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_SOFTNESS** = ``19``

Constante para acceder a :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>`. Un factor aplicado a toda la rotación a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_RESTITUTION** = ``20``

Constante para acceder a :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>`. La cantidad de restitución de la rotación a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_DAMPING** = ``21``

Constante para acceder a :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>`. La cantidad de amortiguación de la rotación a través de los ejes ortogonales al deslizador.

.. _class_SliderJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_MAX** = ``22``

Representa el tamaño del enum :ref:`Param<enum_SliderJoint3D_Param>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SliderJoint3D_property_angular_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación de la rotación cuando se supera el límite.

Un valor de amortiguación menor permite que una rotación iniciada por el cuerpo A viaje al cuerpo B más lentamente.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

El límite inferior de rotación en el deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de restitución de la rotación cuando se supera el límite.

No afecta a la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor que se aplica a toda la rotación una vez superado el límite.

Hace que toda la rotación sea más lenta cuando está entre 0 y 1.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

El límite superior de rotación en el deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación de la rotación en los límites.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de restitución de la rotación en los límites.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor que se aplica a toda la rotación una vez superado el límite.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación de la rotación a través de ejes ortogonales al deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de restitución de la rotación a través de ejes ortogonales al deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor aplicado a toda la rotación a través de los ejes ortogonales al deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación que ocurre una vez que se supera el límite definido por :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` y :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/lower_distance** = ``-1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La diferencia mínima entre los puntos de pivote en su eje X antes de que se produzca la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

El monto de la restitución una vez que se superen los límites. Cuanto más bajo, más energía de velocidad se pierde.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través del eje del deslizador una vez que se superan los límites. Cuanto más bajo, más lento es el movimiento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/upper_distance** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La máxima diferencia entre los puntos de pivote en su eje X antes de que se produzca la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación dentro de los límites del deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de restitución dentro de los límites del deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través del eje del deslizador mientras el deslizador esté en los límites. Cuanto más bajo, más lento es el movimiento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de amortiguación cuando el movimiento es a través de ejes ortogonales al deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La cantidad de restitución cuando el movimiento es a través de ejes ortogonales al deslizador.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través de ejes ortogonales al deslizador.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SliderJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const| :ref:`🔗<class_SliderJoint3D_method_get_param>`

Devuelve el valor del parámetro dado.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SliderJoint3D_method_set_param>`

Asigna ``value`` al parámetro dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
