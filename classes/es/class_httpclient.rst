:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Low-level hyper-text transfer protocol client.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.

See the :ref:`HTTPRequest<class_HTTPRequest>` node for a higher-level alternative.

\ **Note:** This client only needs to connect to a host once (see :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See :ref:`request()<class_HTTPClient_method_request>` for a full example and to get started.

An **HTTPClient** should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.

For more information on HTTP, see `MDN's documentation on HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (or read `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__ to get it straight from the source).

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.

\ **Note:** When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the ``Access-Control-Allow-Origin: *`` HTTP header.

\ **Note:** TLS support is currently limited to TLSv1.2 and TLSv1.3. Attempting to connect to a server that only supports older (insecure) TLS versions will return an error.

\ **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`HTTP client class <../tutorials/networking/http_client_class>`

- :doc:`Certificados TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`blocking_mode_enabled<class_HTTPClient_property_blocking_mode_enabled>` | ``false`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`connection<class_HTTPClient_property_connection>`                       |           |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`read_chunk_size<class_HTTPClient_property_read_chunk_size>`             | ``65536`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`close<class_HTTPClient_method_close>`\ (\ )                                                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`connect_to_host<class_HTTPClient_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_body_length<class_HTTPClient_method_get_response_body_length>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_code<class_HTTPClient_method_get_response_code>`\ (\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_response_headers<class_HTTPClient_method_get_response_headers>`\ (\ )                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_response_headers_as_dictionary<class_HTTPClient_method_get_response_headers_as_dictionary>`\ (\ )                                                                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_HTTPClient_Status>`             | :ref:`get_status<class_HTTPClient_method_get_status>`\ (\ ) |const|                                                                                                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_response<class_HTTPClient_method_has_response>`\ (\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_response_chunked<class_HTTPClient_method_is_response_chunked>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`poll<class_HTTPClient_method_poll>`\ (\ )                                                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`query_string_from_dict<class_HTTPClient_method_query_string_from_dict>`\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_response_body_chunk<class_HTTPClient_method_read_response_body_chunk>`\ (\ )                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request<class_HTTPClient_method_request>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ )                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request_raw<class_HTTPClient_method_request_raw>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_http_proxy<class_HTTPClient_method_set_http_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_https_proxy<class_HTTPClient_method_set_https_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

Método HTTP GET. El método GET solicita una representación del recurso especificado. Las solicitudes que utilizan GET sólo deben recuperar datos.

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

Método HTTP HEAD. El método HEAD pide una respuesta idéntica a la de una petición GET, pero sin el cuerpo de respuesta. Esto es útil para solicitar metadatos como cabeceras HTTP o para comprobar si existe un recurso.

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

Método HTTP POST. El método POST se utiliza para someter una entidad al recurso especificado, a menudo causando un cambio de estado o efectos secundarios en el servidor. A menudo se utiliza para formularios y para enviar datos o cargar archivos.

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

Método HTTP PUT. El método PUT pide reemplazar todas las representaciones actuales del recurso de destino con la carga útil de la solicitud. (Puedes pensar en POST como "crear o actualizar" y en PUT como "actualizar", aunque muchos servicios tienden a no hacer una distinción clara o a cambiar su significado).

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

Método HTTP DELETE. El método DELETE pide que se elimine el recurso especificado.

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

Método OPTIONS HTTP. El método OPTIONS pide una descripción de las opciones de comunicación para el recurso objetivo. Rara vez se utiliza.

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

Método HTTP TRACE. El método TRACE realiza una prueba de bucle de mensajes a lo largo del camino hacia el recurso objetivo. Devuelve toda la petición HTTP recibida en el cuerpo de respuesta. Rara vez se usa.

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

Método HTTP CONNECT. El método CONNECT establece un túnel hacia el servidor identificado por el recurso objetivo. Rara vez se utiliza.

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

Método HTTP PATCH. El método PATCH se utiliza para aplicar modificaciones parciales a un recurso.

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

Representa el tamaño del enumerado :ref:`Method<enum_HTTPClient_Method>`.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

Estado: Desconectado del servidor.

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

Estado: Actualmente resolviendo el nombre del host para la URL dada, en una IP.

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

Estado: Fallo del DNS: No se puede resolver el nombre de host para la URL dada.

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

Estado: Actualmente conectándose al servidor.

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

Estado: No puede conectarse al servidor.

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

Estado: Conexión establecida.

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

