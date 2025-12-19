:github_url: hide

.. _class_StreamPeerGZIP:

StreamPeerGZIP
==============

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un pair de flux qui gère la compression/décompression GZIP et deflate.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe permet de compresser ou de décompresser des données utilisant GZIP/deflate à la manière d'un flux. Ceci est particulièrement utile lorsque vous compressez ou décompressez des fichiers qui doivent être envoyés par le réseau sans avoir besoin de tous les allouer en mémoire.

Après avoir démarré le flux via :ref:`start_compression()<class_StreamPeerGZIP_method_start_compression>` (ou :ref:`start_decompression()<class_StreamPeerGZIP_method_start_decompression>`), appeler :ref:`StreamPeer.put_partial_data()<class_StreamPeer_method_put_partial_data>` sur ce flux compressera (ou décompressera) les données, les écrivant dans le buffer interne. L'appel à :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` renverra les octets en attente dans le buffer interne, et :ref:`StreamPeer.get_partial_data()<class_StreamPeer_method_get_partial_data>` récupérera les octets compressés (ou décompressés). Lorsque le flux est terminé, vous devez appeler :ref:`finish()<class_StreamPeerGZIP_method_finish>` pour garantir que le buffer interne est correctement vidé (assurez vous d'appeler :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` une dernière fois pour vérifier si d'autres données doivent être lues après cela).

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear<class_StreamPeerGZIP_method_clear>`\ (\ )                                                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`finish<class_StreamPeerGZIP_method_finish>`\ (\ )                                                                                                                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_compression<class_StreamPeerGZIP_method_start_compression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_decompression<class_StreamPeerGZIP_method_start_decompression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerGZIP_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_clear>`

Vide le flux, réinitialisant l'état interne.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_finish:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **finish**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_finish>`

Finalise le flux, compressant n'importe quel morceau du buffer restant.

Vous ne devez l'appeler seulement que quand vous compressez.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_compression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_compression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_compression>`

Démarre le flux en mode compression avec la taille de buffer ``buffer_size`` donnée. Si ``use_deflate`` vaut ``true``, utilise deflate au lieu de GZIP.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_decompression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_decompression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_decompression>`

Démarre le flux en mode décompression avec la taille de buffer ``buffer_size`` donnée. Si ``use_deflate`` vaut ``true``, utilise deflate au lieu de GZIP.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
