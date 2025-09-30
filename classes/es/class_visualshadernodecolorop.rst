:github_url: hide

.. _class_VisualShaderNodeColorOp:

VisualShaderNodeColorOp
=======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operador :ref:`Color<class_Color>` para ser usado dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Aplica :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` a dos entradas de color.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` | :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeColorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeColorOp_Operator>`

.. _class_VisualShaderNodeColorOp_constant_OP_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SCREEN** = ``0``

Producir un efecto de pantalla con la siguiente fórmula:

::

    result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DIFFERENCE** = ``1``

Produce un efecto de diferencia con la siguiente fórmula:

::

    result = abs(a - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DARKEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DARKEN** = ``2``

Produce un efecto de oscurecimiento con la siguiente fórmula:

::

    result = min(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_LIGHTEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_LIGHTEN** = ``3``

Produce un efecto de aligeramiento con la siguiente fórmula:

::

    result = max(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_OVERLAY** = ``4``

Produce un efecto de superposición con la siguiente fórmula:

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

Produce un efecto de evasión con la siguiente fórmula:

::

    result = a / (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_BURN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_BURN** = ``6``

Produce un efecto de quemadura con la siguiente fórmula:

::

    result = vec3(1.0) - (vec3(1.0) - a) / b;

.. _class_VisualShaderNodeColorOp_constant_OP_SOFT_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SOFT_LIGHT** = ``7``

Produce un efecto de luz suave con la siguiente fórmula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } más {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_HARD_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_HARD_LIGHT** = ``8``

Produce un efecto de luz suave con la siguiente fórmula:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } más {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_MAX** = ``9``

Representa el tamaño del enum :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeColorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeColorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **get_operator**\ (\ )

Un operador que se aplica a las entradas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
