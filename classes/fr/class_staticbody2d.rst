:github_url: hide

.. _class_StaticBody2D:

StaticBody2D
============

**Hérite de :** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`AnimatableBody2D<class_AnimatableBody2D>`

Un corps physique 2D qui ne peut pas être déplacé par des forces extérieures. Lorsqu'il est déplacé manuellement, il n'affecte pas les autres corps sur son chemin.

.. rst-class:: classref-introduction-group

Description
-----------

Un corps physique 2D statique. Il ne peut pas être déplacé par des forces ou des contacts externes, mais peut être déplacé manuellement par d'autres moyens tels que le code, des :ref:`AnimationMixer<class_AnimationMixer>`\ s (avec :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` défini sur :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`), et :ref:`RemoteTransform2D<class_RemoteTransform2D>`.

Lorsqu'un **StaticBody2D** est déplacé, il est téléporté à sa nouvelle position sans affecter les autres corps de physique sur son chemin. Si cela n'est pas souhaité, utilisez :ref:`AnimatableBody2D<class_AnimatableBody2D>` à la place.

\ **StaticBody2D** est utile pour des objets complètement statiques comme des sols et des murs, ainsi que des surfaces mobiles comme des tapis roulants et des plateformes tournantes circulaires (en utilisant :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>` et :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>`).

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

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                     | :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>` | ``0.0``           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                 | :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>`   | ``Vector2(0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody2D_property_physics_material_override>` |                   |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StaticBody2D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_angular_velocity** = ``0.0`` :ref:`🔗<class_StaticBody2D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_angular_velocity**\ (\ )

La vitesse angulaire constante du corps. Cela ne tourne pas le corps, mais affecte les autres corps qui le touchent, comme s'il tournait.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_StaticBody2D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ )

La vitesse linéaire constante du corps. Cela ne déplace pas le corps, mais affecte les autres corps qui le touchent, comme s'il se déplaçait.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Le matériau physique de remplacement pour le corps.

Si un matériau est affecté à cette propriété, il sera utilisé au lieu de tout autre matériau physique, tel qu'un matériau hérité.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
