:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

Classe de base abstraite pour les attracteurs de particules 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Les attracteurs de particules peuvent être utilisés pour attirer des particules vers l'origine de l'attracteur, ou pour les repousser de l'origine de l'attracteur.

Les attracteurs de particules fonctionnent en temps réel et peuvent être déplacés, tournés et redimensionnés pendant le gameplay. Contrairement aux formes de collision, une échelle non uniforme d'attracteur est également supportée.

Les attracteurs peuvent être temporairement désactivés en les cachant, ou en définissant leur force :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` à ``0.0``.

\ **Note :** Les attracteurs de particules n'affectent que les :ref:`GPUParticles3D<class_GPUParticles3D>`, pas les :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`attenuation<class_GPUParticlesAttractor3D_property_attenuation>`       | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`     | :ref:`cull_mask<class_GPUParticlesAttractor3D_property_cull_mask>`           | ``4294967295`` |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` | ``0.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`strength<class_GPUParticlesAttractor3D_property_strength>`             | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

L'atténuation de l'attracteur à particules. Des valeurs plus élevées résultent en une poussée plus progressive des particules lorsqu'elles se rapprochent de l'origine de l'attracteur. Des valeurs nulles ou négatives causera une poussée très rapide des particules dès qu'elles touchent les bords de l'attracteur.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

The particle rendering layers (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) that will be affected by the attractor. By default, all particles are affected by an attractor.

After configuring particle nodes accordingly, specific layers can be unchecked to prevent certain particles from being affected by attractors. For example, this can be used if you're using an attractor as part of a spell effect but don't want the attractor to affect unrelated weather particles at the same position.

Particle attraction can also be disabled on a per-process material basis by setting :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>` on the :ref:`GPUParticles3D<class_GPUParticles3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

Adjusts how directional the attractor is. At ``0.0``, the attractor is not directional at all: it will attract particles towards its center. At ``1.0``, the attractor is fully directional: particles will always be pushed towards local -Z (or +Z if :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` is negative).

\ **Note:** If :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` is greater than ``0.0``, the direction in which particles are pushed can be changed by rotating the **GPUParticlesAttractor3D** node.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Adjusts the strength of the attractor. If :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` is negative, particles will be pushed in the opposite direction. Particles will be pushed *away* from the attractor's origin if :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` is ``0.0``, or towards local +Z if :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` is greater than ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
