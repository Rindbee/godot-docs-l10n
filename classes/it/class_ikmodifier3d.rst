:github_url: hide

.. _class_IKModifier3D:

IKModifier3D
============

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`ChainIK3D<class_ChainIK3D>`, :ref:`TwoBoneIK3D<class_TwoBoneIK3D>`

A node for inverse kinematics which may modify more than one bone.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s that has some joint lists and applies inverse kinematics. This class has some structs, enums, and helper methods which are useful to solve inverse kinematics.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_IKModifier3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`clear_settings<class_IKModifier3D_method_clear_settings>`\ (\ )                                      |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_setting_count<class_IKModifier3D_method_get_setting_count>`\ (\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`reset<class_IKModifier3D_method_reset>`\ (\ )                                                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_setting_count<class_IKModifier3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_IKModifier3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_IKModifier3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it, which increases performance slightly, but position changes in the bone pose made before processing this **IKModifier3D** are ignored.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_IKModifier3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_IKModifier3D_method_clear_settings>`

Cancella tutte le impostazioni.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_IKModifier3D_method_get_setting_count>`

Returns the number of settings.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_IKModifier3D_method_reset>`

Resets a state with respect to the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IKModifier3D_method_set_setting_count>`

Sets the number of settings.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
