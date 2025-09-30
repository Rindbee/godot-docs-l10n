:github_url: hide

.. _class_VisualShaderNodeUIntParameter:

VisualShaderNodeUIntParameter
=============================

**Hérite de :** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node for shader parameter (uniform) of type unsigned :ref:`int<class_int>`.

.. rst-class:: classref-introduction-group

Description
-----------

A :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` of type unsigned :ref:`int<class_int>`. Offers additional customization for range of accepted values.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`default_value<class_VisualShaderNodeUIntParameter_property_default_value>`                 | ``0``     |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeUIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Default value of this parameter, which will be used if not set externally. :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` must be enabled; defaults to ``0`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeUIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

If ``true``, the node will have a custom default value.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
