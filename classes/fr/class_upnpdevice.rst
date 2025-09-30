:github_url: hide

.. _class_UPNPDevice:

UPNPDevice
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Périphérique Universal Plug and Play (UPnP).

.. rst-class:: classref-introduction-group

Description
-----------

Appareil UPNP (Universal Plug And Play). Voir :ref:`UPNP<class_UPNP>` pour les fonctions UPNP de découverte et utilitaires. Fournit un accès de bas niveau aux commandes UPNP. Permet de gérer les cartes de ports (suivi de port) et de demander des informations réseau sur l'appareil (comme l'adresse IP locale et externe, et le statut). Notez que les méthodes de cette classe sont synchrones et bloquent le fil d'exécution dans lequel ces méthodes sont appelées.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`description_url<class_UPNPDevice_property_description_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_control_url<class_UPNPDevice_property_igd_control_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_our_addr<class_UPNPDevice_property_igd_our_addr>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_service_type<class_UPNPDevice_property_igd_service_type>` | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` | :ref:`igd_status<class_UPNPDevice_property_igd_status>`             | ``9``  |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`service_type<class_UPNPDevice_property_service_type>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`add_port_mapping<class_UPNPDevice_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`delete_port_mapping<class_UPNPDevice_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_gateway<class_UPNPDevice_method_is_valid_gateway>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`query_external_address<class_UPNPDevice_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_UPNPDevice_IGDStatus:

.. rst-class:: classref-enumeration

enum **IGDStatus**: :ref:`🔗<enum_UPNPDevice_IGDStatus>`

.. _class_UPNPDevice_constant_IGD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_OK** = ``0``

D'accord.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_ERROR** = ``1``

Erreur HTTP.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_EMPTY:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_EMPTY** = ``2``

Réponse HTTP vide.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_URLS:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_URLS** = ``3``

**Obsolète :** This value is no longer used.

La réponse retournée ne contenait pas d’URL.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_IGD:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_IGD** = ``4``

Ce n'est pas un IGD valide.

.. _class_UPNPDevice_constant_IGD_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_DISCONNECTED** = ``5``

Déconnecté.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_DEVICE:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_DEVICE** = ``6``

Périphérique inconnu.

.. _class_UPNPDevice_constant_IGD_STATUS_INVALID_CONTROL:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_INVALID_CONTROL** = ``7``

Contrôle invalide.

.. _class_UPNPDevice_constant_IGD_STATUS_MALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_MALLOC_ERROR** = ``8``

**Obsolète :** This value is no longer used.

Erreur d’allocation de mémoire.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_ERROR** = ``9``

Erreur inconnue.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_UPNPDevice_property_description_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **description_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_description_url>`

.. rst-class:: classref-property-setget

- |void| **set_description_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description_url**\ (\ )

URL de la description de l’appareil.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_control_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_control_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_control_url>`

.. rst-class:: classref-property-setget

- |void| **set_igd_control_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_control_url**\ (\ )

URL de contrôle IDG.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_our_addr:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_our_addr** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_our_addr>`

.. rst-class:: classref-property-setget

- |void| **set_igd_our_addr**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_our_addr**\ (\ )

L'adresse locale sur le réseau de la machine qui se connecte à ce **UPNPDevice**.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_igd_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_service_type**\ (\ )

Type de service IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_status:

.. rst-class:: classref-property

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **igd_status** = ``9`` :ref:`🔗<class_UPNPDevice_property_igd_status>`

.. rst-class:: classref-property-setget

- |void| **set_igd_status**\ (\ value\: :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>`\ )
- :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **get_igd_status**\ (\ )

Status IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_service_type**\ (\ )

Type de service.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_UPNPDevice_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNPDevice_method_add_port_mapping>`

Ajoute une carte des ports pour faire passer le port externe donné sur ce **UPNPDevice** pour le protocole donné à la machine locale. Voir :ref:`UPNP.add_port_mapping()<class_UPNP_method_add_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNPDevice_method_delete_port_mapping>`

Supprime la carte des ports identifiée par la combinaison de ports et le protocole donnée sur cet appareil. Voir :ref:`UPNP.delete_port_mapping()<class_UPNP_method_delete_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_is_valid_gateway:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_gateway**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_is_valid_gateway>`

Renvoie ``true`` si c'est un IGD (InternetGatewayDevice) valide qui supporte potentiellement le suivi de port.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_query_external_address>`

Renvoie l'adresse IP externe de ce **UPNPDevice**, ou une chaîne vide.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
