:github_url: hide

.. _class_AnimatableBody2D:

AnimatableBody2D
================

**Hérite de :** :ref:`StaticBody2D<class_StaticBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corps physique 2D qui ne peut être déplacé par des forces extérieures. Lorsqu'il est déplacé manuellement, il affecte les autres corps sur son chemin.

.. rst-class:: classref-introduction-group

Description
-----------

Un corps physique 2D animable. Il ne peut pas être déplacé par des forces ou des contacts externes, mais peut être déplacé manuellement par d'autres moyens tels que le code, des :ref:`AnimationMixer<class_AnimationMixer>`\ s (avec :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>`) définis à :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`), et des :ref:`RemoteTransform2D<class_RemoteTransform2D>`\ s.

Lorsque **AnimatableBody2D** est déplacé, sa vitesse linéaire et angulaire sont estimées et utilisées pour affecter d'autres corps physiques sur son chemin. Cela le rend utile pour les plates-formes mobiles, les portes et autres objets mobiles.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Dépanner des problèmes de physique <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`sync_to_physics<class_AnimatableBody2D_property_sync_to_physics>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimatableBody2D_property_sync_to_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync_to_physics** = ``true`` :ref:`🔗<class_AnimatableBody2D_property_sync_to_physics>`

.. rst-class:: classref-property-setget

- |void| **set_sync_to_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sync_to_physics_enabled**\ (\ )

Si ``true``, le mouvement du corps sera synchronisé à la trame physique. Ceci est utile lors de l'animation du mouvement via :ref:`AnimationPlayer<class_AnimationPlayer>`, par exemple sur les plateformes mobiles. N'utilisez **pas** ceci en même temps avec :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
