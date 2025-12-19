:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contient des données d'illumination globale de voxel pré-calculées pour une utilisation dans un nœud :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-introduction-group

Description
-----------

**VoxelGIData** contient de l'illumination global de voxel pré-calculée pour utiliser dans un nœud :ref:`VoxelGI<class_VoxelGI>`. **VoxelGIData** offre également plusieurs propriétés pour ajuster l'apparence finale de l'illumination globale. Ces propriétés peuvent être ajustées durant l'exécution sans avoir à pré-calculer le nœud :ref:`VoxelGI<class_VoxelGI>` à nouveau.

\ **Note :** Pour éviter que les fichiers de scène basés sur du texte (``.tscn``) ne grandissent trop et deviennent lents pour charger et s'enregistrer, sauvegardez toujours **VoxelGIData** en un fichier de ressources binaire externe (``.res``) au lieu de l'intégrer à la scène. Cela peut être fait en cliquant sur la flèche descendante à côté de la ressource **VoxelGIData**, choisir **Édition**, cliquer sur l'icône de disquette en haut de l'inspecteur puis choisir **Enregistrer sous...**.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Le biais des normales à utiliser pour l'éclairage indirect et les réflexions. Des valeurs plus élevées réduisent les auto-réflexions visibles dans les matériaux non-rugueux, au prix de fuites de lumières plus visibles et d'un éclairage indirect plus plat. Pour prioriser la dissimulation des auto-réflexions sur la qualité de l'éclairage, définissez :ref:`bias<class_VoxelGIData_property_bias>` à ``0.0`` et :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` à une valeur entre ``1.0`` et ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

La plage dynamique à utiliser (``1.0`` représente une luminosité de la scène à plage dynamique basse). Des valeurs plus élevées peuvent être utilisées pour fournir un éclairage indirect plus lumineux, au coût de bandes de couleur plus visibles dans les zones sombres (à la fois dans l'éclairage indirect et dans les réflexions). Pour éviter les bandes des couleurs, il est recommandé d'utiliser la valeur la plus basse qui n'entraîne pas de coupure visible dans la lumière.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

L'énergie de l'éclairage indirect et des réflexions produits par le nœud :ref:`VoxelGI<class_VoxelGI>`. Des valeurs plus élevées résultent en un éclairage indirect plus lumineux. Si l'éclairage indirect semble trop plat, essayez de diminuer :ref:`propagation<class_VoxelGIData_property_propagation>` tout en augmentant :ref:`energy<class_VoxelGIData_property_energy>` en même temps. Voir aussi :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` qui influence la luminosité effective de l'éclairage indirect.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Si ``true``, l'éclairage de l':ref:`Environment<class_Environment>` est ignoré par le nœud\ :ref:`VoxelGI<class_VoxelGI>`. Si ``false``, l'éclairage de l':ref:`Environment<class_Environment>` est pris en compte par le nœud :ref:`VoxelGI<class_VoxelGI>`. L'éclairage de l':ref:`Environment<class_Environment>` est mis à jour en temps réel, ce qui signifie qu'il peut être changé sans avoir à re-calculer le nœud :ref:`VoxelGI<class_VoxelGI>` à nouveau.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

Le biais des normales à utiliser pour l'éclairage indirect et les réflexions. Des valeurs plus élevées réduisent les auto-réflexions visibles dans les matériaux non-rugueux, au prix de fuites de lumières plus visibles et d'un éclairage indirect plus plat. Voir aussi :ref:`bias<class_VoxelGIData_property_bias>`. Pour prioriser la dissimulation des auto-réflexions sur la qualité de l'éclairage, définissez :ref:`bias<class_VoxelGIData_property_bias>` à ``0.0`` et :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` à une valeur entre ``1.0`` et ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

Le multiplicateur à utiliser lorsque la lumière rebondit sur une surface. Des valeurs plus élevées résultent en un éclairage indirect plus lumineux. Si l'éclairage indirect semble trop plat, essayez de diminuer :ref:`propagation<class_VoxelGIData_property_propagation>` tout en augmentant :ref:`energy<class_VoxelGIData_property_energy>` en même temps. Voir aussi :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` qui influence la luminosité effective de l'éclairage indirect.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

Si ``true``, effectue deux rebonds d'éclairage indirect au lieu d'un. Cela rend l'éclairage indirect plus naturel et plus lumineux avec un petit coût de performance. La deuxième rebond est également visible dans les réflexions. Si la scène apparaît trop brillante après avoir activé :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, ajustez :ref:`propagation<class_VoxelGIData_property_propagation>` et :ref:`energy<class_VoxelGIData_property_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

Renvoies les limites des données de voxel pré-calculées en tant qu':ref:`AABB<class_AABB>`, qui devrait correspondre à :ref:`VoxelGI.size<class_VoxelGI_property_size>` après avoir été pré-calculé (qui ne contient la taille qu'en tant que :ref:`Vector3<class_Vector3>`).

\ **Note :** Si la taille a été modifiée sans pré-calculer les données VoxelGI, alors la valeur de :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` et de :ref:`VoxelGI.size<class_VoxelGI_property_size>` ne correspondront pas.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