Estado: Actualmente enviando la petición.

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

Estado: Cuerpo HTTP recibido.

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

Estado: Error en la conexión HTTP.

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

Status: Error in TLS handshake.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

Código de estado HTTP ``100 Continuar ``. Respuesta provisional que indica que todo hasta ahora está bien y que el cliente debe continuar con la solicitud (o ignorar este estado si ya ha terminado).

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

Código de estado HTTP ``101 Switching Protocol``. Enviado en respuesta a una solicitud de ``Upgrade`` por el cliente. Indica el protocolo al que el servidor está cambiando.

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

Código de estado HTTP ``102 Processing`` (WebDAV). Indica que el servidor ha recibido y está procesando la solicitud, pero aún no hay respuesta disponible.

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

HTTP status code ``200 OK``. The request has succeeded. Default response for successful requests. Meaning varies depending on the request:

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`: The resource has been fetched and is transmitted in the message body.

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`: The entity headers are in the message body.

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`: The resource describing the result of the action is transmitted in the message body.

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`: The message body contains the request message as received by the server.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

Código de estado HTTP ``201 Creado``. La petición ha tenido éxito y se ha creado un nuevo recurso como resultado de ella. Esta es típicamente la respuesta enviada después de una solicitud PUT.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

Código de estado HTTP ``202 Accepted``. La solicitud ha sido recibida pero aún no se ha actuado al respecto. No se ha tomado ninguna medida, lo que significa que no hay forma de que HTTP envíe más tarde una respuesta asincrónica que indique el resultado del procesamiento de la solicitud. Está destinado a los casos en que otro proceso o servidor se encarga de la solicitud, o para el procesamiento por lotes.

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

Código de estado HTTP ``203 Información no autorizada ``. Este código de respuesta significa que el conjunto de meta-información devuelta no está exactamente establecida como disponible en el servidor de origen, sino que se ha recogido de una copia local o de un tercero. Excepto en esta condición, se debe preferir la respuesta 200 OK en lugar de esta respuesta.

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

Código de estado HTTP ``204 No hay contenido ``. No hay contenido que enviar para esta petición, pero los encabezados pueden ser útiles. El user-agent puede actualizar sus cabeceras en caché para este recurso con las nuevas.

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

Código de estado HTTP ``205 Reset Content``. El servidor ha cumplido la solicitud y desea que el cliente restablezca la "vista del documento" que causó que la solicitud se enviara a su estado original tal como se recibió del servidor de origen.

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

Código de estado HTTP ``206 Partial Content``. Este código de respuesta se utiliza debido a un encabezado de rango enviado por el cliente para separar la descarga en múltiples flujos.

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

Código de estado HTTP ``207 Multi-Status`` (WebDAV). Una respuesta Multi-Status transmite información sobre múltiples recursos en situaciones en las que podrían ser apropiados múltiples códigos de estado.

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

Código de estado HTTP ``208 Already Reported`` (WebDAV). Utilizado dentro de un DAV: elemento de respuesta propstat para evitar enumerar los miembros internos de múltiples enlaces a la misma colección repetidamente.

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

Código de estado HTTP ``226 IM Used`` (WebDAV). El servidor ha cumplido una solicitud GET para el recurso, y la respuesta es una representación del resultado de una o más manipulaciones de instancia aplicadas a la instancia actual.

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

Código de estado HTTP ``300 Multiple Choice``. La solicitud tiene más de una respuesta posible y no hay una forma estandarizada de elegir una de las respuestas. El user-agent o el usuario debe elegir una de ellas.

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

Código de estado HTTP ``301 Moved Permanently``. Redirección. Este código de respuesta significa que la URI del recurso solicitado ha sido cambiada. La nueva URI suele estar incluida en la respuesta.

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

Código de estado HTTP ``302 Found``. Redireccionamiento temporal. Este código de respuesta significa que la URI del recurso solicitado ha sido cambiada temporalmente. Nuevos cambios en la URI podrían hacerse en el futuro. Por lo tanto, esta misma URI debería ser utilizada por el cliente en futuras solicitudes.

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

Código de estado HTTP ``303 See Other``. El servidor está redirigiendo el user agent a un recurso diferente, como se indica en una URI en el campo de encabezamiento de la localización, que tiene por objeto proporcionar una respuesta indirecta a la solicitud original.

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

