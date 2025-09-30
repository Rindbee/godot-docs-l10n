:github_url: hide

.. _class_CapsuleMesh:

CapsuleMesh
===========

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe représentant une capsule en forme de :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Description
-----------

Classe représentant une capsule en forme de :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleMesh_property_height>`                   | ``2.0`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CapsuleMesh_property_radial_segments>` | ``64``  |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleMesh_property_radius>`                   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CapsuleMesh_property_rings>`                     | ``8``   |
   +---------------------------+--------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CapsuleMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Hauteur totale du maillage de capsule (y compris les extrémités hémisphériques).

\ **Note :** La hauteur :ref:`height<class_CapsuleMesh_property_height>` d'un maillage de capsule doit valoir au moins deux fois son rayon :ref:`radius<class_CapsuleMesh_property_radius>`. Sinon, la capsule devient un cercle. Si la hauteur :ref:`height<class_CapsuleMesh_property_height>` est inférieure à deux fois le rayon :ref:`radius<class_CapsuleMesh_property_radius>`, les propriétés s'ajustent à une valeur valide.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CapsuleMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Le nombre de segments radiaux du maillage de la capsule.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Rayon du maillage en capsule.

\ **Note :** Le rayon :ref:`radius<class_CapsuleMesh_property_radius>` d'une capsule ne peut pas être supérieur à la moitié de sa hauteur :ref:`height<class_CapsuleMesh_property_height>`. Sinon, la capsule devient un cercle. Si le rayon :ref:`radius<class_CapsuleMesh_property_radius>` est supérieur à la moitié de la hauteur :ref:`height<class_CapsuleMesh_property_height>`, les propriétés s'ajustent à une valeur valide.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``8`` :ref:`🔗<class_CapsuleMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Le nombre d'anneau le long de la hauteur de la capsule.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
