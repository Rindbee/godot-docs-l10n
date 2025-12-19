:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**Hérite de :** :ref:`Object<class_Object>`

Abstract class for non-real-time video recording encoders.

.. rst-class:: classref-introduction-group

Description
-----------

Godot can record videos with non-real-time simulation. Like the ``--fixed-fps`` :doc:`command line argument <../tutorials/editor/command_line_tutorial>`, this forces the reported ``delta`` in :ref:`Node._process()<class_Node_private_method__process>` functions to be identical across frames, regardless of how long it actually took to render the frame. This can be used to record high-quality videos with perfect frame pacing regardless of your hardware's capabilities.

Godot has 3 built-in **MovieWriter**\ s:

- OGV container with Theora for video and Vorbis for audio (``.ogv`` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` and :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>`. The resulting file can be viewed in Godot with :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` and most video players, but not web browsers as they don't support Theora.

- AVI container with MJPEG for video and uncompressed audio (``.avi`` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>`. The resulting file can be viewed in most video players, but it must be converted to another format for viewing on the web or by Godot with :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`. MJPEG does not support transparency. AVI output is currently limited to a file of 4 GB in size at most.

- PNG image sequence for video and WAV for audio (``.png`` file extension). Lossless compression, large file sizes, slow encoding. Designed to be encoded to a video file with another tool such as `FFmpeg <https://ffmpeg.org/>`__ after recording. Transparency is currently not supported, even if the root viewport is set to be transparent.

If you need to encode to a different format or pipe a stream through third-party software, you can extend the **MovieWriter** class to create your own movie writers. This should typically be done using GDExtension for performance reasons.

\ **Editor usage:** A default movie file path can be specified in :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`. Alternatively, for running single scenes, a ``movie_file`` metadata can be added to the root node, specifying the path to a movie file that will be used when recording that scene. Once a path is set, click the video reel icon in the top-right corner of the editor to enable Movie Maker mode, then run any scene as usual. The engine will start recording as soon as the splash screen is finished, and it will only stop recording when the engine quits. Click the video reel icon again to disable Movie Maker mode. Note that toggling Movie Maker mode does not affect project instances that are already running.

\ **Note:** MovieWriter is available for use in both the editor and exported projects, but it is *not* designed for use by end users to record videos while playing. Players wishing to record gameplay videos should install tools such as `OBS Studio <https://obsproject.com/>`__ or `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__ instead.

\ **Note:** MJPEG support (``.avi`` file extension) depends on the ``jpg`` module being enabled at compile time (default behavior).

\ **Note:** OGV support (``.ogv`` file extension) depends on the ``theora`` module being enabled at compile time (default behavior). Theora compression is only available in editor binaries.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`_get_audio_mix_rate<class_MovieWriter_private_method__get_audio_mix_rate>`\ (\ ) |virtual| |required| |const|                                                                                               |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` | :ref:`_get_audio_speaker_mode<class_MovieWriter_private_method__get_audio_speaker_mode>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`_handles_file<class_MovieWriter_private_method__handles_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`            | :ref:`_write_begin<class_MovieWriter_private_method__write_begin>`\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`_write_end<class_MovieWriter_private_method__write_end>`\ (\ ) |virtual| |required|                                                                                                                         |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`            | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required|                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`add_writer<class_MovieWriter_method_add_writer>`\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static|                                                                                             |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

Appelée lorsque le taux d'échantillonnage audio utilisé pour enregistrer l'audio est demandé par le moteur. La valeur renvoyée doit être spécifiée en Hz. 48000 Hz par défaut si :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` n'est pas redéfini.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

Appelée lorsque le mode de haut-parleur audio utilisé pour enregistrer l'audio est demandé par le moteur. Cela peut affecter le nombre de canaux de sortie dans le fichier/flux audio résultant. Vaut par défaut :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>` si :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` n'est pas redéfini.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

Appelée lorsque le moteur détermine si ce **MovieWriter** est capable de gérer le fichier au chemin ``path``. Doit renvoyer ``true`` si ce **MovieWriter** est capable de gérer le chemin de fichier donné, ``false`` sinon. Habituellement, :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` est redéfini comme suit pour permettre à l'utilisateur d'enregistrer un fichier à n'importe quel chemin avec une extension de fichier donnée :

::

    func _handles_file(path):
        # Permet de spécifier un fichier de sortie avec une extension `.mkv` (insensible à la casse),
        # soit dans les paramètres du projet, soit avec l'argument de ligne de commande `--write-movie <path>`.
        return path.get_extension().to_lower() == "mkv"

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

Called once before the engine starts writing video and audio data. ``movie_size`` is the width and height of the video to save. ``fps`` is the number of frames per second specified in the project settings or using the ``--fixed-fps <fps>`` :doc:`command line argument <../tutorials/editor/command_line_tutorial>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

Called when the engine finishes writing. This occurs when the engine quits by pressing the window manager's close button, or when :ref:`SceneTree.quit()<class_SceneTree_method_quit>` is called.

\ **Note:** Pressing :kbd:`Ctrl + C` on the terminal running the editor/project does *not* result in :ref:`_write_end()<class_MovieWriter_private_method__write_end>` being called.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

Called at the end of every rendered frame. The ``frame_image`` and ``audio_frame_block`` function arguments should be written to.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

Adds a writer to be usable by the engine. The supported file extensions can be set by overriding :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`.

\ **Note:** :ref:`add_writer()<class_MovieWriter_method_add_writer>` must be called early enough in the engine initialization to work, as movie writing is designed to start at the same time as the rest of the engine.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
