:github_url: hide

.. _class_VisualShaderNodeBillboard:

VisualShaderNodeBillboard
=========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A node that controls how the object faces the camera to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

The output port of this node needs to be connected to ``Model View Matrix`` port of :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Énumérations
------------------------

.. _enum_VisualShaderNodeBillboard_BillboardType:

.. rst-class:: classref-enumeration

enum **BillboardType**: :ref:`🔗<enum_VisualShaderNodeBillboard_BillboardType>`

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_DISABLED** = ``0``

Billboarding is disabled and the node does nothing.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_ENABLED** = ``1``

A standard billboarding algorithm is enabled.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_FIXED_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_FIXED_Y** = ``2``

A billboarding algorithm to rotate around Y-axis is enabled.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_PARTICLES** = ``3``

A billboarding algorithm designed to use on particles is enabled.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_MAX** = ``4``

Représente la taille de l'énumération :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeBillboard_property_billboard_type:

.. rst-class:: classref-property

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **billboard_type** = ``1`` :ref:`🔗<class_VisualShaderNodeBillboard_property_billboard_type>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_type**\ (\ value\: :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`\ )
- :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **get_billboard_type**\ (\ )

Controls how the object faces the camera.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBillboard_property_keep_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_scale** = ``false`` :ref:`🔗<class_VisualShaderNodeBillboard_property_keep_scale>`

.. rst-class:: classref-property-setget

- |void| **set_keep_scale_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_scale_enabled**\ (\ )

If ``true``, the shader will keep the scale set for the mesh. Otherwise, the scale is lost when billboarding.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
