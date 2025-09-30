:github_url: hide

.. _class_Joint2D:

Joint2D
=======

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`DampedSpringJoint2D<class_DampedSpringJoint2D>`, :ref:`GrooveJoint2D<class_GrooveJoint2D>`, :ref:`PinJoint2D<class_PinJoint2D>`

Classe de base abstraite pour toutes les liaisons physiques 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour toutes les liaisons physiques 2D. Les liaisons 2D lient ensemble deux corps physiques (:ref:`node_a<class_Joint2D_property_node_a>` et :ref:`node_b<class_Joint2D_property_node_b>`) et appliquent une contrainte.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`bias<class_Joint2D_property_bias>`                           | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`disable_collision<class_Joint2D_property_disable_collision>` | ``true``         |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint2D_property_node_a>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint2D_property_node_b>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint2D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Joint2D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0`` :ref:`🔗<class_Joint2D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Lorsque :ref:`node_a<class_Joint2D_property_node_a>` et :ref:`node_b<class_Joint2D_property_node_b>` se déplacent dans des directions différentes, le biais :ref:`bias<class_Joint2D_property_bias>` contrôle la vitesse à laquelle la liaison les ramène vers leur position originale. Plus bas est le biais :ref:`bias<class_Joint2D_property_bias>`, plus les deux corps peuvent tirer sur la liaison.

Quand défini à ``0``, la valeur par défaut de :ref:`ProjectSettings.physics/2d/solver/default_constraint_bias<class_ProjectSettings_property_physics/2d/solver/default_constraint_bias>` est utilisée.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_disable_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_collision** = ``true`` :ref:`🔗<class_Joint2D_property_disable_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Si ``true``, les deux corps liés ensemble n'entrent pas en collision l'un avec l'autre.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Chemin vers le premier corps (A) attaché à la liaison. Le nœud doit hériter de :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Chemin vers le second corps (B) attaché à la liaison. Le nœud doit hériter de :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Joint2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint2D_method_get_rid>`

Renvoie le :ref:`RID<class_RID>` interne de la liaison depuis le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
