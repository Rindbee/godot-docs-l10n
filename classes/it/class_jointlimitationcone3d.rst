:github_url: hide

.. _class_JointLimitationCone3D:

JointLimitationCone3D
=====================

**Eredita:** :ref:`JointLimitation3D<class_JointLimitation3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius_range<class_JointLimitationCone3D_property_radius_range>` | ``0.25`` |
   +---------------------------+------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_JointLimitationCone3D_property_radius_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius_range** = ``0.25`` :ref:`🔗<class_JointLimitationCone3D_property_radius_range>`

.. rst-class:: classref-property-setget

- |void| **set_radius_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius_range**\ (\ )

The size of the hole made by the cone.

\ ``0`` is no hole, ``0.5`` makes a hemisphere, and ``1.0`` makes a sphere (no limitation).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