Código de estado HTTP ``304 Not Modified``. Se ha recibido una solicitud condicional GET o HEAD que habría dado lugar a una respuesta de 200 OK si no fuera por el hecho de que la condición fue evaluada a ``false``.

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**Obsoleto:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Código de estado HTTP ``305 Use Proxy``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**Obsoleto:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Código de estado HTTP ``306 Switch Proxy``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

Código de estado HTTP ``307 Temporary Redirect``. El recurso objetivo reside temporalmente bajo una URI diferente y el user-agent NO DEBE cambiar el método de solicitud si realiza una redirección automática a esa URI.

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

Código de estado HTTP ``308 Permanent Redirect``. Al recurso objetivo se le ha asignado una nueva URI permanente y cualquier referencia futura a este recurso deberá utilizar una de las URI adjuntas.

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

Código de estado HTTP ``400 Bad Request``. La solicitud era inválida. El servidor no puede o no quiere procesar la solicitud debido a algo que se percibe como un error del cliente (por ejemplo, sintaxis de solicitud mal formada, enmarcado de mensaje de solicitud inválido, contenido de solicitud inválido o enrutamiento de solicitud engañoso).

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

Código de estado HTTP ``401 Unauthorized``. Se requieren credenciales. La solicitud no se ha aplicado porque carece de credenciales de autenticación válidas para el recurso de destino.

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

Código de estado HTTP ``402 Payment Required``. Este código de respuesta está reservado para un uso futuro. El objetivo inicial para crear este código era usarlo para sistemas de pago digitales, sin embargo no se usa actualmente.

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

Código de estado HTTP ``403 Forbidden``. El cliente no tiene derechos de acceso al contenido, es decir, no están autorizados, por lo que el servidor se está negando a dar una respuesta adecuada. A diferencia de ``401``, la identidad del cliente es conocida por el servidor.

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

Código de estado HTTP ``404 Not Found``. El servidor no puede encontrar el recurso solicitado. La URL no se reconoce o el punto final es válido pero el recurso en sí no existe. También puede ser enviado en lugar de 403 para ocultar la existencia de un recurso si el cliente no está autorizado.

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

Código de estado HTTP ``405 Method Not Allowed``. El método HTTP de la petición es conocido por el servidor pero ha sido desactivado y no puede ser utilizado. Por ejemplo, una API puede prohibir la eliminación de un recurso. Los dos métodos obligatorios, GET y HEAD, nunca deben ser desactivados y no deben devolver este código de error.

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

Código de estado HTTP ``406 Not Acceptable``. El recurso de destino no tiene una representación actual que sería aceptable para el agente usuario, según los campos del encabezado de negociación proactiva recibidos en la solicitud. Se utiliza cuando el contenido de la negociación.

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

Código de estado HTTP ``407 Proxy Authentication Required``. Similar a 401 No autorizado, pero indica que el cliente necesita autenticarse para usar un proxy.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

Código de estado HTTP ``408 Solicitud de tiempo de espera ``. El servidor no recibió un mensaje de solicitud completo en el tiempo que estaba preparado para esperar.

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

Código de estado HTTP ``409 Conflict``. La solicitud no pudo completarse debido a un conflicto con el estado actual del recurso objetivo. Este código se utiliza en situaciones en las que el usuario podría resolver el conflicto y volver a enviar la solicitud.

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

Código de estado HTTP ``410 Gone``. El recurso objetivo ya no está disponible en el servidor de origen y esta condición es probablemente permanente.

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

Código de estado HTTP ``411 Length Required``. El servidor se niega a aceptar la solicitud sin un encabezado de longitud de contenido definido.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

Código de estado HTTP ``412 Precondition Failed``. Una o más condiciones dadas en los campos de la cabecera de la petición evaluadas a ``false`` al ser probadas en el servidor.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

Código de estado HTTP ``413 Entity Too large``. El servidor se niega a procesar una solicitud porque la carga útil de la solicitud es mayor de lo que el servidor está dispuesto o puede procesar.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

Código de estado HTTP ``414 Request-URI Too Long``. El servidor se niega a atender la solicitud porque el objetivo de la solicitud es más largo de lo que el servidor está dispuesto a interpretar.

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

Código de estado HTTP ``415 Unsupported Media Type``. El servidor de origen se niega a atender la solicitud porque la carga útil está en un formato no soportado por este método en el recurso de destino.

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

