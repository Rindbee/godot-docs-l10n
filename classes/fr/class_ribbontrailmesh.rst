:github_url: hide

.. _class_RibbonTrailMesh:

RibbonTrailMesh
===============

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente un :ref:`PrimitiveMesh<class_PrimitiveMesh>` forme de ruban droit avec une largeur variable.

.. rst-class:: classref-introduction-group

Description
-----------

**RibbonTrailMesh** représente un maillage en forme de ruban droit avec une largeur variable. Le ruban est composé d'un certain nombre de sections plates ou en forme de croix, chacune avec la même :ref:`section_length<class_RibbonTrailMesh_property_section_length>` et le même nombre :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>`. Une courbe :ref:`curve<class_RibbonTrailMesh_property_curve>` est échantillonnée le long de la longueur totale du ruban, ce qui signifie que la courbe détermine la taille du ruban sur toute sa longueur.

Ce maillage primitif est généralement utilisé pour les traînées de particules.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Traînées de particule 3D <../tutorials/3d/particles/trails>`

- :doc:`Systèmes de particule (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Curve<class_Curve>`                | :ref:`curve<class_RibbonTrailMesh_property_curve>`                       |         |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`section_length<class_RibbonTrailMesh_property_section_length>`     | ``0.2`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` | ``3``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`sections<class_RibbonTrailMesh_property_sections>`                 | ``5``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Shape<enum_RibbonTrailMesh_Shape>` | :ref:`shape<class_RibbonTrailMesh_property_shape>`                       | ``1``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`size<class_RibbonTrailMesh_property_size>`                         | ``1.0`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_RibbonTrailMesh_Shape:

.. rst-class:: classref-enumeration

enum **Shape**: :ref:`🔗<enum_RibbonTrailMesh_Shape>`

.. _class_RibbonTrailMesh_constant_SHAPE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_FLAT** = ``0``

Donne au maillage une seule face plate.

.. _class_RibbonTrailMesh_constant_SHAPE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_CROSS** = ``1``

Donne au maillage deux faces plates perpendiculaires, faisant une forme de croix.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RibbonTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_RibbonTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Détermine la taille du ruban le long de sa longueur. La taille d'un segment de section particulier est obtenue en multipliant le niveau de référence :ref:`size<class_RibbonTrailMesh_property_size>` par la valeur de cette courbe à la distance donnée. Pour les valeurs inférieures à ``0``, les faces seront inversées. Devrait être une :ref:`Curve<class_Curve>` unitaire.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_RibbonTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La longueur d'une section du ruban.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_segments** = ``3`` :ref:`🔗<class_RibbonTrailMesh_property_section_segments>`

.. rst-class:: classref-property-setget

- |void| **set_section_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_segments**\ (\ )

Le nombre de segments dans une section. La courbe :ref:`curve<class_RibbonTrailMesh_property_curve>` est échantillonnée sur chaque segment pour déterminer sa taille. Des valeurs plus élevées résultent en un ruban plus détaillé au détriment des performances.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_RibbonTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Le nombre total de sections sur le ruban.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_shape:

.. rst-class:: classref-property

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **shape** = ``1`` :ref:`🔗<class_RibbonTrailMesh_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape<enum_RibbonTrailMesh_Shape>`\ )
- :ref:`Shape<enum_RibbonTrailMesh_Shape>` **get_shape**\ (\ )

Détermine la forme du ruban.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_RibbonTrailMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

La taille de base du ruban. La taille d'un segment particulier de section est obtenue en multipliant cette taille par la valeur de la courbe :ref:`curve<class_RibbonTrailMesh_property_curve>` à la distance donnée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
