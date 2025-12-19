:github_url: hide

.. _class_StreamPeer:

StreamPeer
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`StreamPeerBuffer<class_StreamPeerBuffer>`, :ref:`StreamPeerExtension<class_StreamPeerExtension>`, :ref:`StreamPeerGZIP<class_StreamPeerGZIP>`, :ref:`StreamPeerSocket<class_StreamPeerSocket>`, :ref:`StreamPeerTLS<class_StreamPeerTLS>`

Classe de base abstraite pour interagir avec des flux.

.. rst-class:: classref-introduction-group

Description
-----------

StreamPeer est une classe de base abstraite principalement utilisée pour les protocoles orientés flux (comme le TCP). Elle fournit une API pour l'envoi et la réception de données à travers des flux comme des données brutes ou des chaînes de caractères.

\ **Note :** Lors de l'export vers Android, assurez-vous d'activer la permission ``INTERNET`` dans le préréglage d'export Android avant d'exporter le projet ou d'utiliser un déploiement en un clic. Sinon, la communication réseau de tout type sera bloquée par Android.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`big_endian<class_StreamPeer_property_big_endian>` | ``false`` |
   +-------------------------+---------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_8<class_StreamPeer_method_get_8>`\ (\ )                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_16<class_StreamPeer_method_get_16>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_32<class_StreamPeer_method_get_32>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_64<class_StreamPeer_method_get_64>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_available_bytes<class_StreamPeer_method_get_available_bytes>`\ (\ ) |const|                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_data<class_StreamPeer_method_get_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_double<class_StreamPeer_method_get_double>`\ (\ )                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_float<class_StreamPeer_method_get_float>`\ (\ )                                                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_half<class_StreamPeer_method_get_half>`\ (\ )                                                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_partial_data<class_StreamPeer_method_get_partial_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_string<class_StreamPeer_method_get_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u8<class_StreamPeer_method_get_u8>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u16<class_StreamPeer_method_get_u16>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u32<class_StreamPeer_method_get_u32>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u64<class_StreamPeer_method_get_u64>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_utf8_string<class_StreamPeer_method_get_utf8_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`get_var<class_StreamPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_8<class_StreamPeer_method_put_8>`\ (\ value\: :ref:`int<class_int>`\ )                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_16<class_StreamPeer_method_put_16>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_32<class_StreamPeer_method_put_32>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_64<class_StreamPeer_method_put_64>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`put_data<class_StreamPeer_method_put_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_double<class_StreamPeer_method_put_double>`\ (\ value\: :ref:`float<class_float>`\ )                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_float<class_StreamPeer_method_put_float>`\ (\ value\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_half<class_StreamPeer_method_put_half>`\ (\ value\: :ref:`float<class_float>`\ )                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`put_partial_data<class_StreamPeer_method_put_partial_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_string<class_StreamPeer_method_put_string>`\ (\ value\: :ref:`String<class_String>`\ )                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u8<class_StreamPeer_method_put_u8>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u16<class_StreamPeer_method_put_u16>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u32<class_StreamPeer_method_put_u32>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u64<class_StreamPeer_method_put_u64>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_utf8_string<class_StreamPeer_method_put_utf8_string>`\ (\ value\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_var<class_StreamPeer_method_put_var>`\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StreamPeer_property_big_endian:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **big_endian** = ``false`` :ref:`🔗<class_StreamPeer_property_big_endian>`

.. rst-class:: classref-property-setget

- |void| **set_big_endian**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_big_endian_enabled**\ (\ )

Si ``true``, ce **StreamPeer** utilisera le format big-endian pour l'encodage et le décodage.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeer_method_get_8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_8>`

Obtient un octet signé depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_16>`

Obtient une valeur 16 bits signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_32>`

Obtient une valeur 32 bits signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_64>`

Obtient une valeur 64 bits signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_bytes**\ (\ ) |const| :ref:`🔗<class_StreamPeer_method_get_available_bytes>`

Renvoie le nombre d'octets que ce **StreamPeer** a de disponible.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_data>`

Returns a chunk data with the received bytes, as an :ref:`Array<class_Array>` containing two elements: an :ref:`Error<enum_@GlobalScope_Error>` constant and a :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` is the number of bytes to be received. If not enough bytes are available, the function will block until the desired amount is received.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_double:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_double**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_double>`

Obtient un flottant à double-précision depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_float>`

Obtient un flottant à simple précision depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_half:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_half**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_half>`

Obtient un flottant en demi-précision depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_partial_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_partial_data>`

Returns a chunk data with the received bytes, as an :ref:`Array<class_Array>` containing two elements: an :ref:`Error<enum_@GlobalScope_Error>` constant and a :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` is the number of bytes to be received. If not enough bytes are available, the function will return how many were actually received.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_string>`

Obtient une chaîne ASCII d'une longueur de ``bytes`` octets du flux. Si ``bytes`` est négatif (par défaut), la longueur sera lue depuis le flux en utilisant le processus inverse de :ref:`put_string()<class_StreamPeer_method_put_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u8>`

Obtient un octet non signé depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u16>`

Obtient une valeur 16 bits non signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u32>`

Obtient une valeur 32 bits non signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u64>`

Obtient une valeur 64 bits non signée depuis le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_utf8_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_utf8_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_utf8_string>`

Obtient une chaîne UTF-8 d'une longueur de ``bytes`` octets du flux (ceci décode la chaîne envoyée en UTF-8). Si ``bytes`` est négatif (par défaut), la longueur sera lue depuis le flux en utilisant le processus inverse de :ref:`put_utf8_string()<class_StreamPeer_method_put_utf8_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_get_var>`

Obtient un Variant du flux. Si ``allow_objects`` vaut ``true``, le décodage des objets est autorisé.

En interne, cela utilise le même mécanisme de décodage que la méthode :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Avertissement :** Les objets désérialisés peuvent contenir du code qui sera exécuté. N'utilisez pas cette option si l'objet sérialisé provient de sources non sûres pour éviter des risques de sécurité telles que de l'exécution de code à distance.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_8:

.. rst-class:: classref-method

|void| **put_8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_8>`

Ajoute un octet signé dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_16:

.. rst-class:: classref-method

|void| **put_16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_16>`

Ajoute une valeur de 16 bits dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_32:

.. rst-class:: classref-method

|void| **put_32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_32>`

Ajoute une valeur de 32 bits dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_64:

.. rst-class:: classref-method

|void| **put_64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_64>`

Ajoute une valeur de 64 bits dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_data>`

Envoie un morceau de données à travers la connexion, en bloquant si nécessaire jusqu'à ce que les données soient finies d'être envoyées. Cette fonction renvoie un code :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_double:

.. rst-class:: classref-method

|void| **put_double**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_double>`

Ajoute un flottant en double-précision dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_float:

.. rst-class:: classref-method

|void| **put_float**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_float>`

Ajoute un flottant en simple-précision dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_half:

.. rst-class:: classref-method

|void| **put_half**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_half>`

Ajoute un flottant en demi-précision dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **put_partial_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_partial_data>`

Envoie un morceau de données par la connexion. Si toutes les données ne peuvent pas être envoyées à la fois, seule une partie de celles-ci le seront. Cette fonction renvoie deux valeurs : un code :ref:`Error<enum_@GlobalScope_Error>`, et un entier, décrivant combien de données ont effectivement été envoyées.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_string:

.. rst-class:: classref-method

|void| **put_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_string>`

Ajoute une chaîne ASCII se terminant par le caractère nul dans le flux, précédée par un entier 32 bits non signé représentant sa taille.

\ **Note :** Pour ajouter une chaîne ASCII sans la faire précéder par sa taille, vous pouvez utiliser :ref:`put_data()<class_StreamPeer_method_put_data>`\  :


.. tabs::

 .. code-tab:: gdscript

    put_data("Salut le monde".to_ascii_buffer())

 .. code-tab:: csharp

    PutData("Salut le monde".ToAsciiBuffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u8:

.. rst-class:: classref-method

|void| **put_u8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u8>`

Ajouter un octet non signé dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u16:

.. rst-class:: classref-method

|void| **put_u16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u16>`

Ajoute une valeur de 16 bits non signée dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u32:

.. rst-class:: classref-method

|void| **put_u32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u32>`

Ajoute une valeur de 32 bits non signée dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u64:

.. rst-class:: classref-method

|void| **put_u64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u64>`

Ajoute une valeur de 64 bits non signée dans le flux.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_utf8_string:

.. rst-class:: classref-method

|void| **put_utf8_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_utf8_string>`

Ajoute une chaîne UTF-8 se terminant par le caractère nul dans le flux, précédée par un entier 32 bits non signé représentant sa taille.

\ **Note :** Pour ajouter une chaîne UTF-8 sans la faire précéder par sa taille, vous pouvez utiliser :ref:`put_data()<class_StreamPeer_method_put_data>`\  :


.. tabs::

 .. code-tab:: gdscript

    put_data("Salut le monde".to_utf8_buffer())

 .. code-tab:: csharp

    PutData("Salut le monde".ToUtf8Buffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_var:

.. rst-class:: classref-method

|void| **put_var**\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_put_var>`

Ajoute un Variant dans le flux. Si ``full_objects`` vaut ``true``, l'encodage d'objets est autorisé (et ceux-ci peuvent potentiellement contenir du code).

En interne, cela utilise le même mécanisme d'encodage que la méthode :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
