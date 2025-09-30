:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`SoftBody3D<class_SoftBody3D>`

Nœud qui instancie des meshes dans un scénario.

.. rst-class:: classref-introduction-group

Description
-----------

MeshInstance3D est un nœud qui prend une ressource :ref:`Mesh<class_Mesh>` et l'ajoute au scénario actuel en en créant une instance. Il s'agit de la classe la plus souvent utilisée pour rendre de la géométrie 3D et peut être utilisée pour instancier un seul :ref:`Mesh<class_Mesh>` dans de nombreux endroits. Cela permet de réutiliser la géométrie et d'économiser des ressources. Lorsqu'un :ref:`Mesh<class_Mesh>` doit être instancié plusieurs milliers de fois les uns proches des autres, préférez plutôt un :ref:`MultiMesh<class_MultiMesh>` dans un :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de test des matériaux 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Démo de personnage cinématique en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_MeshInstance3D_property_mesh>`         |                    |
   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`skeleton<class_MeshInstance3D_property_skeleton>` | ``NodePath("..")`` |
   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`Skin<class_Skin>`         | :ref:`skin<class_MeshInstance3D_property_skin>`         |                    |
   +---------------------------------+---------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_blend_shape_mix<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_skeleton_pose<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                       |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_convex_collision<class_MeshInstance3D_method_create_convex_collision>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ )                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_debug_tangents<class_MeshInstance3D_method_create_debug_tangents>`\ (\ )                                                                                                                          |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_multiple_convex_collisions<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_trimesh_collision<class_MeshInstance3D_method_create_trimesh_collision>`\ (\ )                                                                                                                    |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_blend_shape_by_name<class_MeshInstance3D_method_find_blend_shape_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_active_material<class_MeshInstance3D_method_get_active_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_blend_shape_count<class_MeshInstance3D_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`get_blend_shape_value<class_MeshInstance3D_method_get_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>` | :ref:`get_skin_reference<class_MeshInstance3D_method_get_skin_reference>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_surface_override_material<class_MeshInstance3D_method_get_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_surface_override_material_count<class_MeshInstance3D_method_get_surface_override_material_count>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_blend_shape_value<class_MeshInstance3D_method_set_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_surface_override_material<class_MeshInstance3D_method_set_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La ressource du :ref:`Mesh<class_Mesh>` pour cette instance.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("..")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

:ref:`NodePath<class_NodePath>` vers le :ref:`Skeleton3D<class_Skeleton3D>` associé à cette instance.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

La :ref:`Skin<class_Skin>` utilisée par cette instance.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

Prend un instantané du :ref:`ArrayMesh<class_ArrayMesh>` actuel avec toutes les blend shapes appliquées selon leurs poids actuels et le calcule et stocke dans le maillage fourni ``existing``. Si aucun maillage ``existing`` n'est fourni, un nouveau :ref:`ArrayMesh<class_ArrayMesh>` est créé, calculé et renvoyé. Les matériaux de surface du maillage ne sont pas copiés.

\ **Performance :** Les données du :ref:`Mesh<class_Mesh>` doivent êtres reçues du GPU, retardant ainsi le :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

Takes a snapshot of the current animated skeleton pose of the skinned mesh and bakes it to the provided ``existing`` mesh. If no ``existing`` mesh is provided a new :ref:`ArrayMesh<class_ArrayMesh>` is created, baked, and returned. Requires a skeleton with a registered skin to work. Blendshapes are ignored. Mesh surface materials are not copied.

\ **Performance:** :ref:`Mesh<class_Mesh>` data needs to be retrieved from the GPU, stalling the :ref:`RenderingServer<class_RenderingServer>` in the process.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

