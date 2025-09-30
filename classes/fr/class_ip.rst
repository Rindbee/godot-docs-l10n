:github_url: hide

.. meta::
	:keywords: dns

.. _class_IP:

IP
==

**Hérite de :** :ref:`Object<class_Object>`

Le protocole internet (IP) supporte des fonctionnalités comme la résolution DNS.

.. rst-class:: classref-introduction-group

Description
-----------

IP contient des fonctions de support pour le Protocole Internet (IP). Le support TCP/IP est dans différentes classes (voir :ref:`StreamPeerTCP<class_StreamPeerTCP>` et :ref:`TCPServer<class_TCPServer>`). IP fournit le support de résolution DNS du nom d'hôte, à la fois bloquant et sur un thread.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_cache<class_IP_method_clear_cache>`\ (\ hostname\: :ref:`String<class_String>` = ""\ )                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_resolve_item<class_IP_method_erase_resolve_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_local_addresses<class_IP_method_get_local_addresses>`\ (\ ) |const|                                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_local_interfaces<class_IP_method_get_local_interfaces>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_resolve_item_address<class_IP_method_get_resolve_item_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                        | :ref:`get_resolve_item_addresses<class_IP_method_get_resolve_item_addresses>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                            |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResolverStatus<enum_IP_ResolverStatus>`                    | :ref:`get_resolve_item_status<class_IP_method_get_resolve_item_status>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                  |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`resolve_hostname<class_IP_method_resolve_hostname>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )                       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`resolve_hostname_addresses<class_IP_method_resolve_hostname_addresses>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )   |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`resolve_hostname_queue_item<class_IP_method_resolve_hostname_queue_item>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_IP_ResolverStatus:

.. rst-class:: classref-enumeration

enum **ResolverStatus**: :ref:`🔗<enum_IP_ResolverStatus>`

.. _class_IP_constant_RESOLVER_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_NONE** = ``0``

Statut du résolveur de noms d'hôtes DNS : Aucun statut.

.. _class_IP_constant_RESOLVER_STATUS_WAITING:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_WAITING** = ``1``

Statut du résolveur de noms d'hôtes DNS : En attente.

.. _class_IP_constant_RESOLVER_STATUS_DONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_DONE** = ``2``

Statut du résolveur de noms d'hôtes DNS : Fait.

.. _class_IP_constant_RESOLVER_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_ERROR** = ``3``

Statut du résolveur de noms d'hôtes DNS : Erreur.

.. rst-class:: classref-item-separator

----

.. _enum_IP_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_IP_Type>`

.. _class_IP_constant_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_NONE** = ``0``

Type d’adresse : Aucun.

.. _class_IP_constant_TYPE_IPV4:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV4** = ``1``

Type d'adresse : Protocole internet version 4 (IPv4).

.. _class_IP_constant_TYPE_IPV6:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV6** = ``2``

Type d'adresse : Protocole internet version 6 (IPv6).

.. _class_IP_constant_TYPE_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_ANY** = ``3``

Type d'adresse : N'importe laquelle.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_IP_constant_RESOLVER_MAX_QUERIES:

.. rst-class:: classref-constant

**RESOLVER_MAX_QUERIES** = ``256`` :ref:`🔗<class_IP_constant_RESOLVER_MAX_QUERIES>`

Nombre maximal de requêtes de résolution DNS concurrentes permises, :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>` est renvoyé si dépassé.

.. _class_IP_constant_RESOLVER_INVALID_ID:

.. rst-class:: classref-constant

**RESOLVER_INVALID_ID** = ``-1`` :ref:`🔗<class_IP_constant_RESOLVER_INVALID_ID>`

La constante pour un identifiant invalide. Retourné si :ref:`RESOLVER_MAX_QUERIES<class_IP_constant_RESOLVER_MAX_QUERIES>` est dépassé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_IP_method_clear_cache:

.. rst-class:: classref-method

|void| **clear_cache**\ (\ hostname\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_IP_method_clear_cache>`

Enlève toutes les références en cache d'un hôte ``hostname``. Si aucun ``hostname`` n'est donné, toutes les adresses IP mises en cache sont supprimées.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_erase_resolve_item:

.. rst-class:: classref-method

|void| **erase_resolve_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IP_method_erase_resolve_item>`

Retire un élément donné ``id`` de la file d'attente. Ceci devrait être utilisé pour libérer une file après qu'elle ait terminé pour permettre à plus de requêtes d'arriver.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_local_addresses**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_addresses>`

Renvoie toutes les actuelles adresses IPv4 et IPv6 de l'utilisateur en un tableau.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_local_interfaces**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_interfaces>`

Renvoie tous les adaptateurs réseau en tant que tableau.

Chaque adaptateur est un dictionnaire de la forme :

::

    {
        "index": "1", # Index de l'interface
        "name": "eth0", # Nom de l'interface
        "friendly": "Ethernet One", # Un nom lisible (peut être vide).
        "addresses": ["192.168.1.101"], # Un tableau d'adresses IP associées à cette interface.
    }

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resolve_item_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_address>`

Renvoie l'adresse IP d'un nom d'hôte dans la file, compte tenu de son identifiant de file ``id``. Renvoie une chaîne vide lors d'une erreur ou si la résolution n'est pas encore arrivée (voir :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`).

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_addresses:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_resolve_item_addresses**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_addresses>`

Renvoie les adresses résolues, ou un tableau vide si une erreur s'est produite ou si la résolution n'a pas encore eu lieu (voir :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`).

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_status:

.. rst-class:: classref-method

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **get_resolve_item_status**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_status>`

Renvoie le statut d'un nom d'hôte en file d'attente en tant que constante :ref:`ResolverStatus<enum_IP_ResolverStatus>`, compte tenu de son identifiant de file ``id``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname:

.. rst-class:: classref-method

:ref:`String<class_String>` **resolve_hostname**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname>`

Renvoie l'adresse IPv4 ou IPv6 d'un nom d'hôte lorsqu'elle est résolue (méthode bloquante). Le type d'adresse renvoyé dépend de la constante :ref:`Type<enum_IP_Type>` donnée comme ``ip_type``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **resolve_hostname_addresses**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_addresses>`

Résout un nom d'hôte donné de manière bloquante. Les adresses sont renvoyées en tant que tableau d'adresses IPv4 ou IPv6 selon ``ip_type``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_queue_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **resolve_hostname_queue_item**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_queue_item>`

Crée un élément de file pour résoudre un nom d'hôte vers une adresse IPv4 ou IPv6 en fonction de la constante :ref:`Type<enum_IP_Type>` donnée comme ``ip_type``. Renvoie l'identifiant de la file d'attente si réussi, ou :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>` en cas d'erreur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
