:github_url: hide

.. _class_GPUParticlesAttractorVectorField3D:

GPUParticlesAttractorVectorField3D
==================================

**Hérite de :** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A box-shaped attractor with varying directions and strengths defined in it that influences particles from :ref:`GPUParticles3D<class_GPUParticles3D>` nodes.

.. rst-class:: classref-introduction-group

Description
-----------

A box-shaped attractor with varying directions and strengths defined in it that influences particles from :ref:`GPUParticles3D<class_GPUParticles3D>` nodes.

Unlike :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, **GPUParticlesAttractorVectorField3D** uses a :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` to affect attraction strength within the box. This can be used to create complex attraction scenarios where particles travel in different directions depending on their location. This can be useful for weather effects such as sandstorms.

Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.

\ **Note:** Particle attractors only affect :ref:`GPUParticles3D<class_GPUParticles3D>`, not :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>`       | ``Vector3(2, 2, 2)`` |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` |                      |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GPUParticlesAttractorVectorField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the vector field box in 3D units.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractorVectorField3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

The 3D texture to be used. Values are linearly interpolated between the texture's pixels.

\ **Note:** To get better performance, the 3D texture's resolution should reflect the :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>` of the attractor. Since particle attraction is usually low-frequency data, the texture can be kept at a low resolution such as 64×64×64.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
