:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe de base pour étendre :ref:`AnimationRootNode<class_AnimationRootNode>` en GDScript, C#, ou C++.

.. rst-class:: classref-introduction-group

Description
-----------

**AnimationNodeExtension** expose les API d':ref:`AnimationRootNode<class_AnimationRootNode>` pour permettre aux utilisateurs de l'étendre en GDScript, C# ou C++. Cette classe n'est pas destinée à être utilisée directement, mais à être étendue par d'autres classes. Elle est utilisée pour créer des nœuds personnalisés pour le système :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

Une version de la méthode :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>` qui est censée être redéfinie par des nœuds personnalisés. Elle renvoie un :ref:`PackedFloat32Array<class_PackedFloat32Array>` avec les données d'animation traitées.

Le paramètre :ref:`PackedFloat64Array<class_PackedFloat64Array>` contient les informations de lecture, contenant les valeurs suivantes encodées en nombres à virgule flottante (dans l'ordre) : temps de lecture et delta, temps de début et de fin, si une recherche a été demandée (encodé en tant que flottant supérieur à ``0``), si la demande de recherche a été demandée de manière externe (encodé en tant que flottant supérieur à ``0``, l'actuelle énumération :ref:`LoopedFlag<enum_Animation_LoopedFlag>` (encodé en tant que flottant), et le poids du mélange courant.

La fonction doit renvoyer un :ref:`PackedFloat32Array<class_PackedFloat32Array>` de l'information temporelle du nœud, contenant les valeurs suivantes (dans l'ordre) : longueur d'animation, position temporelle, delta, :ref:`LoopMode<enum_Animation_LoopMode>` (encodé en tant que flottant), si l'animation est sur le point de se terminer (encodé en tant que flottant supérieur à ``0``) et si l'animation est infinie (encodé en tant que flottant supérieur à ``0``). Toutes les valeurs doivent être incluses dans le tableau renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

Renvoie le temps restant de l'animation pour l'info de nœud donnée. Pour les animations qui bouclent, elle ne renverra que le temps restant si ``break_loop`` vaut ``true``, une large valeur entière sera renvoyée sinon..

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

Renvoie ``true`` si l'animation pour le ``node_info`` donné boucle.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
