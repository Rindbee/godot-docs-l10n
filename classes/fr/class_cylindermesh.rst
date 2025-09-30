:github_url: hide

.. _class_CylinderMesh:

CylinderMesh
============

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe représentant un cylindrique :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Description
-----------

La classe représentant un :ref:`PrimitiveMesh<class_PrimitiveMesh>` cylindrique. Cette classe peut être utilisée pour créer des cônes en définissant la propriété :ref:`top_radius<class_CylinderMesh_property_top_radius>` ou :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` à ``0.0``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`     | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`           | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_CylinderMesh_property_cap_top>`                 | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderMesh_property_height>`                   | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CylinderMesh_property_radial_segments>` | ``64``   |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CylinderMesh_property_rings>`                     | ``4``    |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`top_radius<class_CylinderMesh_property_top_radius>`           | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CylinderMesh_property_bottom_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **bottom_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_bottom_radius>`

.. rst-class:: classref-property-setget

- |void| **set_bottom_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bottom_radius**\ (\ )

Rayon inférieur du cylindre. Si défini à ``0.0``, les faces inférieures ne seront pas générées, ce qui résulte en une forme conique. Voir aussi :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Si ``true``, génère un bouchon en bas du cylindre. Cela peut être défini à ``false`` pour accélérer la génération et le rendu lorsque le bouchon n'est jamais vu par la caméra. Voir aussi :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`.

\ **Note :** Si :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` vaut ``0.0``, la génération du bouchon est toujours ignorée même si :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Si ``true``, génère un bouchon en haut du cylindre. Cela peut être défini à ``false`` pour accélérer la génération et le rendu lorsque le bouchon n'est jamais vu par la caméra. Voir aussi :ref:`top_radius<class_CylinderMesh_property_top_radius>`.

\ **Note :** Si :ref:`top_radius<class_CylinderMesh_property_top_radius>` vaut ``0.0``, la génération du bouchon est toujours ignorée même si :ref:`cap_top<class_CylinderMesh_property_cap_top>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Pleine hauteur du cylindre.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CylinderMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Le nombre de segments radiaux sur le cylindre. Des valeurs plus élevées génèrent des cylindres/cônes plus détaillés mais peuvent réduire les performances.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``4`` :ref:`🔗<class_CylinderMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Nombre d'anneaux d’arêtes le long de la hauteur du cylindre. Changer :ref:`rings<class_CylinderMesh_property_rings>` n'a pas d'impact visuel à moins qu'un shader ou un outil de maillage procédural soit utilisé pour modifier les données de sommet. Des valeurs plus élevées résultent en davantage de sous-divisions, qui peuvent être utilisées pour créer des effets de lissage avec des shaders ou des outils de maillage procédural (au coût de la performance). Lorsque vous ne modifiez pas les données de sommet à l'aide d'un outil de maillage procédural ou d'un shader, :ref:`rings<class_CylinderMesh_property_rings>` doit être gardé à sa valeur par défaut.

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_top_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **top_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_top_radius>`

.. rst-class:: classref-property-setget

- |void| **set_top_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_top_radius**\ (\ )

Rayon supérieur du cylindre. Si défini à ``0.0``, les faces supérieures ne seront pas générées, ce qui résulte en une forme conique. Voir aussi :ref:`cap_top<class_CylinderMesh_property_cap_top>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
