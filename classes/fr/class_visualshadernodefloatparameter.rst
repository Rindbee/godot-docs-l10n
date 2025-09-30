:github_url: hide

.. _class_VisualShaderNodeFloatParameter:

VisualShaderNodeFloatParameter
==============================

**Hérite de :** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A scalar float parameter to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Traduit en ``uniform float`` dans le langage de shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`                 | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`default_value_enabled<class_VisualShaderNodeFloatParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` | :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>`                                   | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`                                     | ``1.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`min<class_VisualShaderNodeFloatParameter_property_min>`                                     | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`                                   | ``0.1``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeFloatParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeFloatParameter_Hint>`

.. _class_VisualShaderNodeFloatParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_NONE** = ``0``

Aucun indice utilisé.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE** = ``1``

A range hint for scalar value, which limits possible input values between :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` and :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`. Translated to ``hint_range(min, max)`` in shader code.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE_STEP** = ``2``

A range hint for scalar value with step, which limits possible input values between :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` and :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`, with a step (increment) of :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`). Translated to ``hint_range(min, max, step)`` in shader code.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_MAX** = ``3``

Représente la taille de l'énumération :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeFloatParameter_property_default_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **default_value** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_default_value**\ (\ )

Une valeur par défaut à attribuer dans le shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Active l'utilisation de :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **get_hint**\ (\ )

A hint applied to the uniform, which controls the values it can take when set through the Inspector.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **max** = ``1.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Minimum value for range hints. Used if :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` is set to :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` or :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **min** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Maximum value for range hints. Used if :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` is set to :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` or :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.1`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Step (increment) value for the range hint with step. Used if :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` is set to :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
