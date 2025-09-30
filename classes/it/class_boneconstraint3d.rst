:github_url: hide

.. _class_BoneConstraint3D:

BoneConstraint3D
================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AimModifier3D<class_AimModifier3D>`, :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`, :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>`

A node that may modify Skeleton3D's bone with associating the two bones.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that modifies the bone set in :ref:`set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` based on the transform of the bone retrieved by :ref:`get_reference_bone()<class_BoneConstraint3D_method_get_reference_bone>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_setting<class_BoneConstraint3D_method_clear_setting>`\ (\ )                                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`   | :ref:`get_amount<class_BoneConstraint3D_method_get_amount>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_apply_bone<class_BoneConstraint3D_method_get_apply_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_apply_bone_name<class_BoneConstraint3D_method_get_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_reference_bone<class_BoneConstraint3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_reference_bone_name<class_BoneConstraint3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_setting_count<class_BoneConstraint3D_method_get_setting_count>`\ (\ ) |const|                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_amount<class_BoneConstraint3D_method_set_amount>`\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ )                                |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_apply_bone<class_BoneConstraint3D_method_set_apply_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                              |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_apply_bone_name<class_BoneConstraint3D_method_set_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )         |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_reference_bone<class_BoneConstraint3D_method_set_reference_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_reference_bone_name<class_BoneConstraint3D_method_set_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_setting_count<class_BoneConstraint3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BoneConstraint3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneConstraint3D_method_clear_setting>`

Clear all settings.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_amount**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_amount>`

Returns the apply amount of the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_apply_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone>`

Returns the apply bone of the setting at ``index``. This bone will be modified.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_apply_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone_name>`

Returns the apply bone name of the setting at ``index``. This bone will be modified.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone>`

Returns the reference bone of the setting at ``index``.

This bone will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone_name>`

Returns the reference bone name of the setting at ``index``.

This bone will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_setting_count>`

Returns the number of settings in the modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_amount:

.. rst-class:: classref-method

|void| **set_amount**\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_amount>`

Sets the apply amount of the setting at ``index`` to ``amount``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone:

.. rst-class:: classref-method

|void| **set_apply_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone>`

Sets the apply bone of the setting at ``index`` to ``bone``. This bone will be modified.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone_name:

.. rst-class:: classref-method

|void| **set_apply_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone_name>`

Sets the apply bone of the setting at ``index`` to ``bone_name``. This bone will be modified.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone:

.. rst-class:: classref-method

|void| **set_reference_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone>`

Sets the reference bone of the setting at ``index`` to ``bone``.

This bone will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone_name:

.. rst-class:: classref-method

|void| **set_reference_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone_name>`

Sets the reference bone of the setting at ``index`` to ``bone_name``.

This bone will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_setting_count>`

Sets the number of settings in the modifier.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
