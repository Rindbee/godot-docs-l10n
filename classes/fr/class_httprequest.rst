:github_url: hide

.. _class_HTTPRequest:

HTTPRequest
===========

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud qui permet d'envoyer des requêtes HTTP(S).

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud avec la possibilité d'envoyer des requêtes HTTP. Utilise :ref:`HTTPClient<class_HTTPClient>` en interne.

Peut être utilisé pour faire des requêtes HTTP, c'est-à-dire télécharger ou téléverser des fichiers ou du contenu web via HTTP.

\ ** Avertissement :** Voir les notes et les avertissements sur :ref:`HTTPClient<class_HTTPClient>` pour les limitations, en particulier en ce qui concerne la sécurité TLS.

\ **Note :** Lors de l'export vers Android, assurez-vous d'activer la permission ``INTERNET`` dans le pré-réglage d'export Android avant d'exporter le projet ou d'utiliser le déploiement en un clic. Sinon, les communications réseau de toutes sortes seront bloquées par Android.

\ **Exemple :** Contacter une API REST et afficher l'un des champs renvoyés :


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Create an HTTP request node and connect its completion signal.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Effectuer une requête GET. L'URL ci-dessous renvoyait un JSON au moment où nous avons écrit ce code.
        var error = http_request.request("https://httpbin.org/get")
        if error != OK:
            push_error("Une erreur est survenue dans la requête HTTP.")

        # Effectuer une requête POST. L'URL ci-dessous renvoyait un JSON au moment où nous avons écrit ce code.
        # Note : Ne faites pas de requêtes simultanées avec un unique nœud HTTPRequest
        # Le bout de code ci-dessous est fourni seulement comme référence.
        var body = JSON.new().stringify({"name": "Godette"})
        error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
        if error != OK:
            push_error("Une erreur est survenue dans la requête HTTP.")

    # Appelée quand la requête HTTP est complétée.
    func _http_request_completed(result, response_code, headers, body):
        var json = JSON.new()
        json.parse(body.get_string_from_utf8())
        var response = json.get_data()

        # Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
        print(response.headers["User-Agent"])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Créer un nœud de requête HTTP et se connecter à son signal de complétion.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Effectuer une requête GET. L'URL ci-dessous renvoyait un JSON au moment où nous avons écrit ce code.
        Error error = httpRequest.Request("https://httpbin.org/get");
        if (error != Error.Ok)
        {
            GD.PushError("Une erreur est survenue dans la requête HTTP.");
        }

        // Effectuer une requête POST. L'URL ci-dessous renvoyait un JSON au moment où nous avons écrit ce code.
        // Note : Ne faites pas de requêtes simultanées avec un unique nœud HTTPRequest
        // Le bout de code ci-dessous est fourni seulement comme référence.
        string body = new Json().Stringify(new Godot.Collections.Dictionary
        {
            { "name", "Godette" }
        });
        error = httpRequest.Request("https://httpbin.org/post", null, HttpClient.Method.Post, body);
        if (error != Error.Ok)
        {
            GD.PushError("Une erreur est survenue dans la requête HTTP.");
        }
    }

    // Appelée quand la requête HTTP est complétée.
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        var json = new Json();
        json.Parse(body.GetStringFromUtf8());
        var response = json.GetData().AsGodotDictionary();

        // Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
        GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
    }



\ **Exemple :** Charger une image en utilisant **HTTPRequest** et l'afficher :


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Créer un nœud de requête HTTP et se connecter à son signal de complétion.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Effectuer la requête HTTP. L'URL ci-dessous renvoyait un PNG au moment où nous avons écrit ce code.
        var error = http_request.request("https://placehold.co/512.png")
        if error != OK:
            push_error("Une erreur est survenue dans la requête HTTP.")

    # Appelée quand la requête HTTP est complétée.
    func _http_request_completed(result, response_code, headers, body):
        if result != HTTPRequest.RESULT_SUCCESS:
            push_error("L'image n'a pu être téléchargée. Essayez avec une image différente.")

        var image = Image.new()
        var error = image.load_png_from_buffer(body)
        if error != OK:
            push_error("Impossible de charger l'image.")

        var texture = ImageTexture.create_from_image(image)

        # Afficher l'image dans un nœud TextureRect
        var texture_rect = TextureRect.new()
        add_child(texture_rect)
        texture_rect.texture = texture

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Créer un nœud de requête HTTP et se connecter à son signal de complétion.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Effectuer la requête HTTP. L'URL ci-dessous renvoyait un PNG au moment où nous avons écrit ce code.
        Error error = httpRequest.Request("https://placehold.co/512.png");
        if (error != Error.Ok)
        {
            GD.PushError("Une erreur est survenue dans la requête HTTP.");
        }
    }

    // Appelée quand la requête HTTP est complétée.
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        if (resultat != (long)HttpRequest.Result.Success)
        {
            GD.PushError("L'image n'a pu être téléchargée. Essayez avec une image différente.");
        }
        var image = new Image();
        Error error = image.LoadPngFromBuffer(body);
        if (erreur != Error.Ok)
        {
            GD.PushError("Impossible de charger l'image.");
        }

        var texture = ImageTexture.CreateFromImage(image);

        // Afficher l'image dans un nœud TextureRect
        var textureRect = new TextureRect();
        AddChild(textureRect);
        textureRect.Texture = texture;
    }



