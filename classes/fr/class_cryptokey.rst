:github_url: hide

.. _class_CryptoKey:

CryptoKey
=========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une clé cryptographique (RSA ou courbe elliptique).

.. rst-class:: classref-introduction-group

Description
-----------

La classe CryptoKey représente une clé cryptographique. Les clés peuvent être chargées et sauvegardées comme toute autre :ref:`Resource<class_Resource>`.

Elles peuvent être utilisées pour générer un certicat :ref:`X509Certificate<class_X509Certificate>` autosigné avec :ref:`Crypto.generate_self_signed_certificate()<class_Crypto_method_generate_self_signed_certificate>` et comme clé privée dans :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` avec le certificat approprié.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Certificats SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_public_only<class_CryptoKey_method_is_public_only>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CryptoKey_method_load>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_CryptoKey_method_load_from_string>`\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_CryptoKey_method_save>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_CryptoKey_method_save_to_string>`\ (\ public_only\: :ref:`bool<class_bool>` = false\ )                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CryptoKey_method_is_public_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_public_only**\ (\ ) |const| :ref:`🔗<class_CryptoKey_method_is_public_only>`

Renvoie ``true`` si cette CryptoKey ne contient que la partie publique, et non la partie privée.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load>`

Charge une clé se trouvant au chemin ``path``. Si ``public_only`` vaut ``true``, seule la clé publique sera chargée.

\ **Note :** ``path`` doit être un fichier "\*.pub" si ``public_only`` vaut ``true``, et un fichier "\*.key" sinon.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load_from_string>`

Charge une clé depuis la chaîne de caractères ``string_key`` donnée. Si ``public_only`` vaut ``true``, seule la clé publique sera chargée.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save>`

Enregistre une clé au chemin ``path`` spécifié. Si ``public_only`` vaut ``true``, seule la clé publique sera enregistrée.

\ **Note :** ``path`` doit être un fichier avec l'extension ".pub" si ``public_only`` vaut ``true``, et avec l'extension ".key" sinon.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save_to_string>`

Renvoie une chaîne de caractères contenant la clé en format PEM. Si ``public_only`` vaut ``true``, seule la clé publique sera incluse.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
