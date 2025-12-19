:github_url: hide

.. _class_PlaceholderMesh:

PlaceholderMesh
===============

**Hérite de :** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe placeholder pour un maillage.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe est utilisée lors du chargement d'un projet qui utilise une sous-classe de :ref:`Mesh<class_Mesh>` dans deux cas :

- Lors de l'exécution du projet exporté en mode serveur dédié, seules les dimensions de la texture sont conservées (comme elles peuvent être utilisées à des fins de gameplay ou de positionnement d'autres éléments). Cela permet de réduire considérablement la taille du PCK exporté.

- Lorsque cette sous-classe est manquante en raison de l'utilisation d'une autre version du moteur ou d'une autre compilation (par ex. avec des modules désactivés).

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_PlaceholderMesh_property_aabb>` | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +-------------------------+--------------------------------------------------+----------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PlaceholderMesh_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_PlaceholderMesh_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

La plus petite :ref:`AABB<class_AABB>` englobant ce maillage dans l'espace local.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
