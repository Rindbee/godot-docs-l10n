:github_url: hide

.. _class_VisualShaderNodeColorOp:

VisualShaderNodeColorOp
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un opérateur de :ref:`Color<class_Color>` à utiliser dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Appliquer :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` aux deux entrées.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` | :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeColorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeColorOp_Operator>`

.. _class_VisualShaderNodeColorOp_constant_OP_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SCREEN** = ``0``

Produce a screen effect with the following formula:

::

    result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DIFFERENCE** = ``1``

Produire un effet de différence avec la formule suivante :

::

    resultat = abs(a - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DARKEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DARKEN** = ``2``

Produit un effet d'assombrissement à partir de la formule suivante :

::

    result = min(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_LIGHTEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_LIGHTEN** = ``3``

Produit un effet d'éclaircissement à partir de la formule suivante :

::

    result = max(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_OVERLAY** = ``4``

Produce an overlay effect with the following formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = 2.0 * base * blend;
        } else {
            result[i] = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_DODGE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DODGE** = ``5``

Produce a dodge effect with the following formula:

::

    result = a / (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_BURN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_BURN** = ``6``

Produit un effet de brûlure avec la formule suivante :

::

    resultat = vec3(1.0) - (vec3(1.0) - a) / b;

.. _class_VisualShaderNodeColorOp_constant_OP_SOFT_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SOFT_LIGHT** = ``7``

Produce a soft light effect with the following formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_HARD_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_HARD_LIGHT** = ``8``

Produce a hard light effect with the following formula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (2.0 * blend);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_MAX** = ``9``

Représente la taille de l'énumération :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeColorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeColorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **get_operator**\ (\ )

Un opérateur à appliquer aux entrées.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
