:github_url: hide

.. _class_OfflineMultiplayerPeer:

OfflineMultiplayerPeer
======================

**Hereda:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A :ref:`MultiplayerPeer<class_MultiplayerPeer>` which is always connected and acts as a server.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This is the default :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` for the :ref:`Node.multiplayer<class_Node_property_multiplayer>`. It mimics the behavior of a server with no peers connected.

This means that the :ref:`SceneTree<class_SceneTree>` will act as the multiplayer authority by default. Calls to :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>` will return ``true``, and calls to :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>` will return :ref:`MultiplayerPeer.TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
