:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe un fichier audio WAV pour la lecture.

.. rst-class:: classref-introduction-group

Description
-----------

WAV is an uncompressed format, which can provide higher quality compared to Ogg Vorbis and MP3. It also has the lowest CPU cost to decode. This means high numbers of WAV sounds can be played at the same time, even on low-end devices.

By default, Godot imports WAV files using the lossy Quite OK Audio compression. You may change this by setting the :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>` property.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des échantillons audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

The compression mode to use on import.

- **PCM (Uncompressed):** Imports audio data without any form of compression, preserving the highest possible quality. It has the lowest CPU cost, but the highest memory usage.

- **IMA ADPCM:** Applies fast, lossy compression during import, noticeably decreasing the quality, but with low CPU cost and memory usage. Does not support seeking and only Forward loop mode is supported.

- **\ `Quite OK Audio <https://qoaformat.org/>`__:** Also applies lossy compression on import, having a slightly higher CPU cost compared to IMA ADPCM, but much higher quality and the lowest memory usage.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

The begin loop point to use when :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

The end loop point to use when :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` is **Forward**, **Ping-Pong**, or **Backward**. This is set in samples after the beginning of the audio file. A value of ``-1`` uses the end of the audio file as the end loop point.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Controls how audio should loop.

- **Detect From WAV:** Uses loop information from the WAV metadata.

- **Disabled:** Don't loop audio, even if the metadata indicates the file playback should loop.

- **Forward:** Standard audio looping. Plays the audio forward from the beginning to :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then returns to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` and repeats.

- **Ping-Pong:** Plays the audio forward until :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then backwards to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, repeating this cycle.

- **Backward:** Plays the audio backwards from :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, then repeats.

\ **Note:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, the :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

If ``true``, normalize the audio volume so that its peak volume is equal to 0 dB. When enabled, normalization will make audio sound louder depending on its original peak volume.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

If ``true``, automatically trim the beginning and end of the audio if it's lower than -50 dB after normalization (see :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`). This prevents having files with silence at the beginning or end, which increases their size unnecessarily and adds latency to the moment they are played back. A fade-in/fade-out period of 500 samples is also used during trimming to avoid audible pops.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

Si ``true``, force l'audio importé à utiliser la quantification 8 bits si le fichier source est de 16 bits ou plus.

Activer ceci n'est généralement pas recommandé, car la quantification 8 bits diminue considérablement la qualité audio. Si vous avez besoin de plus petites tailles de fichiers, envisagez d'utiliser de l'audio Ogg Vorbis ou MP3.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

If set to a value greater than ``0``, forces the audio's sample rate to be reduced to a value lower than or equal to the value specified in :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>`.

This can decrease file size noticeably on certain sounds, without impacting quality depending on the actual sound's contents. See `Best practices <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__ for more information.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

The frequency to limit the imported audio sample to (in Hz). Only effective if :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

If ``true``, forces the imported audio to be mono if the source file is stereo. This decreases the file size by 50% by merging the two channels into one.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
