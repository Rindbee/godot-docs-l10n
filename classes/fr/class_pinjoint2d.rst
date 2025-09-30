:github_url: hide

.. _class_PinJoint2D:

PinJoint2D
==========

**Hérite de :** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une liaison physique qui attache deux corps physiques 2D en un seul point, leur permettant de tourner librement.

.. rst-class:: classref-introduction-group

Description
-----------

Un liaison physique qui attache deux corps physiques 2D en un seul point, leur permettant de tourner librement. Par un exemple, un :ref:`RigidBody2D<class_RigidBody2D>` peut être attaché à un :ref:`StaticBody2D<class_StaticBody2D>` pour créer un pendule ou une balançoire.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`motor_enabled<class_PinJoint2D_property_motor_enabled>`                 | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`motor_target_velocity<class_PinJoint2D_property_motor_target_velocity>` | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`softness<class_PinJoint2D_property_softness>`                           | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PinJoint2D_property_angular_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_angular_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_angular_limit_enabled**\ (\ )

If ``true``, the pin maximum and minimum rotation, defined by :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>` and :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>` are applied.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_lower** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_lower>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_lower**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_lower**\ (\ )

La rotation minimale. Uniquement active quand :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_upper** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_upper>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_upper**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_upper**\ (\ )

La rotation minimale. Uniquement active quand :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_motor_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_motor_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_motor_enabled**\ (\ )

When activated, a motor turns the pin.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor_target_velocity** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_motor_target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_motor_target_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motor_target_velocity**\ (\ )

Vitesse cible pour le moteur. En radians par seconde.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_softness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_softness**\ (\ )

The higher this value, the more the bond to the pinned partner can flex.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
