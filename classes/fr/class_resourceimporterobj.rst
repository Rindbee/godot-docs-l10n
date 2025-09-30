:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe un modèle 3D OBJ en tant que :ref:`Mesh<class_Mesh>` ou scène indépendant.

.. rst-class:: classref-introduction-group

Description
-----------

Contrairement à :ref:`ResourceImporterScene<class_ResourceImporterScene>`, **ResourceImporterOBJ** importera une seule ressource :ref:`Mesh<class_Mesh>` par défaut au lieu d'importer une :ref:`PackedScene<class_PackedScene>`. Cela facilite l'utilisation de la ressource :ref:`Mesh<class_Mesh>` dans les nœuds qui s'attendent à des ressources :ref:`Mesh<class_Mesh>` directes, tels que :ref:`GridMap<class_GridMap>`, :ref:`GPUParticles3D<class_GPUParticles3D>` ou :ref:`CPUParticles3D<class_CPUParticles3D>`. Notez qu'il est encore possible d'enregistrer des ressources en maillage à partir de scènes 3D en utilisant la fenêtre **Paramètres avancés d'import**, peu importe le format source.

Voir aussi :ref:`ResourceImporterScene<class_ResourceImporterScene>`, qui est utilisé pour des formats 3D plus avancés tels que le glTF.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des scènes 3D <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

Si ``true``, la compression du maillage ne sera pas utilisée. Envisagez d'activer ceci si vous remarquez des artéfacts de blocs dans vos normales ou UVs du maillage, ou si vous avez des maillages plus grands que quelques milliers de mètres dans chaque direction.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

Si ``true``, génère des UV2 lors de l'import pour les pré-calculs avec :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Contrôle la taille de chaque texel sur la lightmap pré-calculée. Une plus petite valeur se traduit par des lightmaps plus précises, au coût de plus grandes tailles de lightmaps et de temps de calcul plus longs.

\ **Note :** Seulement effectif si :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

Si ``true``, génère des variantes du maillage à plus faibles détails qui seront affichées à distance pour améliorer la performance de rendu. Tous les maillages ne bénéficient pas du niveau de détail (LOD), surtout s'ils ne sont jamais rendus de loin. Désactiver cela peut réduire la taille du fichier de sortie et accélérer l'import. Voir `Niveau de détail d'un maillage (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

Si ``true``, active la génération des maillages d'ombre lors de l'import. Cela optimise le rendu des ombres sans réduire la qualité en fusionnant des sommets si possible. Cela réduit à son tour la bande passante mémoire requise pour rendre les ombres. La génération de maillage d'ombre ne supporte actuellement pas un niveau de détail plus bas que le maillage source (mais le rendu des ombres fera usage des LODs lorsque cela est pertinent).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

Si ``true``, génère les tangentes aux sommets en utilisant `Mikktspace <http://www.mikktspace.com/>`__ si le maillage source n'a pas de données de tangentes. Lorsque c'est possible, il est recommandé de laisser le logiciel de modélisation 3D générer des tangentes lors de l'export au lieu de compter sur cette option. Les tangentes sont requises pour l'affichage correct des normal maps et des height maps, ainsi que pour toutes les fonctionnalités de matériau/shader qui nécessitent des tangentes.

Si vous n'avez pas besoin de fonctionnalités de matériau qui nécessitent des tangentes, désactiver cela peut réduire la taille du fichier de sortie et accélérer l'import si le fichier 3D source ne contient pas de tangentes.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

Décale les données du maillage par la valeur spécifiée. Cela peut être utilisé pour contourner un problème de maillage désaligné sans avoir à modifier le fichier source.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

Redimensionne les données du maillage par la valeur spécifiée. Cela peut être utilisé pour contourner un problème de maillage à mauvaise échelle sans avoir à modifier le fichier source.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
