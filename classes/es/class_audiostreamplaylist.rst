:github_url: hide

.. _class_AudioStreamPlaylist:

AudioStreamPlaylist
===================

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStream<class_AudioStream>` that includes sub-streams and plays them back like a playlist.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fade_time<class_AudioStreamPlaylist_property_fade_time>`       | ``0.3``   |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_AudioStreamPlaylist_property_loop>`                 | ``true``  |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`           | ``false`` |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`stream_count<class_AudioStreamPlaylist_property_stream_count>` | ``0``     |
   +---------------------------+----------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bpm<class_AudioStreamPlaylist_method_get_bpm>`\ (\ ) |const|                                                                                                     |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_list_stream<class_AudioStreamPlaylist_method_get_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_list_stream<class_AudioStreamPlaylist_method_set_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AudioStreamPlaylist_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``64`` :ref:`🔗<class_AudioStreamPlaylist_constant_MAX_STREAMS>`

Cantidad máxima de transmisiones soportados en la lista de reproducción.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamPlaylist_property_fade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fade_time** = ``0.3`` :ref:`🔗<class_AudioStreamPlaylist_property_fade_time>`

.. rst-class:: classref-property-setget

- |void| **set_fade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fade_time**\ (\ )

Tiempo de fundido usado cuando una transmisión termina, al pasar al siguiente. Se espera que las transmisiones tengan un poco de audio extra después del final para ayudar con el fundido.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_AudioStreamPlaylist_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, la lista de reproducción se repetirá en bucle. De lo contrario, la lista de reproducción terminará cuando finalice el último stream.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_shuffle:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shuffle** = ``false`` :ref:`🔗<class_AudioStreamPlaylist_property_shuffle>`

.. rst-class:: classref-property-setget

- |void| **set_shuffle**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shuffle**\ (\ )

Si es ``true``, la lista de reproducción se barajará cada vez que comience la reproducción y cada vez que se repita.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamPlaylist_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Cantidad de transmisiones en la lista de reproducción.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlaylist_method_get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bpm**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_bpm>`

Returns the BPM of the playlist, which can vary depending on the clip being played.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_get_list_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_list_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_list_stream>`

Devuelve la transmisión en el índice de la posición de reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_set_list_stream:

.. rst-class:: classref-method

|void| **set_list_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamPlaylist_method_set_list_stream>`

Establece la transmisión en el índice de la posición de reproducción.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