\ **Note :** Les nœuds **HTTPRequest** géreront automatiquement la décompression des corps de réponse. Un en-tête ``Accept-Encoding`` sera automatiquement ajouté à chacune de vos requêtes, sauf si un est déjà spécifié. Toute réponse avec un en-tête ``Content-Encoding: gzip`` sera automatiquement décompressée et livrée à vous en tant qu'octets non compressés.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Faire des requêtes HTTP <../tutorials/networking/http_request_class>`

- :doc:`Certificats TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>`                 | ``true``  |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`         | ``-1``    |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`download_chunk_size<class_HTTPRequest_property_download_chunk_size>` | ``65536`` |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`download_file<class_HTTPRequest_property_download_file>`             | ``""``    |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`             | ``8``     |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`timeout<class_HTTPRequest_property_timeout>`                         | ``0.0``   |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`use_threads<class_HTTPRequest_property_use_threads>`                 | ``false`` |
   +-----------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`cancel_request<class_HTTPRequest_method_cancel_request>`\ (\ )                                                                                                                                                                                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_body_size<class_HTTPRequest_method_get_body_size>`\ (\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_downloaded_bytes<class_HTTPRequest_method_get_downloaded_bytes>`\ (\ ) |const|                                                                                                                                                                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_HTTPClient_Status>` | :ref:`get_http_client_status<class_HTTPRequest_method_get_http_client_status>`\ (\ ) |const|                                                                                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`request<class_HTTPRequest_method_request>`\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ )                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`request_raw<class_HTTPRequest_method_request_raw>`\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_http_proxy<class_HTTPRequest_method_set_http_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_https_proxy<class_HTTPRequest_method_set_https_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_tls_options<class_HTTPRequest_method_set_tls_options>`\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_HTTPRequest_signal_request_completed:

.. rst-class:: classref-signal

