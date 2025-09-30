:github_url: hide

.. _class_WorldBoundaryShape3D:

WorldBoundaryShape3D
====================

**Hérite de :** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme de limite de monde 3D (demi-espace) utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Une forme de limite de monde 3D, destinée à être utilisée pour la physique. **WorldBoundaryShape3D** fonctionne comme un plan infini qui force tous les corps physiques à rester au-dessus de lui. La normale du plan :ref:`plane<class_WorldBoundaryShape3D_property_plane>` détermine quelle direction est considérée comme "au-dessus" et dans l'éditeur, la ligne au-dessus du plan représente cette direction. Elle peut par exemple être utilisée pour des sols plats infinis.

\ **Note :** Lorsque le moteur de physique est défini à **Jolt Physics** dans les paramètres du projet (:ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`), **WorldBoundaryShape3D** a une taille finie (centrée à l'origine de la forme). Cela peut être ajusté en changeant :ref:`ProjectSettings.physics/jolt_physics_3d/limits/world_boundary_shape_size<class_ProjectSettings_property_physics/jolt_physics_3d/limits/world_boundary_shape_size>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------+-----------------------+
   | :ref:`Plane<class_Plane>` | :ref:`plane<class_WorldBoundaryShape3D_property_plane>` | ``Plane(0, 1, 0, 0)`` |
   +---------------------------+---------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_WorldBoundaryShape3D_property_plane:

.. rst-class:: classref-property

:ref:`Plane<class_Plane>` **plane** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_WorldBoundaryShape3D_property_plane>`

.. rst-class:: classref-property-setget

- |void| **set_plane**\ (\ value\: :ref:`Plane<class_Plane>`\ )
- :ref:`Plane<class_Plane>` **get_plane**\ (\ )

Le :ref:`Plane<class_Plane>` utilisé par le **WorldBoundaryShape3D** pour les collisions.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
