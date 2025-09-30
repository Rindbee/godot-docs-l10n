:github_url: hide

.. _class_RDPipelineSpecializationConstant:

RDPipelineSpecializationConstant
================================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Pipeline specialization constant (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Description
-----------

A *specialization constant* is a way to create additional variants of shaders without actually increasing the number of shader versions that are compiled. This allows improving performance by reducing the number of shader versions and reducing ``if`` branching, while still allowing shaders to be flexible for different use cases.

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`         | :ref:`constant_id<class_RDPipelineSpecializationConstant_property_constant_id>` | ``0`` |
   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`Variant<class_Variant>` | :ref:`value<class_RDPipelineSpecializationConstant_property_value>`             |       |
   +-------------------------------+---------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RDPipelineSpecializationConstant_property_constant_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant_id** = ``0`` :ref:`🔗<class_RDPipelineSpecializationConstant_property_constant_id>`

.. rst-class:: classref-property-setget

- |void| **set_constant_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant_id**\ (\ )

The identifier of the specialization constant. This is a value starting from ``0`` and that increments for every different specialization constant for a given shader.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineSpecializationConstant_property_value:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **value** :ref:`🔗<class_RDPipelineSpecializationConstant_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_value**\ (\ )

The specialization constant's value. Only :ref:`bool<class_bool>`, :ref:`int<class_int>` and :ref:`float<class_float>` types are valid for specialization constants.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
