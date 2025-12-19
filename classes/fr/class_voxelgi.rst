:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sonde d’éclairage global (GI) en temps réel.

.. rst-class:: classref-introduction-group

Description
-----------

Les **VoxelGI**\ s sont utilisées pour fournir une lumière indirecte en temps réel et en haute qualité à des scènes. Elles pré-calculent les effets d'objets qui émettent de la lumière et l'effet de la géométrie statique pour simuler le comportement de lumières complexes en temps réel. Les **VoxelGI**\ s doivent être pré-calculées avant d'avoir un effet visible. Cependant, mais une fois calculées, les objets dynamiques recevront d'elles de la lumière. De plus, des lumières peuvent être entièrement dynamiques ou pré-calculées.

\ **Note :** **VoxelGI** n'est prise en charge que dans la méthode de rendu Forward+, pas Mobile ou Compatibilité.

\ **Génération procédurale :** **VoxelGI** peut être pré-calculée dans un projet exporté, ce qui la rend adaptée pour des niveaux générés de manière procédurale ou construits par l'utilisateur tant que la géométrie est générée à l'avance. Pour les jeux où la géométrie est générée à tout moment du gameplay, la SDFGI est plus adaptée (voir :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Performance :** **VoxelGI** est relativement exigeante sur le GPU et n'est pas adaptée au matériel d'entrée de gamme tel que les cartes graphiques intégrées (utilisez plutôt :ref:`LightmapGI<class_LightmapGI>`). Pour améliorer les performances, ajustez :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>` et activez :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>` dans les Paramètres du projet. Pour fournir une solution de repli au matériel d'entrée de gamme, envisagez d'ajouter une option pour désactiver **VoxelGI** dans les menus d'options de votre projet. Un nœud **VoxelGI** peut être désactivé en le cachant..

\ **Note :** Les maillages doivent avoir des murs suffisamment épais pour éviter les fuites de lumière à travers (évitez les murs qui n'ont qu'un seul côté). Pour les niveaux intérieurs, enfermez votre géométrie du niveau dans une boîte suffisamment grande et bouchez les trous pour fermer le maillage. Pour éviter encore plus les fuites de lumière, vous pouvez également placer stratégiquement des nœuds :ref:`MeshInstance3D<class_MeshInstance3D>` temporaires avec leur :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` défini à :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Ces nœuds temporaires peuvent ensuite être cachés après avoir pré-calculé le nœud **VoxelGI**.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser l'illumination globale Voxel <../tutorials/3d/global_illumination/using_voxel_gi>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

Utilise 64 subdivisions. C’est le réglage de qualité la plus basse, mais le plus rapide. Utilisez-le si vous le pouvez, mais surtout utilisez-le sur du matériel bas de gamme.

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

Utilise 128 subdivisions. Il s’agit du paramètre de qualité par défaut.

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

Utilise 256 subdivisions.

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

Utilise 64 subdivisions. C’est le réglage de qualité la plus haute, mais le plus lent. Le GPU peut même ramer sur les appareils peu puissants.

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

Représente la taille de l'énumération :ref:`Subdiv<enum_VoxelGI_Subdiv>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La ressource :ref:`CameraAttributes<class_CameraAttributes>` qui précise les niveaux d'exposition auxquels pré-calculer. Les propriétés d'auto-exposition et de non-exposition seront ignorées. Les paramètres d'exposition devraient être utilisés pour réduire la plage dynamique présente lors du pré-calcul. Si l'exposition est trop élevée, le **VoxelGI** aura des artéfacts de bande ou peut avoir des artéfacts de sur-exposition.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

La ressource :ref:`VoxelGIData<class_VoxelGIData>` qui contient les données de ce **VoxelGI**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the area covered by the **VoxelGI**. This must be ``1.0`` or greater on each axis.

\ **Note:** If you make the size larger without increasing the number of subdivisions with :ref:`subdiv<class_VoxelGI_property_subdiv>`, the size of each cell will increase and result in less detailed lighting.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

Nombre de sous-divisions de la grille sur laquelle le **VoxelGI** opère. Un nombre plus élevé résulte en un détail plus fin et donc une qualité visuelle plus élevée, tandis que les nombres plus bas résultent en une meilleure performance.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

Pré-calcul l'effet de toutes les :ref:`GeometryInstance3D<class_GeometryInstance3D>`\ s marquées avec :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` et les :ref:`Light3D<class_Light3D>`\ s marquées avec :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` ou :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>`. Si ``create_visual_debug`` vaut ``true``, après avoir pré-calculé la lumière, cela générera un :ref:`MultiMesh<class_MultiMesh>` qui a un cube représentant chaque cellule solide avec chaque cube coloré à la couleur d'albedo de la cellule. Ceci peut être utilisé pour visualiser les données de **VoxelGI** et déboguer toute problème qui pourrait se produire.

\ **Note :** :ref:`bake()<class_VoxelGI_method_bake>` fonctionne depuis l'éditeur et dans des projets exportés. Cela le rend adapté aux niveaux générés procéduralement ou construits par l'utilisateur. Pré-calculer un noeud **VoxelGI** prend généralement de 5 à 20 secondes dans la plupart des scènes. Réduire :ref:`subdiv<class_VoxelGI_property_subdiv>` peut accélérer le calcul.

\ **Note :** Les :ref:`GeometryInstance3D<class_GeometryInstance3D>`\ s et les :ref:`Light3D<class_Light3D>`\ s doivent être entièrement prêtes avant que :ref:`bake()<class_VoxelGI_method_bake>` soit appelée. Si vous créez de façon procédurale celles-ci et que certains maillages ou lumières sont manquants de votre **VoxelGI** pré-calculée, utilisez ``call_deferred("bake")`` au lieu d'appeler :ref:`bake()<class_VoxelGI_method_bake>` directement.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

Appelle :ref:`bake()<class_VoxelGI_method_bake>` avec ``create_visual_debug`` activé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
