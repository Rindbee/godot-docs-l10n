:github_url: hide

.. _class_CapsuleShape3D:

CapsuleShape3D
==============

**Hérite de :** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme de capsule 3D utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Une forme de capsule 3D, destinée à être utilisée pour la physique. Habituellement utilisée pour fournir une forme à un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Performance :** **CapsuleShape3D** est rapide pour vérifier les collisions. Elle est plus rapide que :ref:`CylinderShape3D<class_CylinderShape3D>`, mais plus lente que :ref:`SphereShape3D<class_SphereShape3D>` et :ref:`BoxShape3D<class_BoxShape3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de tests physiques en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape3D_property_height>`         | ``2.0`` |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape3D_property_mid_height>` |         |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape3D_property_radius>`         | ``0.5`` |
   +---------------------------+-------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CapsuleShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La hauteur complète de la capsule, y compris les hémisphères.

\ **Note :** La hauteur :ref:`height<class_CapsuleShape3D_property_height>` d'une capsule doit être au moins deux fois son rayon :ref:`radius<class_CapsuleShape3D_property_radius>`. Sinon, la capsule devient un cercle. Si :ref:`height<class_CapsuleShape3D_property_height>` est inférieure à deux fois :ref:`radius<class_CapsuleShape3D_property_radius>`, les propriétés s'adaptent à une valeur valide.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

La hauteur de la capsule, en excluant les hémisphères. C'est la hauteur de la partie cylindrique centrale au milieu de la capsule, et est la distance entre les centres des deux hémisphères. Il s'agit d'un wrapper pour :ref:`height<class_CapsuleShape3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de la capsule.

\ **Note :** La hauteur :ref:`height<class_CapsuleShape3D_property_height>` d'une capsule doit être au moins deux fois son rayon :ref:`radius<class_CapsuleShape3D_property_radius>`. Sinon, la capsule devient un cercle. Si :ref:`height<class_CapsuleShape3D_property_height>` est inférieure à deux fois :ref:`radius<class_CapsuleShape3D_property_radius>`, les propriétés s'adaptent à une valeur valide.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
