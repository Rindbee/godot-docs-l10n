:github_url: hide

.. _class_ConeTwistJoint3D:

ConeTwistJoint3D
================

**Eredita:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto fisico che collega due corpi fisici 3D in modo da simulare uno snodo sferico.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un giunto fisico che collega due corpi di fisica 3D in un modo da simulare un giunto sferico. L'asse di torsione è avviato come asse X del **ConeTwistJoint3D**. Una volta che i corpi di fisica oscillano, l'asse di torsione è calcolato come il centro degli assi X del giunto nello spazio locale dei due corpi fisici. Utile per arti come spalle e fianchi, lampade appese al soffitto, ecc.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`bias<class_ConeTwistJoint3D_property_bias>`             | ``0.3``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`relaxation<class_ConeTwistJoint3D_property_relaxation>` | ``1.0``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`softness<class_ConeTwistJoint3D_property_softness>`     | ``0.8``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`swing_span<class_ConeTwistJoint3D_property_swing_span>` | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`twist_span<class_ConeTwistJoint3D_property_twist_span>` | ``3.1415927`` |
   +---------------------------+---------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_ConeTwistJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_ConeTwistJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ConeTwistJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_ConeTwistJoint3D_Param>`

.. _class_ConeTwistJoint3D_constant_PARAM_SWING_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SWING_SPAN** = ``0``

L'oscillazione è la rotazione da un lato all'altro, attorno all'asse perpendicolare all'asse di torsione.

L'intervallo di oscillazione definisce quanta rotazione non verrà corretta lungo l'asse di oscillazione.

Potrebbe essere definito come allentamento nel **ConeTwistJoint3D**.

Se inferiore a 0,05, questo comportamento è bloccato.

.. _class_ConeTwistJoint3D_constant_PARAM_TWIST_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_TWIST_SPAN** = ``1``

La torsione è la rotazione attorno all'asse di torsione, questo valore definisce quanto lontano il giunto può ruotare.

La torsione è bloccata se inferiore a 0,05.

.. _class_ConeTwistJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_BIAS** = ``2``

La velocità con cui avviene l'oscillazione o la torsione.

Più è alta, più è veloce.

.. _class_ConeTwistJoint3D_constant_PARAM_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SOFTNESS** = ``3``

La facilità con cui il giunto inizia a torcersi. Se è troppo basso, ci vuole più forza per iniziare a torcere il giunto.

.. _class_ConeTwistJoint3D_constant_PARAM_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_RELAXATION** = ``4``

Definisce la velocità con cui la differenza di velocità di oscillazione e di torsione su entrambi i lati è sincronizzata.

.. _class_ConeTwistJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_MAX** = ``5``

Rappresenta la dimensione dell'enumerazione :ref:`Param<enum_ConeTwistJoint3D_Param>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConeTwistJoint3D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.3`` :ref:`🔗<class_ConeTwistJoint3D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La velocità con cui avviene l'oscillazione o la torsione.

Più è alta, più è veloce.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **relaxation** = ``1.0`` :ref:`🔗<class_ConeTwistJoint3D_property_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

Definisce la velocità con cui la differenza di velocità di oscillazione e di torsione su entrambi i lati è sincronizzata.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.8`` :ref:`🔗<class_ConeTwistJoint3D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La facilità con cui il giunto inizia a torcersi. Se è troppo basso, ci vuole più forza per iniziare a torcere il giunto.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_swing_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **swing_span** = ``0.7853982`` :ref:`🔗<class_ConeTwistJoint3D_property_swing_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

L'oscillazione è la rotazione da un lato all'altro, attorno all'asse perpendicolare all'asse di torsione.

L'intervallo di oscillazione definisce quanta rotazione non verrà corretta lungo l'asse di oscillazione.

Potrebbe essere definito come allentamento nel **ConeTwistJoint3D**.

Se inferiore a 0,05, questo comportamento è bloccato.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_twist_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **twist_span** = ``3.1415927`` :ref:`🔗<class_ConeTwistJoint3D_property_twist_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La torsione è la rotazione attorno all'asse di torsione, questo valore definisce quanto lontano il giunto può ruotare.

La torsione è bloccata se inferiore a 0,05.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConeTwistJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const| :ref:`🔗<class_ConeTwistJoint3D_method_get_param>`

Restituisce il valore del parametro specificato.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConeTwistJoint3D_method_set_param>`

Imposta il valore del parametro specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
