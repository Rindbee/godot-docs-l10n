:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles TCP connections.

.. rst-class:: classref-introduction-group

Description
-----------

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`bind<class_StreamPeerTCP_method_bind>`\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ )                 |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_host<class_StreamPeerTCP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_host<class_StreamPeerTCP_method_disconnect_from_host>`\ (\ )                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_connected_host<class_StreamPeerTCP_method_get_connected_host>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_connected_port<class_StreamPeerTCP_method_get_connected_port>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_local_port<class_StreamPeerTCP_method_get_local_port>`\ (\ ) |const|                                                             |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTCP_Status>` | :ref:`get_status<class_StreamPeerTCP_method_get_status>`\ (\ ) |const|                                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`poll<class_StreamPeerTCP_method_poll>`\ (\ )                                                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`set_no_delay<class_StreamPeerTCP_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                      |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_StreamPeerTCP_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTCP_Status>`

.. _class_StreamPeerTCP_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_NONE** = ``0``

Le status initial du **StreamPeerTCP**. C'est aussi le status après la déconnexion.

.. _class_StreamPeerTCP_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTING** = ``1``

Un status représentant un **StreamPeerTCP** qui se connecte un à hôte.

.. _class_StreamPeerTCP_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTED** = ``2``

Un status représentant un **StreamPeerTCP** qui est connecté un à hôte.

.. _class_StreamPeerTCP_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_ERROR** = ``3``

Un status représentant un état d'erreur du **StreamPeerTCP**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

Opens the TCP socket, and binds it to the specified local address.

This method is generally not needed, and only used to force the subsequent call to :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` to use the specified ``host`` and ``port`` as source address. This can be desired in some NAT punchthrough techniques, or when forcing the source network interface.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

Connects to the specified ``host:port`` pair. A hostname will be resolved if valid. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_disconnect_from_host>`

Se déconnecte de l'hôte.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

Renvoie l'adresse IP de ce pair.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

Renvoie le port de ce pair.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

Returns the local port to which this peer is bound.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTCP_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_status>`

Renvoie le statut de la connexion.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_poll>`

Poll the socket, updating its state. See :ref:`get_status()<class_StreamPeerTCP_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

If ``enabled`` is ``true``, packets will be sent immediately. If ``enabled`` is ``false`` (the default), packet transfers will be delayed and combined using `Nagle's algorithm <https://en.wikipedia.org/wiki/Nagle%27s_algorithm>`__.

\ **Note:** It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
