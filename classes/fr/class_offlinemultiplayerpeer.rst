:github_url: hide

.. _class_OfflineMultiplayerPeer:

OfflineMultiplayerPeer
======================

**Hérite de :** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A :ref:`MultiplayerPeer<class_MultiplayerPeer>` which is always connected and acts as a server.

.. rst-class:: classref-introduction-group

Description
-----------

This is the default :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` for the :ref:`Node.multiplayer<class_Node_property_multiplayer>`. It mimics the behavior of a server with no peers connected.

This means that the :ref:`SceneTree<class_SceneTree>` will act as the multiplayer authority by default. Calls to :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>` will return ``true``, and calls to :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>` will return :ref:`MultiplayerPeer.TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
