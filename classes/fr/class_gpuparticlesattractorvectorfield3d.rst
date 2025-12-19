:github_url: hide

.. _class_GPUParticlesAttractorVectorField3D:

GPUParticlesAttractorVectorField3D
==================================

**Hérite de :** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un attracteur en forme de boîte avec des directions et des forces variables définies dans celui-ci qui influence les particules des nœuds :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Un attracteur en forme de boîte avec des directions et des forces variables définies dans celui-ci qui influence les particules des nœuds :ref:`GPUParticles3D<class_GPUParticles3D>`.

Contrairement à :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, **GPUParticlesAttractorVectorField3D** utilise une :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` pour affecter la force d'attraction dans la boîte. Cela peut être utilisé pour créer des scénarios d'attraction complexes où les particules voyagent dans différentes directions en fonction de leur emplacement. Cela peut être utile pour des effets météorologiques comme les tempêtes de sable.

Les attracteurs de particules fonctionnent en temps réel et peuvent être déplacés, tournés et redimensionnés pendant le gameplay. Contrairement aux formes de collision, les attracteurs à échelle non uniformes sont également supportés.

\ **Note :** Les attracteurs de particules n'affectent que :ref:`GPUParticles3D<class_GPUParticles3D>`, pas :ref:`CPUParticles3D<class_CPUParticles3D>`.

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

La taille de la boîte du champ vectoriel en unités 3D.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractorVectorField3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

La texture 3D à utiliser. Les valeurs sont linéairement interpolées entre les pixels de la texture.

\ **Note :** Pour obtenir une meilleure performance, la résolution de la texture 3D devrait refléter la taille :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>` de l'attracteur. Comme l'attraction de particules est généralement une donnée à basse fréquence, la texture peut être conservée à une résolution basse comme 64×64×64.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