**request_completed**\ (\ result\: :ref:`int<class_int>`, response_code\: :ref:`int<class_int>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPRequest_signal_request_completed>`

Émis lorsqu'une requête est complétée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_HTTPRequest_Result:

.. rst-class:: classref-enumeration

enum **Result**: :ref:`🔗<enum_HTTPRequest_Result>`

.. _class_HTTPRequest_constant_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_SUCCESS** = ``0``

Requête réussie.

.. _class_HTTPRequest_constant_RESULT_CHUNKED_BODY_SIZE_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CHUNKED_BODY_SIZE_MISMATCH** = ``1``

Requête échouée en raison d'une erreur entre la taille de corps en bloc attendue et réelle au cours du transfert. Les causes possibles incluent les erreurs réseau, la mauvaise configuration du serveur ou les problèmes avec l'encodage en blocs.

.. _class_HTTPRequest_constant_RESULT_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_CONNECT** = ``2``

La requête a échoué lors de la connexion.

.. _class_HTTPRequest_constant_RESULT_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_RESOLVE** = ``3``

La requête a échoué lors de la résolution.

.. _class_HTTPRequest_constant_RESULT_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CONNECTION_ERROR** = ``4``

La requête a échoué en raison d'une erreur de connexion (lecture / écriture).

.. _class_HTTPRequest_constant_RESULT_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TLS_HANDSHAKE_ERROR** = ``5``

La requête a échoué lors de la poignée de main TLS..

.. _class_HTTPRequest_constant_RESULT_NO_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_NO_RESPONSE** = ``6``

La requête n'a pas (encore) de réponse.

.. _class_HTTPRequest_constant_RESULT_BODY_SIZE_LIMIT_EXCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_SIZE_LIMIT_EXCEEDED** = ``7``

La requête a dépassé la taille maximale, voir :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`.

.. _class_HTTPRequest_constant_RESULT_BODY_DECOMPRESS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_DECOMPRESS_FAILED** = ``8``

La requête a échoué en raison d'une erreur lors de la décompression du corps de réponse. Les causes possibles incluent un format de compression non supporté ou incorrect, des données corrompues ou un transfert incomplet.

.. _class_HTTPRequest_constant_RESULT_REQUEST_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REQUEST_FAILED** = ``9``

Échec de la requête (actuellement inutilisé).

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_CANT_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_CANT_OPEN** = ``10``

La HTTPRequest n'a pu ouvrir le fichier téléchargé.

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_WRITE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_WRITE_ERROR** = ``11``

La HTTPRequest n'a pu écrire dans un fichier de téléchargement.

.. _class_HTTPRequest_constant_RESULT_REDIRECT_LIMIT_REACHED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REDIRECT_LIMIT_REACHED** = ``12``

La requête a atteint le nombre de redirections autorisée, voir :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`.

.. _class_HTTPRequest_constant_RESULT_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TIMEOUT** = ``13``

La requête a échoué en raison d'un timeout. Si vous vous attendez à ce que les requêtes prennent du temps, essayez d'augmenter la valeur de :ref:`timeout<class_HTTPRequest_property_timeout>` ou de le définir à ``0.0`` pour supprimer complètement le timeout.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_HTTPRequest_property_accept_gzip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accept_gzip** = ``true`` :ref:`🔗<class_HTTPRequest_property_accept_gzip>`

.. rst-class:: classref-property-setget

- |void| **set_accept_gzip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accepting_gzip**\ (\ )

Si ``true``, cet en-tête sera ajouté à chaque requête : ``Accept-Encoding: gzip, deflate`` indiquant aux serveurs qu'il est acceptable de compresser les corps de réponse.

Tout corps de réponse déclarant un ``Content-Encoding`` de ``gzip`` ou ``deflate`` sera automatiquement décompressé, et les octets non compressés seront livrés via :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

Si l'utilisateur a spécifié son propre en-tête ``Accept-Encoding``, aucun en-tête ne sera ajouté indépendamment de :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>`.

Si ``false``, aucun en-tête ne sera ajouté, et aucune décompression ne sera effectuée sur les corps de réponse. Les octets bruts du corps de réponse seront renvoyés par :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_body_size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **body_size_limit** = ``-1`` :ref:`🔗<class_HTTPRequest_property_body_size_limit>`

.. rst-class:: classref-property-setget

- |void| **set_body_size_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_body_size_limit**\ (\ )

Taille maximale autorisée pour les corps de réponse. Si le corps de réponse est compressé, cela sera utilisé comme la taille maximale autorisée pour le corps décompressé.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **download_chunk_size** = ``65536`` :ref:`🔗<class_HTTPRequest_property_download_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_download_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_download_chunk_size**\ (\ )

La taille du buffer utilisé et les octets maximaux à lire par itération. Voir :ref:`HTTPClient.read_chunk_size<class_HTTPClient_property_read_chunk_size>`.

Définissez ceci à une valeur inférieure (par exemple 4096 pour 4 KiB) lors du téléchargement de petits fichiers pour diminuer l'utilisation de la mémoire au coût des vitesses de téléchargement.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **download_file** = ``""`` :ref:`🔗<class_HTTPRequest_property_download_file>`

.. rst-class:: classref-property-setget

- |void| **set_download_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_download_file**\ (\ )

Le fichier dans lequel enregistrer le téléchargement. Enverra tout fichier reçu dedans.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_max_redirects:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_redirects** = ``8`` :ref:`🔗<class_HTTPRequest_property_max_redirects>`

.. rst-class:: classref-property-setget

- |void| **set_max_redirects**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_redirects**\ (\ )

Nombre maximal de redirections autorisées.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeout** = ``0.0`` :ref:`🔗<class_HTTPRequest_property_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeout**\ (\ )

The duration to wait before a request times out, in seconds (independent of :ref:`Engine.time_scale<class_Engine_property_time_scale>`). If :ref:`timeout<class_HTTPRequest_property_timeout>` is set to ``0.0``, the request will never time out.

For simple requests, such as communication with a REST API, it is recommended to set :ref:`timeout<class_HTTPRequest_property_timeout>` to a value suitable for the server response time (commonly between ``1.0`` and ``10.0``). This will help prevent unwanted timeouts caused by variation in response times while still allowing the application to detect when a request has timed out. For larger requests such as file downloads, it is recommended to set :ref:`timeout<class_HTTPRequest_property_timeout>` to ``0.0``, disabling the timeout functionality. This will help prevent large transfers from failing due to exceeding the timeout value.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_use_threads:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_threads** = ``false`` :ref:`🔗<class_HTTPRequest_property_use_threads>`

.. rst-class:: classref-property-setget

- |void| **set_use_threads**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_threads**\ (\ )

Si ``true``, le multithreading est utilisé pour améliorer les performances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_HTTPRequest_method_cancel_request:

.. rst-class:: classref-method

|void| **cancel_request**\ (\ ) :ref:`🔗<class_HTTPRequest_method_cancel_request>`

Annule la requête en cours.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_body_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_body_size**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_body_size>`

Renvoie la longueur du corps de réponse.

\ **Note :** Quelques serveurs Web peuvent ne pas envoyer de longueur de corps. Dans ce cas, la valeur renvoyée sera ``-1``. Si vous utilisez l'encodage de transfert en bloc (Chunked transfer encoding), la longueur du corps sera également de ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_downloaded_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_downloaded_bytes**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_downloaded_bytes>`

Renvoie le nombre d'octets téléchargés par cette HTTPRequest.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_http_client_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_http_client_status**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_http_client_status>`

Renvoie le statut actuel du :ref:`HTTPClient<class_HTTPClient>` sous-jacent.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPRequest_method_request>`

Crée une requête sur le :ref:`HTTPClient<class_HTTPClient>` sous-jacent. S'il n'y a pas d'erreur de configuration, il essaie de se connecter en utilisant :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` et passe les paramètres à :ref:`HTTPClient.request()<class_HTTPClient_method_request>`.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la requête est créée avec succès. (Ne signifie pas que le serveur a répondu), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si il n'est pas dans l'arbre, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` si il traite encore la requête précédente, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si la chaîne donnée n'est pas un format d'URL valide, ou :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>` si il n'utilise pas de thread et :ref:`HTTPClient<class_HTTPClient>` ne peut se connecter à l'hôte..

\ **Note :** Quand ``method`` est :ref:`HTTPClient.METHOD_GET<class_HTTPClient_constant_METHOD_GET>`, la charge utile envoyée via ``request_data`` peut être ignorée par le serveur ou même faire que le serveur rejette la requête (regardez `RFC 7231 section 4.3.1 <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1>`__ pour plus de détails). En guise de contournement, vous pouvez envoyer les données comme une chaîne de requête dans l'URL (voir :ref:`String.uri_encode()<class_String_method_uri_encode>` pour un exemple).

\ **Note :** Il est recommandé d'utiliser le chiffrement de transport (TLS) et d'éviter d'envoyer des informations sensibles (comme des identifiants de connexion) dans les paramètres d'URL GET HTTP. Envisagez d'utiliser des requêtes HTTP POST ou des en-têtes HTTP pour ces informations à la place.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_HTTPRequest_method_request_raw>`

Crée une requête sur le :ref:`HTTPClient<class_HTTPClient>` sous-jacent en utilisant un tableau brut d'octets pour le corps de requête. S'il n'y a pas d'erreur de configuration, il essaie de se connecter en utilisant :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` et passe les paramètres à :ref:`HTTPClient.request()<class_HTTPClient_method_request>`.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la requête est créée avec succès. (Ne signifie pas que le serveur a répondu), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si il n'est pas dans l'arbre, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` si il traite encore la requête précédente, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si la chaîne donnée n'est pas un format d'URL valide, ou :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>` si il n'utilise pas le thread et :ref:`HTTPClient<class_HTTPClient>` ne peut se connecter à l'hôte.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_http_proxy>`

Définit le serveur de proxy pour les requêtes HTTP.

Le serveur de proxy n'est pas défini si ``host`` est vide ou si ``port`` vaut -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_https_proxy>`

Définit le serveur de proxy pour les requêtes HTTPS.

Le serveur de proxy n'est pas défini si ``host`` est vide ou si ``port`` vaut -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_tls_options:

.. rst-class:: classref-method

|void| **set_tls_options**\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_HTTPRequest_method_set_tls_options>`

Définit les :ref:`TLSOptions<class_TLSOptions>` à utiliser lors de la connexion à un serveur HTTPS. Voir :ref:`TLSOptions.client()<class_TLSOptions_method_client>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
