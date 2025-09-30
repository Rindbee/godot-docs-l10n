:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MultiMeshInstance3D.xml.

.. _class_MultiMeshInstance3D:

MultiMeshInstance3D
===================

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le nœud qui instancie un :ref:`MultiMesh<class_MultiMesh>`.

.. rst-class:: classref-introduction-group

Description
-----------

**MultiMeshInstance3D** est un nœud spécialisé pour instancier des :ref:`GeometryInstance3D<class_GeometryInstance3D>`\ s selon une ressource :ref:`MultiMesh<class_MultiMesh>`.

Ceci est utile pour optimiser le rendu d'une grande quantité d'instances avec un maillage donné (par exemple des arbres dans une forêt ou des brins d'herbe).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation de MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`Optimisation à l’aide de MultiMeshes <../tutorials/performance/using_multimesh>`

- :doc:`Animer des milliers de poissons avec MultiMeshInstance <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance3D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MultiMeshInstance3D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance3D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

La ressource :ref:`MultiMesh<class_MultiMesh>` qui sera utilisée et partagée entre toutes les instances du **MultiMeshInstance3D**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
