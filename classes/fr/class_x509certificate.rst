:github_url: hide

.. _class_X509Certificate:

X509Certificate
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un certificat X509 (par ex. pour TLS).

.. rst-class:: classref-introduction-group

Description
-----------

La classe X509Certificate représente un certificat X509. Les certificats peuvent être chargés et sauvegardés comme tout autre :ref:`Resource<class_Resource>`.

Ils peuvent être utilisés comme certificat de serveur dans :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` (avec la clé :ref:`CryptoKey<class_CryptoKey>` correcte), et pour spécifier le seul certificat qui devrait être accepté lors de la connexion à un serveur TLS via :ref:`StreamPeerTLS.connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Certificats SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_X509Certificate_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_X509Certificate_method_load_from_string>`\ (\ string\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_X509Certificate_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_X509Certificate_method_save_to_string>`\ (\ )                                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_X509Certificate_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load>`

Charge un certificat depuis ``path`` (fichier "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load_from_string>`

Charge un certificat depuis la chaîne ``string`` donnée.

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_save>`

Sauvegarde un certificat au chemin ``path`` donné (devrait être un fichier "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ ) :ref:`🔗<class_X509Certificate_method_save_to_string>`

Renvoie une représentation en chaîne du certificat, ou une chaîne vide si le certificat est invalide.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
