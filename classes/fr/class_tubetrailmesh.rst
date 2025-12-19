:github_url: hide

.. _class_TubeTrailMesh:

TubeTrailMesh
=============

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente un :ref:`PrimitiveMesh<class_PrimitiveMesh>` en forme de tube droit avec une largeur variable.

.. rst-class:: classref-introduction-group

Description
-----------

**TubeTrailMesh** représente un maillage en forme en forme de tube droit avec une largeur variable. Le tube est composé d'un certain nombre de sections cylindriques, chacune avec la même longueur de section :ref:`section_length<class_TubeTrailMesh_property_section_length>` et le même nombre d'anneaux :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`. Une courbe :ref:`curve<class_TubeTrailMesh_property_curve>` est échantillonnée le long de la longueur totale du tube, ce qui signifie que la courbe détermine le rayon du tube le long de sa longueur.

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

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_TubeTrailMesh_property_cap_bottom>`         | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_TubeTrailMesh_property_cap_top>`               | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Curve<class_Curve>` | :ref:`curve<class_TubeTrailMesh_property_curve>`                   |          |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_steps<class_TubeTrailMesh_property_radial_steps>`     | ``8``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_TubeTrailMesh_property_radius>`                 | ``0.5``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`section_length<class_TubeTrailMesh_property_section_length>` | ``0.2``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`   | ``3``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`sections<class_TubeTrailMesh_property_sections>`             | ``5``    |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TubeTrailMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Si ``true``, génère un bouchon en bas du tube. Cela peut être défini à ``false`` pour accélérer la génération et le rendu lorsque le bouchon n'est jamais vu par la caméra.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Si ``true``, génère un bouchon en haut du tube. Cela peut être défini à ``false`` pour accélérer la génération et le rendu lorsque le bouchon n'est jamais vu par la caméra.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_TubeTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Détermine le rayon du tube le long de sa longueur. Le rayon d'un anneau de section particulier est obtenu en multipliant le niveau de référence :ref:`radius<class_TubeTrailMesh_property_radius>` par la valeur de cette courbe à la distance donnée. Pour les valeurs inférieures à ``0``, les faces seront inversées. Devrait être une :ref:`Curve<class_Curve>` unitaire.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radial_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_steps** = ``8`` :ref:`🔗<class_TubeTrailMesh_property_radial_steps>`

.. rst-class:: classref-property-setget

- |void| **set_radial_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_steps**\ (\ )

Le nombre de côtés sur le tube. Par exemple, une valeur de ``5`` signifie que le tube sera pentagonal. Des valeurs plus élevées résultent en un tube plus détaillé au détriment de la performance.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_TubeTrailMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de base du tube. Le rayon d'un anneau de section particulier est obtenu en multipliant ce rayon par la valeur de :ref:`curve<class_TubeTrailMesh_property_curve>` à la distance donnée.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_TubeTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

La longueur d'une section du tube.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_rings** = ``3`` :ref:`🔗<class_TubeTrailMesh_property_section_rings>`

.. rst-class:: classref-property-setget

- |void| **set_section_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_rings**\ (\ )

Le nombre d'anneaux dans une section. La courbe :ref:`curve<class_TubeTrailMesh_property_curve>` est échantillonnée sur chaque anneau pour déterminer son rayon. Des valeurs plus élevées résultent en un tube plus détaillé au détriment de la performance.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_TubeTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Le nombre total de sections sur le tube.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
