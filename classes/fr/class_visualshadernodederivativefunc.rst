:github_url: hide

.. _class_VisualShaderNodeDerivativeFunc:

VisualShaderNodeDerivativeFunc
==============================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Calcule une dérivée dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud n'est disponible que dans les shaders visuels ``Fragment`` et ``Light``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`   | :ref:`function<class_VisualShaderNodeDerivativeFunc_property_function>`   | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`       | :ref:`op_type<class_VisualShaderNodeDerivativeFunc_property_op_type>`     | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` | :ref:`precision<class_VisualShaderNodeDerivativeFunc_property_precision>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeDerivativeFunc_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_OpType>`

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_SCALAR** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un type de vecteur 2D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

Un type de vecteur 3D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

Un type de vecteur 4D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_MAX** = ``4``

Représente la taille de l'énumération :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Function>`

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_SUM:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_SUM** = ``0``

La somme d'une dérivation absolue dans ``x`` et ``y``.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_X:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_X** = ``1``

Dérive selon ``x`` par différenciation locale.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_Y** = ``2``

Dérive selon ``y`` par différenciation locale.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_MAX** = ``3``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Precision:

.. rst-class:: classref-enumeration

enum **Precision**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Precision>`

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_NONE** = ``0``

No precision is specified, the GPU driver is allowed to use whatever level of precision it chooses. This is the default option and is equivalent to using ``dFdx()`` or ``dFdy()`` in text shaders.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_COARSE** = ``1``

The derivative will be calculated using the current fragment's neighbors (which may not include the current fragment). This tends to be faster than using :ref:`PRECISION_FINE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE>`, but may not be suitable when more precision is needed. This is equivalent to using ``dFdxCoarse()`` or ``dFdyCoarse()`` in text shaders.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_FINE** = ``2``

The derivative will be calculated using the current fragment and its immediate neighbors. This tends to be slower than using :ref:`PRECISION_COARSE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE>`, but may be necessary when more precision is needed. This is equivalent to using ``dFdxFine()`` or ``dFdyFine()`` in text shaders.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_MAX** = ``3``

Représente la taille de l'énumération :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeDerivativeFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **get_function**\ (\ )

A derivative function type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **get_op_type**\ (\ )

A type of operands and returned value.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_precision:

.. rst-class:: classref-property

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **precision** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_precision>`

.. rst-class:: classref-property-setget

- |void| **set_precision**\ (\ value\: :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`\ )
- :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **get_precision**\ (\ )

Sets the level of precision to use for the derivative function. When using the Compatibility renderer, this setting has no effect.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
