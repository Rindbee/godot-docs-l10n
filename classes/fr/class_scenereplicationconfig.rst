:github_url: hide

.. _class_SceneReplicationConfig:

SceneReplicationConfig
======================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration pour les propriétés à synchroniser avec un :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`add_property<class_SceneReplicationConfig_method_add_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ )                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]        | :ref:`get_properties<class_SceneReplicationConfig_method_get_properties>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_property<class_SceneReplicationConfig_method_has_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`property_get_index<class_SceneReplicationConfig_method_property_get_index>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` | :ref:`property_get_replication_mode<class_SceneReplicationConfig_method_property_get_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_spawn<class_SceneReplicationConfig_method_property_get_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_sync<class_SceneReplicationConfig_method_property_get_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_watch<class_SceneReplicationConfig_method_property_get_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_replication_mode<class_SceneReplicationConfig_method_property_set_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_spawn<class_SceneReplicationConfig_method_property_set_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_sync<class_SceneReplicationConfig_method_property_set_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                  |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_watch<class_SceneReplicationConfig_method_property_set_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_property<class_SceneReplicationConfig_method_remove_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SceneReplicationConfig_ReplicationMode:

.. rst-class:: classref-enumeration

enum **ReplicationMode**: :ref:`🔗<enum_SceneReplicationConfig_ReplicationMode>`

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_NEVER** = ``0``

Ne pas garder la propriété donnée synchronisée.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ALWAYS** = ``1``

Répliquer la propriété donnée durant le traitement en envoyant constamment des mises à jour en utilisant un mode de transfert non fiable.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ON_CHANGE** = ``2``

Répliquer la propriété donnée durant le traitement en envoyant des mises à jour en utilisant un mode de transfert fiable lorsque sa valeur change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SceneReplicationConfig_method_add_property:

.. rst-class:: classref-method

|void| **add_property**\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SceneReplicationConfig_method_add_property>`

Ajoute la propriété identifiée par le chemin ``path`` donné à la liste des propriétés synchronisées, en passant option un ``index``.

\ **Note :** Pour plus de détails sur les restrictions et les limitations sur la synchronisation des propriétés, voir :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_get_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_properties**\ (\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_get_properties>`

Renvoie une liste de :ref:`NodePath<class_NodePath>`\ s des propriétés synchronisées.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_has_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_has_property>`

Renvoie ``true`` si le chemin ``path`` donné est configuré pour la synchronisation.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **property_get_index**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_property_get_index>`

Trouve l'index du chemin ``path`` donné.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_replication_mode:

.. rst-class:: classref-method

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **property_get_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_replication_mode>`

Renvoie le mode de réplication de la propriété identifiée par le chemin ``path`` donné.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_spawn:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_spawn>`

Renvoie ``true`` si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée lors de l'apparition.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_sync:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_sync>`

**Obsolète :** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Renvoie ``true`` si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée lors du traitement.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_watch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_watch>`

**Obsolète :** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Renvoie ``true`` si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée de manière fiable lorsque des changements sont détectés lors du traitement.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_replication_mode:

.. rst-class:: classref-method

|void| **property_set_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_replication_mode>`

Définit le mode de synchronisation de la propriété identifiée par le chemin ``path`` donné.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_spawn:

.. rst-class:: classref-method

|void| **property_set_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_spawn>`

Définit si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée lors de l'apparition.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_sync:

.. rst-class:: classref-method

|void| **property_set_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_sync>`

**Obsolète :** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` instead.

Définit si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée lors du traitement.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_watch:

.. rst-class:: classref-method

|void| **property_set_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_watch>`

**Obsolète :** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` instead.

Définit si la propriété identifiée par le chemin ``path`` donné est configurée pour être synchronisée de manière fiable lorsque des changements sont détectés lors du traitement.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_remove_property:

.. rst-class:: classref-method

|void| **remove_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_remove_property>`

Retire la propriété identifiée par le chemin ``path`` donné de la configuration.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
