:github_url: hide

.. _class_ConcavePolygonShape3D:

ConcavePolygonShape3D
=====================

**Hérite de :** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme de maillage triangulaire 3D utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Une forme de maillage triangulaire 3D, destinée à être utilisée pour la physique. Habituellement utilisée pour fournir une forme à un :ref:`CollisionShape3D<class_CollisionShape3D>`.

Étant seulement une collection de triangles interconnectés, **ConcavePolygonShape3D** est la forme 3D la plus librement configurable. Elle peut être utilisée pour former des polyèdres de toute nature, ou même des formes qui n'entourent pas de volume. Cependant, **ConcavePolygonShape3D** est *creuse* même si les triangles interconnectés entourent effectivement une zone, ce qui la rend souvent inappropriée pour la physique ou la détection.

\ **Note :** Lorsqu'elle est utilisée pour la collision, **ConcavePolygonShape3D** est destinée à travailler avec des nœuds :ref:`CollisionShape3D<class_CollisionShape3D>` statiques comme :ref:`StaticBody3D<class_StaticBody3D>` et ne se comportera probablement pas bien pour des :ref:`CharacterBody3D<class_CharacterBody3D>` ou des :ref:`RigidBody3D<class_RigidBody3D>` dans un mode autre que Statique.

\ **Attention :** Les corps physiques qui sont petits ont la chance de traverser cette forme en se déplaçant rapidement. Cela se produit parce que sur une trame, le corps physique peut être "en dehors" de la forme, et sur le prochaine trame il peut être "dans" celle-ci. **ConcavePolygonShape3D** est creuse, donc elle ne détectera pas de collision.

\ **Performance :** En raison de sa complexité, **ConcavePolygonShape3D** est la forme de collision 3D la plus lente pour vérifier les collisions. Son utilisation devrait généralement être limitée à la géométrie de niveau. Pour de la géométrie convexe, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` devrait être utilisée. Pour les objets physiques dynamiques qui nécessite des collisions concaves, plusieurs :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`\ s peuvent être utilisés pour représenter sa collision en utilisant une décomposition convexe. Voir la documentation de :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` pour les instructions.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de tests physiques en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`backface_collision<class_ConcavePolygonShape3D_property_backface_collision>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_ConcavePolygonShape3D_method_get_faces>`\ (\ ) |const|                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_faces<class_ConcavePolygonShape3D_method_set_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConcavePolygonShape3D_property_backface_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **backface_collision** = ``false`` :ref:`🔗<class_ConcavePolygonShape3D_property_backface_collision>`

.. rst-class:: classref-property-setget

- |void| **set_backface_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_backface_collision_enabled**\ (\ )

Si défini à ``true``, les collisions se produisent des deux côtés des faces de forme concave. Sinon elles ne se produisent que le long de la normale de la face.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ConcavePolygonShape3D_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_ConcavePolygonShape3D_method_get_faces>`

Renvoie les faces de la forme de maillage triangulaire en tant que tableau de sommets. Le tableau (de longueur divisible par trois) est naturellement divisé en triplets. Chaque triplet de sommets définit un triangle.

.. rst-class:: classref-item-separator

----

.. _class_ConcavePolygonShape3D_method_set_faces:

.. rst-class:: classref-method

|void| **set_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_ConcavePolygonShape3D_method_set_faces>`

Définit les faces de la forme de maillage triangulaire depuis un tableau de sommets. Le tableau ``faces`` devrait être composé de triplets de sorte que chaque triplet de sommets définit un triangle.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