Cette aide crée un nœud :ref:`StaticBody3D<class_StaticBody3D>` enfant avec une forme de collision :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` calculée à partir de la géométrie du maillage. Elle est principalement utilisée pour les essais.

Si ``clean`` vaut ``true`` (par défaut), les doublons et les sommets intérieurs sont automatiquement supprimés. Vous pouvez le définir à ``false`` pour rendre le processus plus rapide si vous n'en avez pas besoin.

Si ``simplify`` vaut ``true``, la géométrie pourra être simplifiée pour réduire la quantité de sommets. Désactivé par défaut.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

Cette aide crée un nœud **MeshInstance3D** enfant avec des manipulateurs à chaque sommet calculés à partir de la géométrie du maillage. Elle est principalement utilisée pour les essais.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

Cet assistant crée un nœuds enfant :ref:`StaticBody3D<class_StaticBody3D>` avec plusieurs formes de collision :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` calculées à partir de la géométrie du maillage via la décomposition convexe. L'opération de décomposition convexe peut être contrôlée à partir des paramètres optionnels ``settings``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

Cette aide crée un nœud :ref:`StaticBody3D<class_StaticBody3D>` enfant avec une forme de collision :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` calculée à partir de la géométrie du maillage. Elle est principalement utilisée pour les essais.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

Renvoie l'index de la blend shape avec le nom ``name`` donné. Renvoie ``-1`` si aucune blend shape avec ce nom n'existe, y compris lorsque :ref:`mesh<class_MeshInstance3D_property_mesh>` est ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

Renvoie le :ref:`Material<class_Material>` qui sera utilisé par le :ref:`Mesh<class_Mesh>` lors du dessin. Ceci peut renvoyer le :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, le :ref:`Material<class_Material>` de surface redéfini de ce **MeshInstance3D**, ou le :ref:`Material<class_Material>` de surface défini dans le maillage :ref:`mesh<class_MeshInstance3D_property_mesh>`. Par exemple, si :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` est utilisé, toutes les surfaces renverront le matériau redéfini.

Renvoie ``null`` si aucun matériau n'est actif, y compris lorsque :ref:`mesh<class_MeshInstance3D_property_mesh>` est ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

Renvoie le nombre de blend shapes disponibles. Produit une erreur si :ref:`mesh<class_MeshInstance3D_property_mesh>` est ``null``.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

Renvoie la valeur de la blend shape à l'index ``blend_shape_idx`` donné. Renvoie ``0.0`` et produit une erreur si :ref:`mesh<class_MeshInstance3D_property_mesh>` est ``null`` ou n'a pas de blend shape à cet index.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

Renvoie la :ref:`SkinReference<class_SkinReference>` interne contenant le :ref:`RID<class_RID>` du squelette attaché à cet RID. Voir aussi :ref:`Resource.get_rid()<class_Resource_method_get_rid>`, :ref:`SkinReference.get_skeleton()<class_SkinReference_method_get_skeleton>`, et :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

Renvoie le :ref:`Material<class_Material>` de redéfinition pour la ``surface`` spécifiée de la ressource :ref:`Mesh<class_Mesh>`. Voir aussi :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

\ **Note :** Ceci renvoie le :ref:`Material<class_Material>` associé aux propriétés de redéfinition du matériau de surface du **MeshInstance3D**, et non le matériau dans la ressource :ref:`Mesh<class_Mesh>`. Pour obtenir le matériau dans la ressource :ref:`Mesh<class_Mesh>`, utilisez :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

Renvoie le nombre de matériaux de surface redéfinis. Ceci est équivalent à :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`. Voir aussi :ref:`get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

Définit la valeur de la blend shape à l'index ``blend_shape_idx`` à la valeur ``value``. Produit une erreur si :ref:`mesh<class_MeshInstance3D_property_mesh>` est ``null`` ou n'a pas de blend shape à cet index.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

Définit le matériau de redéfinition ``material`` pour la ``surface`` spécifiée de la ressource :ref:`Mesh<class_Mesh>`. Ce matériau est associé à ce **MeshInstance3D** plutôt qu'à son maillage :ref:`mesh<class_MeshInstance3D_property_mesh>`.

\ **Note :** Ceci renvoie le :ref:`Material<class_Material>` associé aux propriétés de redéfinition du matériau de surface du **MeshInstance3D**, et non le matériau dans la ressource :ref:`Mesh<class_Mesh>`. Pour obtenir le matériau dans la ressource :ref:`Mesh<class_Mesh>`, utilisez :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>` à la place.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
