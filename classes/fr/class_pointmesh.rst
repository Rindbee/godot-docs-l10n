:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Maillage avec une primitive de type point unique.

.. rst-class:: classref-introduction-group

Description
-----------

Un **PointMesh** est un maillage primitif composé d'un seul point. Au lieu de se baser sur des triangles, les points sont rendus en tant que rectangle unique sur l'écran avec une taille constante. Ils sont destinés à être utilisés avec des systèmes de particules, mais peuvent également être utilisés comme moyen bon marché pour rendre des sprites de billboard (par exemple dans un nuage de points).

Pour être affiché, les maillages de point doivent être utilisés avec un matériau qui a une taille de point. La taille du point peut être accédée dans un shader avec la propriété intégrée ``POINT_SIZE``, ou dans un :ref:`BaseMaterial3D<class_BaseMaterial3D>` en définissant les propriétés :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` et :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>`.

\ **Note :** Lors de l'utilisation de maillages de point, les propriétés qui affectent normalement les sommets seront ignorées, y compris :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`, et :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
