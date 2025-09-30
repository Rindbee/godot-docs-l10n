:github_url: hide

.. _class_OpenXRActionSet:

OpenXRActionSet
===============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collezione di risorse :ref:`OpenXRAction<class_OpenXRAction>` che compongono un insieme di azioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gli insiemi di azioni in OpenXR definiscono una collezione di azioni che possono essere attivate all'unisono. Ciò consente ai giochi di scambiare facilmente tra diversi stati che richiedono input diversi o devono reinterpretare gli input. Ad esempio, potremmo avere un insieme di azioni attivo quando un menu è aperto, un insieme di azioni attivo quando il giocatore cammina liberamente e un insieme di azioni attivo quando il giocatore controlla un veicolo.

Gli insiemi di azioni possono contenere la stessa azione con lo stesso nome, se tali insiemi di azioni sono attivi allo stesso tempo, l'insieme di azioni con la priorità più alta definisce quale associazione è attiva.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`actions<class_OpenXRActionSet_property_actions>`               | ``[]`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`localized_name<class_OpenXRActionSet_property_localized_name>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`priority<class_OpenXRActionSet_property_priority>`             | ``0``  |
   +-----------------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`add_action<class_OpenXRActionSet_method_add_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ )       |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_action_count<class_OpenXRActionSet_method_get_action_count>`\ (\ ) |const|                                     |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`remove_action<class_OpenXRActionSet_method_remove_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRActionSet_property_actions:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **actions** = ``[]`` :ref:`🔗<class_OpenXRActionSet_property_actions>`

.. rst-class:: classref-property-setget

- |void| **set_actions**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_actions**\ (\ )

Collezione di azioni per questo insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRActionSet_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

Il nome localizzato di questo insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_OpenXRActionSet_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorità per questo insieme di azioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRActionSet_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_add_action>`

Aggiungi un'azione a questo insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_get_action_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionSet_method_get_action_count>`

Recuperare il numero di azioni nel nostro insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_remove_action:

.. rst-class:: classref-method

|void| **remove_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_remove_action>`

Rimuove un'azione da questo insieme di azioni.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
