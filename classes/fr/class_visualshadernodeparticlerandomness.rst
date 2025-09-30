:github_url: hide

.. _class_VisualShaderNodeParticleRandomness:

VisualShaderNodeParticleRandomness
==================================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Visual shader node for randomizing particle values.

.. rst-class:: classref-introduction-group

Description
-----------

Randomness node will output pseudo-random values of the given type based on the specified minimum and maximum values.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` | :ref:`op_type<class_VisualShaderNodeParticleRandomness_property_op_type>` | ``0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeParticleRandomness_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeParticleRandomness_OpType>`

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_SCALAR** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un type de vecteur 2D.

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

Un type de vecteur 3D.

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

Un type de vecteur 4D.

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_MAX** = ``4``

Représente la taille de l'énumération :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeParticleRandomness_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleRandomness_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **get_op_type**\ (\ )

A type of operands and returned value.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
