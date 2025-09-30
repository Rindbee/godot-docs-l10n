:github_url: hide

.. _class_VisualShaderNodeTransformVecMult:

VisualShaderNodeTransformVecMult
================================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Multiplie une :ref:`Transform3D<class_Transform3D>` et un :ref:`Vector3<class_Vector3>` dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

A multiplication operation on a transform (4×4 matrix) and a vector, with support for different multiplication operators.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` | :ref:`operator<class_VisualShaderNodeTransformVecMult_property_operator>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeTransformVecMult_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformVecMult_Operator>`

.. _class_VisualShaderNodeTransformVecMult_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_AxB** = ``0``

Multiplie la transformation ``a`` par le vecteur ``b``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_BxA** = ``1``

Multiplie le vecteur ``b`` par la transformation ``a``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_AxB** = ``2``

Multiplie la transformation ``a`` par le vecteur ``b``, ignorant la dernière ligne et colonne de la transformation.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_BxA** = ``3``

Multiplie le vecteur ``b`` par la transformation ``a``, ignorant la dernière ligne et colonne de la transformation.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_MAX** = ``4``

Représente la taille de l'énumération :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeTransformVecMult_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformVecMult_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **get_operator**\ (\ )

The multiplication type to be performed.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
