:github_url: hide

.. _class_StreamPeerUDS:

StreamPeerUDS
=============

**Hérite de :** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles UNIX Domain Socket (UDS) connections.

.. rst-class:: classref-introduction-group

Description
-----------

A stream peer that handles UNIX Domain Socket (UDS) connections. This object can be used to connect to UDS servers, or also is returned by a UDS server. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** UNIX Domain Sockets are only available on UNIX-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerUDS_method_bind>`\ (\ path\: :ref:`String<class_String>`\ )                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerUDS_method_connect_to_host>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_path<class_StreamPeerUDS_method_get_connected_path>`\ (\ ) |const|                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerUDS_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_bind>`

Opens the UDS socket, and binds it to the specified socket path.

This method is generally not needed, and only used to force the subsequent call to :ref:`connect_to_host()<class_StreamPeerUDS_method_connect_to_host>` to use the specified ``path`` as the source address.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_connect_to_host>`

Connects to the specified UNIX Domain Socket path. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_get_connected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_path**\ (\ ) |const| :ref:`🔗<class_StreamPeerUDS_method_get_connected_path>`

Returns the socket path of this peer.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