Código de estado HTTP ``416 Requested Range Not Satisfiable``. Ninguno de los rangos en el campo de encabezamiento del rango de la solicitud se superpone a la extensión actual del recurso seleccionado o el conjunto de rangos solicitados ha sido rechazado debido a rangos inválidos o a una solicitud excesiva de rangos pequeños o superpuestos.

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

Código de estado HTTP ``417 Expectation Failed``. La expectativa dada en el campo de encabezado Expect de la solicitud no pudo ser satisfecha por al menos uno de los servidores de entrada.

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

Código de estado HTTP ``418 I'm A Teapot``. Cualquier intento de preparar café con una tetera debería dar como resultado el código de error "418 I'm a Teapot". El cuerpo de la entidad resultante PUEDE ser corto y robusto.

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

Código de estado HTTP ``421 Misdirected Request``. La solicitud fue dirigida a un servidor que no es capaz de producir una respuesta. Esto puede ser enviado por un servidor que no está configurado para producir respuestas para la combinación de esquema y autoridad que se incluyen en la URI de la solicitud.

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

Código de estado HTTP ``422 Unprocessable Entity`` (WebDAV). El servidor entiende el tipo de contenido de la entidad de solicitud (por lo tanto, un código de estado 415 Unsupported Media Type es inapropiado), y la sintaxis de la entidad de solicitud es correcta (por lo tanto, un código de estado 400 Bad Request es inapropiado) pero no pudo procesar las instrucciones contenidas.

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

Código de estado HTTP ``423 Locked`` (WebDAV). El recurso de origen o destino de un método está bloqueado.

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

Código de estado HTTP ``424 Failed Dependency`` (WebDAV). El método no pudo realizarse en el recurso porque la acción solicitada dependía de otra acción y esa acción falló.

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

Código de estado HTTP ``426 Upgrade Required``. El servidor se niega a realizar la solicitud utilizando el protocolo actual, pero podría estar dispuesto a hacerlo después de que el cliente se actualice a un protocolo diferente.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

Código de estado HTTP ``428 Precondition Required``. El servidor de origen requiere que la petición sea condicional.

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

Código de estado HTTP ``429 Too Many Requests``. El usuario ha enviado demasiadas solicitudes en un período de tiempo determinado (véase "limitación de la tasa"). Retroceda y aumente el tiempo entre las solicitudes o inténtalo de nuevo más tarde.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

Código de estado HTTP ``431 Request Header Fields Too Large``. El servidor no está dispuesto a procesar la solicitud porque los campos de la cabecera son demasiado grandes. La solicitud PUEDE volver a enviarse después de reducir el tamaño de los campos de la cabecera de la solicitud.

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

Código de estado HTTP ``451 Response Unavailable for Legal Reasons``. El servidor está negando el acceso al recurso como consecuencia de una demanda legal.

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

Código de estado HTTP ``500 Internal Server Error``. El servidor se encontró con una condición inesperada que le impidió cumplir con la solicitud.

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

Código de estado HTTP ``501 Not Implemented``. El servidor no soporta la funcionalidad requerida para cumplir con la solicitud.

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

Código de estado HTTP ``502 Bad Gateway``. El servidor, mientras actuaba como gateway o proxy, recibió una respuesta inválida de un servidor entrante al que accedió mientras intentaba cumplir la solicitud. Normalmente devuelta por los balanceadores de carga o proxies.

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

Código de estado HTTP ``503 Service Unavailable``. El servidor no puede actualmente atender la solicitud debido a una sobrecarga temporal o a un mantenimiento programado, que probablemente se aliviará después de algún retraso. Inténtalo de nuevo más tarde.

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

Código de estado HTTP ``504 Gateway Timeout``. El servidor, aunque actuaba como gateway o proxy, no recibía una respuesta oportuna de un servidor ascendente al que necesitaba acceder para completar la solicitud. Normalmente se devuelve por los balanceadores de carga o proxies.

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

Código de estado HTTP ``505 Versión HTTP Not Supported``. El servidor no soporta, o se niega a soportar, la versión principal de HTTP que se utilizó en el mensaje de solicitud.

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

Código de estado HTTP ``506 Variant Also Negotiates``. El servidor tiene un error de configuración interna: el recurso de la variante elegida está configurado para participar en una negociación de contenido transparente en sí misma, y por lo tanto no es un punto final adecuado en el proceso de negociación.

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

Código de estado HTTP ``507 Insufficient Storage``. El método no pudo realizarse en el recurso porque el servidor no puede almacenar la representación necesaria para completar con éxito la solicitud.

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

