:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fournit de l'occlusion culling pour les nœuds 3D, ce qui améliore les performances dans les zones fermées.

.. rst-class:: classref-introduction-group

Description
-----------

L'occlusion culling peut améliorer les performances de rendu dans les zones fermées/semi-ouvertes en cachant la géométrie qui est cachée par d'autres objets.

Le système d'occlusion culling est essentiellement statique. Des **OccluderInstance3D**\ s peuvent être déplacés ou cachés durant l'exécution, mais ceci déclenchera un re-calcul de fond qui peut prendre plusieurs trames. Il est recommandé de ne déplacer les **OccluderInstance3D** que sporadiquement (p. ex. à des fins de production procédurale), plutôt que de le faire à chaque trame.

Le système d'occlusion culling fonctionne en rendant les occulteurs sur le CPU en parallèle en utilisant `Embree <https://www.embree.org/>`__, dessinant le résultat vers un buffer à basse résolution, puis en utilisant ceci pour retirer les nœuds 3D individuellement. Dans l'éditeur 3D, vous pouvez prévisualiser le buffer de l'occlusion culling en choisissant **Perspective > Afficher avancés... > Buffer de l'occlusion culling** dans le coin supérieur gauche du viseur 3D. La qualité du buffer de l'occlusion culling peut être ajustée dans les paramètres du projet.

\ **Pré-calculer :** Sélectionnez un nœud **OccluderInstance3D**, puis utilisez le bouton **Précalculer les occulteurs** en haut de l'éditeur 3D. Seuls les matériaux opaques seront pris en compte, les matériaux transparents (mélange alpha ou test alpha) seront ignorés par la génération d'occulteur.

\ **Note :** L'occlusion culling n'est effective que si :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` vaut ``true``. Activer l'occlusion culling a un coût sur le CPU. Activez seulement l'occlusion culling si vous envisagez réellement de l'utiliser. Les grandes scènes ouvertes avec peu ou pas d'objets bloquant la vue ne bénéficieront généralement pas beaucoup de l'occlusion culling. Les grandes scènes ouvertes profitent généralement davantage des maillage LOD et des plages de visibilité (:ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` et :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`) par rapport à l'occlusion culling.

\ **Note :** En raison des contraintes de mémoire, l'occlusion culling n'est pas supportée par défaut dans les modèles d'exportation Web. Elle peut être activée en compilant des modèles d'exportation Web personnalisés avec ``module_raycast_enabled=yes``.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Les couches visuelles à prendre en compte pour le pré-calcul des occulteurs. Seuls les :ref:`MeshInstance3D<class_MeshInstance3D>`\ s dont :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` correspond à ce :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` seront inclus dans le maillage d'occulteur généré. Par défaut, tous les objets avec des matériaux *opaque* sont pris en compte pour le pré-calcul de l'occulteur.

Pour améliorer les performances et éviter les artéfacts, il est recommandé d'exclure les objets dynamiques, les petits objets et autres accessoires du processus de pré-calcul en les déplaçant sur une couche visuelle distincte et en excluant cette couche dans :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

La distance de simplification à utiliser pour simplifier le polygone d'occulteur généré (en unités 3D). Des valeurs plus élevées résultent en un maillage d'occulteur moins détaillé, ce qui améliore les performances mais réduit la précision de l'occlusion culling.

La géométrie de l'occulteur est rendue sur le CPU, il est donc important de garder sa géométrie aussi simple que possible. Comme le buffer est rendu à basse résolution, les maillages d'occulteur moins détaillés fonctionnent généralement toujours bien. La valeur par défaut est assez agressive, de sorte que vous pouvez avoir besoin de la diminuer si vous rencontrez des faux négatifs (objets étant considérés comme occlus même s'ils sont visibles par la caméra). Une valeur de ``0.01`` agira de façon conservatrice et gardera la géométrie *perceptuellement* non affectée dans le buffer de l'occlusion culling. Selon la scène, une valeur de ``0.01`` peut encore simplifier le maillage de façon notable par rapport à la désactivation totale de la simplification.

Définir ceci à ``0.0`` désactive la simplification entièrement, mais les sommets à la même position exacte seront toujours fusionnés. Le maillage sera également ré-indexé pour réduire à la fois le nombre de sommets et d'indices.

\ **Note :** Ceci utilise la bibliothèque `meshoptimizer <https://meshoptimizer.org/>`__ sous le capot, semblable à la génération de LOD.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

La ressource d'occulteur pour ce **OccluderInstance3D**. Vous pouvez générer une ressource d'occulteur en sélectionnant un nœud **OccluderInstance3D** puis en utilisant le bouton **Pré-calculer les occulteurs** en haut de l'éditeur.

Vous pouvez également dessiner votre propre polygone occulteur 2D en ajoutant une nouvelle ressource :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` à la propriété :ref:`occluder<class_OccluderInstance3D_property_occluder>` dans l'inspecteur.

Sinon, vous pouvez sélectionner un occulteur primitif à utiliser : :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>` ou :ref:`SphereOccluder3D<class_SphereOccluder3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

Renvoie si la couche spécifiée de :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
