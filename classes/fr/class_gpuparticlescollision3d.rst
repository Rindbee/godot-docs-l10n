:github_url: hide

.. _class_GPUParticlesCollision3D:

GPUParticlesCollision3D
=======================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`GPUParticlesCollisionBox3D<class_GPUParticlesCollisionBox3D>`, :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, :ref:`GPUParticlesCollisionSphere3D<class_GPUParticlesCollisionSphere3D>`

Classe de base abstraite pour les formes de collision de particules 3D affectant les nœuds :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Les formes de collision de particules peuvent être utilisées pour faire arrêter ou rebondir des particules contre elles.

Les formes de collision de particules fonctionnent en temps réel et peuvent être déplacées, tournées et redimensionnées pendant le gameplay. Contrairement aux attracteurs, une échelle non uniforme des formes de collision n'est *pas* supportée.

Les formes de collision de particules peuvent être temporairement désactivées en les cachant.

\ **Note :** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` doit valoir :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` ou :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` sur le matériau de traitement du :ref:`GPUParticles3D<class_GPUParticles3D>` pour que la collision fonctionne.

\ **Note :** La collision de particules n'affecte que :ref:`GPUParticles3D<class_GPUParticles3D>`, pas :ref:`CPUParticles3D<class_CPUParticles3D>`.

\ **Note :** Les particules poussées par un collider qui est déplacé ne seront pas interpolées, ce qui peut entraîner un stuttering visible. Cela peut être atténué en définissant :ref:`GPUParticles3D.fixed_fps<class_GPUParticles3D_property_fixed_fps>` à ``0`` ou une valeur qui correspond ou dépasse le framerate cible.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`cull_mask<class_GPUParticlesCollision3D_property_cull_mask>` | ``4294967295`` |
   +-----------------------+--------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GPUParticlesCollision3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollision3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Les couches de rendu des particules (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) qui seront affectées par la forme de collision. Par défaut, toutes les particules qui ont :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` défini à :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` ou :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` seront affectées par une forme de collision.

Après avoir configuré les nœuds des particules en conséquence, des couches spécifiques peuvent être décochées pour empêcher que certaines particules ne soient affectées par les colliders. Par exemple, cela peut être utilisé si vous utilisez un collider dans le cadre d'un effet de sort, mais ne voulez pas que le collider affecte les particules météorologiques sans rapport à la même position.

La collision des particules peut également être désactivée selon le matériau de traitement en définissant :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` sur le nœud :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
