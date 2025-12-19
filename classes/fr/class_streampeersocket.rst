:github_url: hide

.. _class_StreamPeerSocket:

StreamPeerSocket
================

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerUDS<class_StreamPeerUDS>`

Abstract base class for interacting with socket streams.

.. rst-class:: classref-introduction-group

Description
-----------

StreamPeerSocket is an abstract base class that defines common behavior for socket-based streams.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`disconnect_from_host<class_StreamPeerSocket_method_disconnect_from_host>`\ (\ ) |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerSocket_Status>` | :ref:`get_status<class_StreamPeerSocket_method_get_status>`\ (\ ) |const|             |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`poll<class_StreamPeerSocket_method_poll>`\ (\ )                                 |
   +---------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_StreamPeerSocket_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerSocket_Status>`

.. _class_StreamPeerSocket_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_NONE** = ``0``

The initial status of the **StreamPeerSocket**. This is also the status after disconnecting.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTING** = ``1``

A status representing a **StreamPeerSocket** that is connecting to a host.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTED** = ``2``

A status representing a **StreamPeerSocket** that is connected to a host.

.. _class_StreamPeerSocket_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_ERROR** = ``3``

A status representing a **StreamPeerSocket** in error state.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerSocket_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_disconnect_from_host>`

Se déconnecte de l'hôte.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerSocket_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerSocket_method_get_status>`

Renvoie le statut de la connexion.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_poll>`

Polls the socket, updating its state. See :ref:`get_status()<class_StreamPeerSocket_method_get_status>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
