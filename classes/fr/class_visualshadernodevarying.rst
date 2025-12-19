:github_url: hide

.. _class_VisualShaderNodeVarying:

VisualShaderNodeVarying
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisualShaderNodeVaryingGetter<class_VisualShaderNodeVaryingGetter>`, :ref:`VisualShaderNodeVaryingSetter<class_VisualShaderNodeVaryingSetter>`

A visual shader node that represents a "varying" shader value.

.. rst-class:: classref-introduction-group

Description
-----------

Varying values are shader variables that can be passed between shader functions, e.g. from Vertex shader to Fragment shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>`                       | :ref:`varying_name<class_VisualShaderNodeVarying_property_varying_name>` | ``"[None]"`` |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`VaryingType<enum_VisualShader_VaryingType>` | :ref:`varying_type<class_VisualShaderNodeVarying_property_varying_type>` | ``0``        |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeVarying_property_varying_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **varying_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_name>`

.. rst-class:: classref-property-setget

- |void| **set_varying_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_varying_name**\ (\ )

Name of the variable. Must be unique.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVarying_property_varying_type:

.. rst-class:: classref-property

:ref:`VaryingType<enum_VisualShader_VaryingType>` **varying_type** = ``0`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_type>`

.. rst-class:: classref-property-setget

- |void| **set_varying_type**\ (\ value\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )
- :ref:`VaryingType<enum_VisualShader_VaryingType>` **get_varying_type**\ (\ )

Type of the variable. Determines where the variable can be accessed.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
