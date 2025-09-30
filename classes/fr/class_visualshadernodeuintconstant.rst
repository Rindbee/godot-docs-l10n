:github_url: hide

.. _class_VisualShaderNodeUIntConstant:

VisualShaderNodeUIntConstant
============================

**Hérite de :** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An unsigned scalar integer constant to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Translated to ``uint`` in the shader language.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`constant<class_VisualShaderNodeUIntConstant_property_constant>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeUIntConstant_property_constant:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant**\ (\ )

An unsigned integer constant which represents a state of this node.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
