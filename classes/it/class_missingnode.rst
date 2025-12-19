:github_url: hide

.. _class_MissingNode:

MissingNode
===========

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una classe interna dell'editor pensata per conservare i dati dei nodi non riconosciuti.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa è una classe interna dell'editor pensata per conservare i dati dei nodi di tipo sconosciuto (molto probabilmente questo tipo è stato fornito da un'estensione che non è più caricata). Non può essere istanziata manualmente o inserita in una scena.

\ **Attenzione:** Ignora i nodi mancanti a meno che tu non sappia cosa stai facendo. Le proprietà esistenti su un nodo mancante possono essere liberamente modificate in codice, a prescindere dal loro tipo originale.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_class<class_MissingNode_property_original_class>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_scene<class_MissingNode_property_original_scene>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_properties<class_MissingNode_property_recording_properties>` |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_signals<class_MissingNode_property_recording_signals>`       |
   +-----------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MissingNode_property_original_class:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_class** :ref:`🔗<class_MissingNode_property_original_class>`

.. rst-class:: classref-property-setget

- |void| **set_original_class**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_class**\ (\ )

Il nome della classe che questo nodo avrebbe dovuto essere (vedi :ref:`Object.get_class()<class_Object_method_get_class>`).

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_original_scene:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_scene** :ref:`🔗<class_MissingNode_property_original_scene>`

.. rst-class:: classref-property-setget

- |void| **set_original_scene**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_scene**\ (\ )

Restituisce il percorso della scena di cui questo nodo era originariamente un l'istanza.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_properties** :ref:`🔗<class_MissingNode_property_recording_properties>`

.. rst-class:: classref-property-setget

- |void| **set_recording_properties**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_properties**\ (\ )

Se ``true``, consente di impostare nuove proprietà insieme a quelle esistenti. Se ``false``, è possibile impostare solo i valori delle proprietà esistenti e non è possibile aggiungere nuove proprietà.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_signals:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_signals** :ref:`🔗<class_MissingNode_property_recording_signals>`

.. rst-class:: classref-property-setget

- |void| **set_recording_signals**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_signals**\ (\ )

If ``true``, allows new signals to be connected to along with existing ones. If ``false``, only existing signals can be connected to, and new signals cannot be added.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
