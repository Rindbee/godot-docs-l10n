:github_url: hide

.. _class_JSONRPC:

JSONRPC
=======

**Hérite de :** :ref:`Object<class_Object>`

Une classe d'aide pour gérer les dictionnaires qui ressemblent à des documents JSONRPC.

.. rst-class:: classref-introduction-group

Description
-----------

`JSON-RPC <https://www.jsonrpc.org/>`__ est une norme qui enveloppe un appel de méthode dans un objet :ref:`JSON<class_JSON>`. L'objet a une structure particulière et identifie quelle méthode est appelée, les paramètres de cette fonction, et porte un ID pour suivre les réponses. Cette classe implémente cette norme par dessus :ref:`Dictionary<class_Dictionary>`, vous devrez convertir entre un :ref:`Dictionary<class_Dictionary>` et :ref:`JSON<class_JSON>` avec d'autres fonctions.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_notification<class_JSONRPC_method_make_notification>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ )                                               |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_request<class_JSONRPC_method_make_request>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response<class_JSONRPC_method_make_response>`\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                                                         |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response_error<class_JSONRPC_method_make_response_error>`\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`process_action<class_JSONRPC_method_process_action>`\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ )                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`process_string<class_JSONRPC_method_process_string>`\ (\ action\: :ref:`String<class_String>`\ )                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_method<class_JSONRPC_method_set_method>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ )                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_JSONRPC_ErrorCode:

.. rst-class:: classref-enumeration

enum **ErrorCode**: :ref:`🔗<enum_JSONRPC_ErrorCode>`

.. _class_JSONRPC_constant_PARSE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **PARSE_ERROR** = ``-32700``

La requête n'a pas pu être parsée car elle n'était pas valide selon la norme JSON (:ref:`JSON.parse()<class_JSON_method_parse>` a échoué).

.. _class_JSONRPC_constant_INVALID_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_REQUEST** = ``-32600``

Un appel de méthode a été demandé, mais le format de la requête n'est pas valide.

.. _class_JSONRPC_constant_METHOD_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **METHOD_NOT_FOUND** = ``-32601``

Un appel de méthode a été demandé, mais aucune fonction avec ce nom n'existait dans la sous-classe JSONRPC.

.. _class_JSONRPC_constant_INVALID_PARAMS:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_PARAMS** = ``-32602``

Un appel de méthode a été demandé, mais les paramètres de méthode donnés ne sont pas valides. Non utilisé par le JSONRPC intégré.

.. _class_JSONRPC_constant_INTERNAL_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INTERNAL_ERROR** = ``-32603``

Une erreur interne s'est produite lors du traitement de la requête. Non utilisé par le JSONRPC intégré.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_JSONRPC_method_make_notification:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_notification**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_notification>`

Renvoie un dictionnaire sous forme d'une notification JSON-RPC. Les notifications sont des messages à usage unique qui ne s'attendent pas à une réponse.

- ``method``\  : Nom de la méthode appelée.

- ``params``\  : Un tableau ou un dictionnaire de paramètres transmis à la méthode.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_request:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_request**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_request>`

Renvoie un dictionnaire sous forme de requête JSON-RPC. Les requêtes sont envoyées à un serveur avec l'attente d'une réponse. Le champ ID est utilisé pour le serveur pour spécifier la requête exacte à laquelle il répond.

- ``method``\  : Nom de la méthode appelée.

- ``params``\  : Un tableau ou un dictionnaire de paramètres transmis à la méthode.

- ``id``\  : Identifie cette requête de façon unique. Le serveur devrait envoyer une réponse avec le même ID.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response**\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_response>`

Quand un serveur a reçu et traité une requête, il est attendu qu'il envoie une réponse. Si vous ne voulez pas de réponse alors vous devez envoyer une Notification à la place.

- ``result``\  : Le résultat de la fonction appelée.

- ``id``\  : L'identifiant de la requête que cette réponse cible.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response_error:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response_error**\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_JSONRPC_method_make_response_error>`

Crée une réponse qui indique qu'une réponse précédente a échoué d'une certaine manière.

- ``code``\  : Le code d'erreur correspondant à ce type d'erreur. Voir les constantes :ref:`ErrorCode<enum_JSONRPC_ErrorCode>`.

- ``message``\  : Un message personnalisé sur cette erreur.

- ``id``\  : La requête à laquelle cette erreur est une réponse.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_action:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **process_action**\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSONRPC_method_process_action>`

Compte tenu d'un dictionnaire qui prend la forme d'une demande JSON-RPC : déballe la requête et l'exécute. Les méthodes sont résolues en regardant le champ appelé "method" et en recherchant une fonction équivalente dans l'objet JSONRPC. Si une telle méthode est trouvée, elle est appelée.

Pour ajouter de nouvelles méthodes supportées, prolongez la classe JSONRPC et appelez :ref:`process_action()<class_JSONRPC_method_process_action>` sur votre sous-classe.

\ ``action``\  : L'action à exécuter, en tant que Dictionary sous forme de requête ou de notification JSON-RPC.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **process_string**\ (\ action\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JSONRPC_method_process_string>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_set_method:

.. rst-class:: classref-method

|void| **set_method**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JSONRPC_method_set_method>`

Enregistre un callback pour le nom de la méthode donnée.

- ``name`` Le nom que les clients peuvent utiliser pour accéder au callback.

- ``callback`` Le callback qui gérera la méthode spécifique.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