Código de estado HTTP ``508 Loop Detected``. El servidor terminó una operación porque encontró un bucle infinito mientras procesaba una petición con "Depth:infinity". Este estado indica que la operación entera falló.

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

Código de estado HTTP ``510 Not Extended``. La política de acceso al recurso no se ha cumplido en la solicitud. El servidor debería devolver toda la información necesaria para que el cliente emita una solicitud extendida.

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

Código de estado HTTP ``511 Network Authentication Required``. El cliente necesita autenticarse para obtener acceso a la red.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

Si es ``true``, la ejecución se bloqueará hasta que se lean todos los datos de la respuesta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

La conexión a usar para este cliente.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

El tamaño de la memoria intermedia utilizada y el máximo de bytes a leer por iteración. Véase :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

Cierra la conexión actual, permitiendo la reutilización de este **HTTPClient**.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

Connects to a host. This needs to be done before any requests are sent.

If no ``port`` is specified (or ``-1`` is used), it is automatically set to 80 for HTTP and 443 for HTTPS. You can pass the optional ``tls_options`` parameter to customize the trusted certification authorities, or the common name verification when using HTTPS. See :ref:`TLSOptions.client()<class_TLSOptions_method_client>` and :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

Returns the response's body length.

\ **Note:** Some Web servers may not send a body length. In this case, the value returned will be ``-1``. If using chunked transfer encoding, the body length will also be ``-1``.

\ **Note:** This function always returns ``-1`` on the Web platform due to browsers limitations.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

Devuelve el código de estado HTTP de la respuesta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

Devuelve las cabeceras de la respuesta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Returns all response headers as a :ref:`Dictionary<class_Dictionary>`. Each entry is composed by the header name, and a :ref:`String<class_String>` containing the values separated by ``"; "``. The casing is kept the same as the headers were received.

::

    {
        "content-length": 12,
        "Content-Type": "application/json; charset=UTF-8",
    }

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_status>`

Devuelve una constant :ref:`Status<enum_HTTPClient_Status>`. Necesito llamar a :ref:`poll()<class_HTTPClient_method_poll>` para obtener actualizaciones de estado.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

Si es ``true``, este **HTTPClient** tiene una respuesta disponible.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

Si es ``true``, este **HTTPClient** tiene una respuesta que es troceada.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

Hay que llamar a esto para que se procese cualquier solicitud. Comprueba los resultados con :ref:`get_status()<class_HTTPClient_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Generates a GET/POST application/x-www-form-urlencoded style query string from a provided dictionary, e.g.:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Returns "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Returns "username=user&password=pass"



Furthermore, if a key has a ``null`` value, only the key itself is added, without equal sign and value. If the value is an array, for each value in it a pair with the same key is added.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Returns "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Returns "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

Lee un trozo de la respuesta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Sends an HTTP request to the connected host with the given ``method``.

The URL parameter is usually just the part after the host, so for ``https://example.com/index.php``, it is ``/index.php``. When sending requests to an HTTP proxy server, it should be an absolute URL. For :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` requests, ``*`` is also allowed. For :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` requests, it should be the authority component (``host:port``).

\ ``headers`` are HTTP request headers.

To create a POST request with query strings to push to the server, do:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
    var result = http_client.request(http_client.METHOD_POST, "/index.php", headers, query_string)

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = new HttpClient().QueryStringFromDict(fields);
    string[] headers = ["Content-Type: application/x-www-form-urlencoded", $"Content-Length: {queryString.Length}"];
    var result = new HttpClient().Request(HttpClient.Method.Post, "index.php", headers, queryString);



\ **Note:** The ``body`` parameter is ignored if ``method`` is :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See :ref:`String.uri_encode()<class_String_method_uri_encode>` for an example.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Sends a raw HTTP request to the connected host with the given ``method``.

The URL parameter is usually just the part after the host, so for ``https://example.com/index.php``, it is ``/index.php``. When sending requests to an HTTP proxy server, it should be an absolute URL. For :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` requests, ``*`` is also allowed. For :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` requests, it should be the authority component (``host:port``).

\ ``headers`` are HTTP request headers.

Sends the body data raw, as a byte array and does not encode it in any way.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

Sets the proxy server for HTTP requests.

The proxy server is unset if ``host`` is empty or ``port`` is -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

Sets the proxy server for HTTPS requests.

The proxy server is unset if ``host`` is empty or ``port`` is -1.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
