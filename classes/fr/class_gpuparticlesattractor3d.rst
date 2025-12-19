:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

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

Les couches de rendu des particules (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) qui seront affectées par l'attracteur. Par défaut, toutes les particules sont affectées par un attracteur.

Après avoir configuré les nœuds de particules en conséquence, des couches spécifiques peuvent être décochées pour empêcher que certaines particules ne soient affectées par des attracteurs. Par exemple, cela peut être utilisé si vous utilisez un attracteur dans le cadre d'un effet de sort, mais ne voulez pas que l'attracteur affecte les particules météorologiques sans rapport à la même position.

L'attraction des particules peut également être désactivée selon le matériau de traitement en définissant :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>` sur le nœud :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

Ajuste à quel point l'attracteur est directionnel. À ``0.0``, l'attracteur n'est pas directionnel du tout : il attirera les particules vers son centre. À ``1.0``, l'attracteur est entièrement directionnel : les particules seront toujours poussées vers le -Z local (ou +Z si :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` est négative).

\ **Note :** Si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` est supérieure à ``0.0``, la direction dans laquelle les particules sont poussées peut être modifiée en tournant le nœud **GPUParticlesAttractor3D**.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Ajuste la force de l'attracteur. Si :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` est négative, les particules seront poussées dans la direction opposée. Les particules seront poussées *hors* de l'origine de l'attracteur si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` vaut ``0.0``, ou vers le +Z local si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` est supérieure à ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
