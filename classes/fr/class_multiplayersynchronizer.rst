:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerSynchronizer:

MultiplayerSynchronizer
=======================

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Synchronise des propriétés de l'autorité multijoueur vers les pairs distants.

.. rst-class:: classref-introduction-group

Description
-----------

Par défaut, **MultiplayerSynchronizer** synchronise les propriétés configurées vers tous les pairs.

La visibilité peut être gérée directement avec :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` ou au besoin avec :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` et :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

Les :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`\ s géreront les nœuds en fonction de la visibilité des synchroniseurs tant que le nœud à :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` ait été spawné par un MultiplayerSpawner..

En interne, **MultiplayerSynchronizer** utilise :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` pour notifier le démarrage de la synchronisation en passant :ref:`Node<class_Node>` à :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` dans ``object`` et lui-même dans ``configuration``, et utilise :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` pour notifier la fin de la synchronisation de la même manière.

\ **Note :** La synchronisation n'est pas supportée pour les propriétés de type :ref:`Object<class_Object>`, comme :ref:`Resource<class_Resource>`. Les propriétés qui sont uniques à chaque pair, comme les identifiants d'instance d':ref:`Object<class_Object>`\ s (voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`) ou les :ref:`RID<class_RID>`\ s, ne fonctionneront aussi pas dans la synchronisation.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`delta_interval<class_MultiplayerSynchronizer_property_delta_interval>`                 | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>`           | ``true``           |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`                    | :ref:`replication_config<class_MultiplayerSynchronizer_property_replication_config>`         |                    |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`replication_interval<class_MultiplayerSynchronizer_property_replication_interval>`     | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                | :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>`                           | ``NodePath("..")`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` | :ref:`visibility_update_mode<class_MultiplayerSynchronizer_property_visibility_update_mode>` | ``0``              |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_visibility_filter<class_MultiplayerSynchronizer_method_add_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_visibility_for<class_MultiplayerSynchronizer_method_get_visibility_for>`\ (\ peer\: :ref:`int<class_int>`\ ) |const|                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_visibility_filter<class_MultiplayerSynchronizer_method_remove_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_visibility_for<class_MultiplayerSynchronizer_method_set_visibility_for>`\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`update_visibility<class_MultiplayerSynchronizer_method_update_visibility>`\ (\ for_peer\: :ref:`int<class_int>` = 0\ )                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_MultiplayerSynchronizer_signal_delta_synchronized:

.. rst-class:: classref-signal

**delta_synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_delta_synchronized>`

Émis quand un nouvel état de synchronisation delta est reçu par ce synchroniseur après que les propriétés aient été mises à jour.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_synchronized:

.. rst-class:: classref-signal

**synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_synchronized>`

Émis quand un nouvel état de synchronisation est reçu par ce synchroniseur après que les propriétés aient été mises à jour.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ for_peer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_visibility_changed>`

Émis quand la visibilité du pair ``for_peer`` est mise à jour. Voir :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_MultiplayerSynchronizer_VisibilityUpdateMode:

.. rst-class:: classref-enumeration

enum **VisibilityUpdateMode**: :ref:`🔗<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_IDLE** = ``0``

Les filtres de visibilité sont mis à jour pendant les trames de traitement (voir :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_PHYSICS** = ``1``

Les filtres de visibilité sont mis à jour pendant les trames de physique (voir :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_NONE** = ``2``

Les filtres de visibilité ne sont pas mis à jour automatiquement et doivent être mis à jour manuellement en appelant :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MultiplayerSynchronizer_property_delta_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **delta_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_delta_interval>`

.. rst-class:: classref-property-setget

- |void| **set_delta_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_delta_interval**\ (\ )

Intervalle de temps entre les synchronisations delta. Utilisé lorsque la réplication est définie à :ref:`SceneReplicationConfig.REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>`. Si défini à ``0.0`` (la valeur par défaut), les synchronisations delta se produisent à chaque trame de traitement réseau.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_public_visibility:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **public_visibility** = ``true`` :ref:`🔗<class_MultiplayerSynchronizer_property_public_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_public**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visibility_public**\ (\ )

Indique si la synchronisation devrait être visible par défaut pour tous les pairs. Voir :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` et :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` pour des moyens de configurer des options de visibilité plus détaillées.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_config:

.. rst-class:: classref-property

:ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **replication_config** :ref:`🔗<class_MultiplayerSynchronizer_property_replication_config>`

.. rst-class:: classref-property-setget

- |void| **set_replication_config**\ (\ value\: :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`\ )
- :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **get_replication_config**\ (\ )

Ressource contenant les propriétés à synchroniser.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **replication_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_replication_interval>`

.. rst-class:: classref-property-setget

- |void| **set_replication_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_replication_interval**\ (\ )

Intervalle de temps entre les synchronisations. Utilisé lorsque la réplication est définie à :ref:`SceneReplicationConfig.REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>`. Si défini à ``0.0`` (la valeur par défaut), les synchronisations se produisent à chaque trame de traitement réseau.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("..")`` :ref:`🔗<class_MultiplayerSynchronizer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

Chemin du nœud auquel les propriétés répliquées sont relatives.

Si :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` a été spawné par un :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`, le nœud sera également spawné et despawné en fonction des options de visibilité de ce synchroniseur.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_visibility_update_mode:

.. rst-class:: classref-property

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **visibility_update_mode** = ``0`` :ref:`🔗<class_MultiplayerSynchronizer_property_visibility_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_update_mode**\ (\ value\: :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`\ )
- :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **get_visibility_update_mode**\ (\ )

Spécifie quand les filtres de visibilité sont mis à jour.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MultiplayerSynchronizer_method_add_visibility_filter:

.. rst-class:: classref-method

|void| **add_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_add_visibility_filter>`

Ajoute un filtre de visibilité des pairs pour ce synchroniseur.

\ ``filter`` devrait prendre un identifiant :ref:`int<class_int>` de pair et renvoyer un :ref:`bool<class_bool>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_get_visibility_for:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_visibility_for**\ (\ peer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSynchronizer_method_get_visibility_for>`

Demande la visibilité actuelle du pair ``peer``.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_remove_visibility_filter:

.. rst-class:: classref-method

|void| **remove_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_remove_visibility_filter>`

Retire un filtre de visibilité des pairs de ce synchroniseur.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_set_visibility_for:

.. rst-class:: classref-method

|void| **set_visibility_for**\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_set_visibility_for>`

Définit la visibilité du pair ``peer`` à ``visible``. Si ``peer`` vaut ``0``, la valeur de :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>` sera mise à jour à la place.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_update_visibility:

.. rst-class:: classref-method

|void| **update_visibility**\ (\ for_peer\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_update_visibility>`

Met à jour la visibilité de ``for_peer`` selon les filtres de visibilité. Si ``for_peer`` vaut ``0`` (par défaut), toutes les visibilités des pairs sont mises à jour.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
