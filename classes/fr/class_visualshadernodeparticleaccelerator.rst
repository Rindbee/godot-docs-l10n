:github_url: hide

.. _class_VisualShaderNodeParticleAccelerator:

VisualShaderNodeParticleAccelerator
===================================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nœud de shader visuel qui accélère des particules.

.. rst-class:: classref-introduction-group

Description
-----------

Particle accelerator can be used in "process" step of particle shader. It will accelerate the particles. Connect it to the Velocity output port.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` | :ref:`mode<class_VisualShaderNodeParticleAccelerator_property_mode>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeParticleAccelerator_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_VisualShaderNodeParticleAccelerator_Mode>`

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_LINEAR** = ``0``

The particles will be accelerated based on their velocity.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_RADIAL** = ``1``

The particles will be accelerated towards or away from the center.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_TANGENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_TANGENTIAL** = ``2``

The particles will be accelerated tangentially to the radius vector from center to their position.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_MAX** = ``3``

Représente la taille de l'énumération :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeParticleAccelerator_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **mode** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleAccelerator_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`\ )
- :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **get_mode**\ (\ )

Defines in what manner the particles will be accelerated.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
