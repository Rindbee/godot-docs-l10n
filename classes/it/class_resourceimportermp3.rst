:github_url: hide

.. _class_ResourceImporterMP3:

ResourceImporterMP3
===================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un file audio MP3 per la riproduzione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

MP3 è un formato audio lossy (con perdita), con una qualità audio peggiore rispetto a :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>` a un determinato bitrate.

Nella maggior parte dei casi, si consiglia di utilizzare Ogg Vorbis apposto di MP3. Tuttavia, se si utilizza una sorgente audio MP3 senza una sorgente di qualità superiore disponibile, si consiglia di utilizzare direttamente il file MP3 per evitare una doppia compressione lossy.

MP3 richiede più tempo sulla CPU per la decodifica rispetto a :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Se è necessario riprodurre molti suoni allo stesso tempo, si consiglia di utilizzare WAV per quei suoni, soprattutto se destinati a dispositivi di fascia bassa.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importazione di campioni audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterMP3_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterMP3_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterMP3_property_bar_beats>`

Il numero di battute in un singolo battito nella traccia audio. Rilevante solo per la musica con funzionalità interattiva, non gli effetti sonori.

Nella finestra di dialogo **Impostazioni d'importazione avanzate** è fornito un editor più comodo per :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`, in quanto consente di visualizzare le modifiche in anteprima senza dover reimportare l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

Il numero di battiti nella traccia audio. Rilevante solo per la musica con funzionalità interattiva, non gli effetti sonori.

Nella finestra di dialogo **Impostazioni d'importazione avanzate** è fornito un editor più comodo per :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`, in quanto consente di visualizzare le modifiche in anteprima senza dover reimportare l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

I battiti al minuto della traccia audio. Dovrebbe corrispondere alla misura del BPM che è stata usata per comporre la traccia. Rilevante solo per la musica con funzionalità interattiva, non gli effetti sonori.

Nella finestra di dialogo **Impostazioni d'importazione avanzate** è fornito un editor più comodo per :ref:`bpm<class_ResourceImporterMP3_property_bpm>`, in quanto consente di visualizzare le modifiche in anteprima senza dover reimportare l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

Se abilitato, l'audio sarà riprodotto dall'inizio dopo che la riproduzione termina raggiungendo la fine dell'audio.

\ **Nota:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, il segnale :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` non sarà emesso per l'audio in ripetizione quando raggiunge la fine del file audio, poiché l'audio continuerà a essere riprodotto indefinitamente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

Determina dove l'audio inizierà a ripetersi dopo che la riproduzione ha raggiunto la fine dell'audio. Può essere utilizzato per ripetere solo una parte del file audio, il che è utile per alcuni suoni ambientali o musica. Il valore è determinato in secondi dall'inizio dell'audio. Un valore di ``0.0`` ripeterà l'intero file audio.

Ha effetto solo se :ref:`loop<class_ResourceImporterMP3_property_loop>` è ``true``.

Nella finestra di dialogo **Impostazioni d'importazione avanzate** è fornito un editor più comodo per :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>`, in quanto consente di visualizzare le modifiche in anteprima senza dover reimportare l'audio.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
