:github_url: hide

.. _class_DampedSpringJoint2D:

DampedSpringJoint2D
===================

**Hérite de :** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un liaison physique qui relie deux corps physiques 2D avec une force semblable à un ressort.

.. rst-class:: classref-introduction-group

Description
-----------

Une liaison physique qui relie deux corps physiques 2D avec une force semblable à un ressort. Cela se comporte comme un ressort qui veut toujours s'étendre vers une longueur donnée.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`damping<class_DampedSpringJoint2D_property_damping>`         | ``1.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_DampedSpringJoint2D_property_length>`           | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`rest_length<class_DampedSpringJoint2D_property_rest_length>` | ``0.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`stiffness<class_DampedSpringJoint2D_property_stiffness>`     | ``20.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_DampedSpringJoint2D_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``1.0`` :ref:`🔗<class_DampedSpringJoint2D_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

Le rapport d'amortissement du ressort. Une valeur entre ``0`` et ``1``. Lorsque les deux corps se déplacent dans des directions différentes, le système tente de les aligner à nouveau sur l'axe du ressort. Une valeur élevée pour :ref:`damping<class_DampedSpringJoint2D_property_damping>` force les corps attachés à s'aligner plus rapidement.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_DampedSpringJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La longueur maximale de la jointure en ressort. Les deux corps attachés ne peuvent pas l'étirer au-delà de cette valeur.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **rest_length** = ``0.0`` :ref:`🔗<class_DampedSpringJoint2D_property_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rest_length**\ (\ )

Lorsque les corps attachés à la jointure en ressort se déplacent, ils l'étirent ou la compressent. La jointure tente toujours de se redimensionner vers cette longueur.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``20.0`` :ref:`🔗<class_DampedSpringJoint2D_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

Plus la valeur est élevée, moins les corps attachés à la liaison la déformeront. La liaison applique une force opposée aux corps, le produit de la rigidité multipliée par la différence de taille avec sa longueur de repos.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
