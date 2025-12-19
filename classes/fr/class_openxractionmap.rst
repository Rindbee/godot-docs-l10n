:github_url: hide

.. _class_OpenXRActionMap:

OpenXRActionMap
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collection de ressources :ref:`OpenXRActionSet<class_OpenXRActionSet>` et :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` pour le module OpenXR.

.. rst-class:: classref-introduction-group

Description
-----------

OpenXR utilise un système d'action similaire au système d'Input map de Godot pour lier les entrées et les sorties sur différents types de contrôleurs XR à des actions nommées. OpenXR spécifie plus de détails sur ces entrées et sorties que Godot supporte.

Une autre distinction importante est qu'OpenXR n'offre aucun contrôle sur ces associations. Les associations que nous enregistrons sont des suggestions, c'est au runtime XR d'offrir aux utilisateurs la possibilité de changer ces associations. Cela permet au runtime XR de combler les lacunes si du nouveau matériel est disponible.

L'action map doit donc être chargée au démarrage et ne peut être changée après. Cette ressource est un conteneur pour toute l'action map.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`action_sets<class_OpenXRActionMap_property_action_sets>`                   | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`interaction_profiles<class_OpenXRActionMap_property_interaction_profiles>` | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_action_set<class_OpenXRActionMap_method_add_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                                    |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_interaction_profile<class_OpenXRActionMap_method_add_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ )       |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`create_default_action_sets<class_OpenXRActionMap_method_create_default_action_sets>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`find_action_set<class_OpenXRActionMap_method_find_action_set>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`find_interaction_profile<class_OpenXRActionMap_method_find_interaction_profile>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`get_action_set<class_OpenXRActionMap_method_get_action_set>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_action_set_count<class_OpenXRActionMap_method_get_action_set_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`get_interaction_profile<class_OpenXRActionMap_method_get_interaction_profile>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_interaction_profile_count<class_OpenXRActionMap_method_get_interaction_profile_count>`\ (\ ) |const|                                                                          |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_action_set<class_OpenXRActionMap_method_remove_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                              |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_interaction_profile<class_OpenXRActionMap_method_remove_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRActionMap_property_action_sets:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **action_sets** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_action_sets>`

.. rst-class:: classref-property-setget

- |void| **set_action_sets**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_action_sets**\ (\ )

Collection d':ref:`OpenXRActionSet<class_OpenXRActionSet>`\ s qui font partie de cette action map.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_property_interaction_profiles:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **interaction_profiles** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_interaction_profiles>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profiles**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_interaction_profiles**\ (\ )

Collection d':ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ s qui font partie de cette action map.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRActionMap_method_add_action_set:

.. rst-class:: classref-method

|void| **add_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_action_set>`

Ajouter un ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_add_interaction_profile:

.. rst-class:: classref-method

|void| **add_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_interaction_profile>`

Ajouter un profil d'interaction.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_create_default_action_sets:

.. rst-class:: classref-method

|void| **create_default_action_sets**\ (\ ) :ref:`🔗<class_OpenXRActionMap_method_create_default_action_sets>`

Configure cet ensemble d'actions avec nos actions par défaut.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **find_action_set**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_action_set>`

Récupère un ensemble d'actions par nom.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **find_interaction_profile**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_interaction_profile>`

Cherche un profil d'interaction par son nom (chemin).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set>`

Récupère l'ensemble d'actions à cet index.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_set_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set_count>`

Récupère le nombre d'ensembles d'actions dans notre action map.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **get_interaction_profile**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile>`

Obtient le profil d'interaction à cet indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interaction_profile_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile_count>`

Récupère le nombre de profils d'interaction dans notre action map.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_action_set:

.. rst-class:: classref-method

|void| **remove_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_action_set>`

Supprime un ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_interaction_profile:

.. rst-class:: classref-method

|void| **remove_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_interaction_profile>`

Supprime un profil d'interaction.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
