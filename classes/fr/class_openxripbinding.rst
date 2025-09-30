:github_url: hide

.. _class_OpenXRIPBinding:

OpenXRIPBinding
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Définit une liaison entre une :ref:`OpenXRAction<class_OpenXRAction>` et une entrée ou sortie XR.

.. rst-class:: classref-introduction-group

Description
-----------

This binding resource binds an :ref:`OpenXRAction<class_OpenXRAction>` to an input or output. As most controllers have left hand and right versions that are handled by the same interaction profile we can specify multiple bindings. For instance an action "Fire" could be bound to both "/user/hand/left/input/trigger" and "/user/hand/right/input/trigger". This would require two binding entries.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`OpenXRAction<class_OpenXRAction>`           | :ref:`action<class_OpenXRIPBinding_property_action>`                       |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`                         | :ref:`binding_modifiers<class_OpenXRIPBinding_property_binding_modifiers>` | ``[]`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                       | :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`           | ``""`` |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`paths<class_OpenXRIPBinding_property_paths>`                         |        |
   +---------------------------------------------------+----------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_path<class_OpenXRIPBinding_method_add_path>`\ (\ path\: :ref:`String<class_String>`\ )                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRIPBinding_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_binding_modifier_count<class_OpenXRIPBinding_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_path_count<class_OpenXRIPBinding_method_get_path_count>`\ (\ ) |const|                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`has_path<class_OpenXRIPBinding_method_has_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                    |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`remove_path<class_OpenXRIPBinding_method_remove_path>`\ (\ path\: :ref:`String<class_String>`\ )                      |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRIPBinding_property_action:

.. rst-class:: classref-property

:ref:`OpenXRAction<class_OpenXRAction>` **action** :ref:`🔗<class_OpenXRIPBinding_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`OpenXRAction<class_OpenXRAction>`\ )
- :ref:`OpenXRAction<class_OpenXRAction>` **get_action**\ (\ )

:ref:`OpenXRAction<class_OpenXRAction>` that is bound to :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRIPBinding_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

Modificateurs de liaison pour cette liaison.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_binding_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **binding_path** = ``""`` :ref:`🔗<class_OpenXRIPBinding_property_binding_path>`

.. rst-class:: classref-property-setget

- |void| **set_binding_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_binding_path**\ (\ )

Binding path that defines the input or output bound to :ref:`action<class_OpenXRIPBinding_property_action>`.

\ **Note:** Binding paths are suggestions, an XR runtime may choose to bind the action to a different input or output emulating this input or output.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_property_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **paths** :ref:`🔗<class_OpenXRIPBinding_property_paths>`

.. rst-class:: classref-property-setget

- |void| **set_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_paths**\ (\ )

**Obsolète :** Use :ref:`binding_path<class_OpenXRIPBinding_property_binding_path>` instead.

Paths that define the inputs or outputs bound on the device.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRIPBinding_method_add_path:

.. rst-class:: classref-method

|void| **add_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_add_path>`

**Obsolète :** Binding is for a single path.

Ajoute un lien d'entrée/sortie à cette liaison.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier>`

Obtient le :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` à cet index.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_binding_modifier_count>`

Obtient le nombre de modificateurs de liaison pour cette liaison.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_get_path_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_path_count**\ (\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_get_path_count>`

**Obsolète :** Binding is for a single path.

Obtient le nombre de chemins d'entrée/sortie dans cette liaison.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_has_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRIPBinding_method_has_path>`

**Obsolète :** Binding is for a single path.

Returns ``true`` if this input/output path is part of this binding.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRIPBinding_method_remove_path:

.. rst-class:: classref-method

|void| **remove_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRIPBinding_method_remove_path>`

**Obsolète :** Binding is for a single path.

Retire ce lien d'entrée/sortie de cette liaison.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
