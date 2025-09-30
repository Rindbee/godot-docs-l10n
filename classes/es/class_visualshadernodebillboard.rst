:github_url: hide

.. _class_VisualShaderNodeBillboard:

VisualShaderNodeBillboard
=========================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo que controla cómo el objeto mira a la cámara para ser utilizado dentro del grafo de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El puerto de salida de este nodo debe estar conectado al puerto ``Model View Matrix`` de :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` | :ref:`billboard_type<class_VisualShaderNodeBillboard_property_billboard_type>` | ``1``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`keep_scale<class_VisualShaderNodeBillboard_property_keep_scale>`         | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeBillboard_BillboardType:

.. rst-class:: classref-enumeration

enum **BillboardType**: :ref:`🔗<enum_VisualShaderNodeBillboard_BillboardType>`

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_DISABLED** = ``0``

El billboarding está desactivado y el nodo no hace nada.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_ENABLED** = ``1``

Se activa un algoritmo de billboarding estándar.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_FIXED_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_FIXED_Y** = ``2``

Se activa un algoritmo de billboarding para rotar alrededor del eje Y.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_PARTICLES** = ``3``

Se activa un algoritmo de billboarding diseñado para su uso en partículas.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_MAX** = ``4``

Representa el tamaño del enum :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeBillboard_property_billboard_type:

.. rst-class:: classref-property

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **billboard_type** = ``1`` :ref:`🔗<class_VisualShaderNodeBillboard_property_billboard_type>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_type**\ (\ value\: :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`\ )
- :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **get_billboard_type**\ (\ )

Controla cómo el objeto mira a la cámara.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBillboard_property_keep_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_scale** = ``false`` :ref:`🔗<class_VisualShaderNodeBillboard_property_keep_scale>`

.. rst-class:: classref-property-setget

- |void| **set_keep_scale_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_scale_enabled**\ (\ )

Si es ``true``, el shader mantendrá la escala establecida para la malla. De lo contrario, la escala se perderá cuando se haga billboarding. Sólo se aplica cuando :ref:`billboard_mode<class_VisualShaderNodeBillboard_property_billboard_mode>` es :ref:`BILLBOARD_ENABLED<class_VisualShaderNodeBillboard_constant_BILLBOARD_ENABLED>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
