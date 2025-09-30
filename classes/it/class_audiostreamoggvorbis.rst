:github_url: hide

.. _class_AudioStreamOggVorbis:

AudioStreamOggVorbis
====================

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe che rappresenta un flusso audio in Ogg Vorbis.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe AudioStreamOggVorbis è specializzata nella gestione dei formati di file Ogg Vorbis. Offre funzionalità per caricare e riprodurre file Ogg Vorbis, oltre a gestire la ripetizione e altre proprietà di riproduzione. Questa classe fa parte del sistema di flusso audio, che supporta anche i file WAV tramite la classe :ref:`AudioStreamWAV<class_AudioStreamWAV>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`bar_beats<class_AudioStreamOggVorbis_property_bar_beats>`             | ``4``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`beat_count<class_AudioStreamOggVorbis_property_beat_count>`           | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`bpm<class_AudioStreamOggVorbis_property_bpm>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`loop<class_AudioStreamOggVorbis_property_loop>`                       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>`         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OggPacketSequence<class_OggPacketSequence>` | :ref:`packet_sequence<class_AudioStreamOggVorbis_property_packet_sequence>` |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`tags<class_AudioStreamOggVorbis_property_tags>`                       | ``{}``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_AudioStreamOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_AudioStreamOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamOggVorbis_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamOggVorbis_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Se ``true``, l'audio riprodurrà di nuovo a partire da :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>` una volta che termina la sua riproduzione. Utile per suoni ambientali e musica di sottofondo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

Tempo in secondi in cui il flusso comincia dopo essere stato ripetuto.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_packet_sequence:

.. rst-class:: classref-property

:ref:`OggPacketSequence<class_OggPacketSequence>` **packet_sequence** :ref:`🔗<class_AudioStreamOggVorbis_property_packet_sequence>`

.. rst-class:: classref-property-setget

- |void| **set_packet_sequence**\ (\ value\: :ref:`OggPacketSequence<class_OggPacketSequence>`\ )
- :ref:`OggPacketSequence<class_OggPacketSequence>` **get_packet_sequence**\ (\ )

Contiene il dati Ogg grezzi per questo flusso.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamOggVorbis_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Contains user-defined tags if found in the Ogg Vorbis data.

Commonly used tags include ``title``, ``artist``, ``album``, ``tracknumber``, and ``date`` (``date`` does not have a standard date format).

\ **Note:** No tag is *guaranteed* to be present in every file, so make sure to account for the keys not always existing.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_buffer>`

Crea una nuova istanza **AudioStreamOggVorbis** dal buffer fornito. Il buffer deve contenere i dati in Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_file>`

Crea una nuova istanza **AudioStreamOggVorbis** dal percorso di file fornito. Il file deve essere in formato Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
