:github_url: hide

.. _class_AudioEffectChorus:

AudioEffectChorus
=================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Añade un efecto de audio de coro.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Añade un efecto de audio de coro. El efecto aplica un filtro con voces para duplicar la fuente de audio y manipularlo a traves del filtro.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectChorus_property_dry>`                             | ``1.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/cutoff_hz<class_AudioEffectChorus_property_voice/1/cutoff_hz>` | ``8000.0`` |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/delay_ms<class_AudioEffectChorus_property_voice/1/delay_ms>`   | ``15.0``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/depth_ms<class_AudioEffectChorus_property_voice/1/depth_ms>`   | ``2.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/level_db<class_AudioEffectChorus_property_voice/1/level_db>`   | ``0.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/pan<class_AudioEffectChorus_property_voice/1/pan>`             | ``-0.5``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/rate_hz<class_AudioEffectChorus_property_voice/1/rate_hz>`     | ``0.8``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/cutoff_hz<class_AudioEffectChorus_property_voice/2/cutoff_hz>` | ``8000.0`` |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/delay_ms<class_AudioEffectChorus_property_voice/2/delay_ms>`   | ``20.0``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/depth_ms<class_AudioEffectChorus_property_voice/2/depth_ms>`   | ``3.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/level_db<class_AudioEffectChorus_property_voice/2/level_db>`   | ``0.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/pan<class_AudioEffectChorus_property_voice/2/pan>`             | ``0.5``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/rate_hz<class_AudioEffectChorus_property_voice/2/rate_hz>`     | ``1.2``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/cutoff_hz<class_AudioEffectChorus_property_voice/3/cutoff_hz>` |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/delay_ms<class_AudioEffectChorus_property_voice/3/delay_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/depth_ms<class_AudioEffectChorus_property_voice/3/depth_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/level_db<class_AudioEffectChorus_property_voice/3/level_db>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/pan<class_AudioEffectChorus_property_voice/3/pan>`             |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/rate_hz<class_AudioEffectChorus_property_voice/3/rate_hz>`     |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/cutoff_hz<class_AudioEffectChorus_property_voice/4/cutoff_hz>` |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/delay_ms<class_AudioEffectChorus_property_voice/4/delay_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/depth_ms<class_AudioEffectChorus_property_voice/4/depth_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/level_db<class_AudioEffectChorus_property_voice/4/level_db>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/pan<class_AudioEffectChorus_property_voice/4/pan>`             |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/rate_hz<class_AudioEffectChorus_property_voice/4/rate_hz>`     |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`     | :ref:`voice_count<class_AudioEffectChorus_property_voice_count>`             | ``2``      |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`wet<class_AudioEffectChorus_property_wet>`                             | ``0.5``    |
   +---------------------------+------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_cutoff_hz<class_AudioEffectChorus_method_get_voice_cutoff_hz>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_delay_ms<class_AudioEffectChorus_method_get_voice_delay_ms>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_depth_ms<class_AudioEffectChorus_method_get_voice_depth_ms>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_level_db<class_AudioEffectChorus_method_get_voice_level_db>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_pan<class_AudioEffectChorus_method_get_voice_pan>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_rate_hz<class_AudioEffectChorus_method_get_voice_rate_hz>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_cutoff_hz<class_AudioEffectChorus_method_set_voice_cutoff_hz>`\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_delay_ms<class_AudioEffectChorus_method_set_voice_delay_ms>`\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_depth_ms<class_AudioEffectChorus_method_set_voice_depth_ms>`\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_level_db<class_AudioEffectChorus_method_set_voice_level_db>`\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_pan<class_AudioEffectChorus_method_set_voice_pan>`\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )                   |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_rate_hz<class_AudioEffectChorus_method_set_voice_rate_hz>`\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )       |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectChorus_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectChorus_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

La señal en bruto del efecto.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frecuencia de corte de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/delay_ms** = ``15.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El retraso de la señal de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/depth_ms** = ``2.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El filtro de profundidad de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El volumen de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/pan** = ``-0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El nivel de distribucion de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/rate_hz** = ``0.8`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El ratio del filtro de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frecuencia de corte de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/delay_ms** = ``20.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El retraso de la señal de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/depth_ms** = ``3.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El filtro de profundidad de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El volumen de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/pan** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El nivel de distribucion de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/rate_hz** = ``1.2`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El ratio del filtro de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frecuencia de corte de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El retraso de la señal de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El filtro de profundidad de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/3/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El volumen de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/3/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El nivel de distribucion de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El ratio del filtro de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frecuencia de corte de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El retraso de la señal de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El filtro de profundidad de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/4/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El volumen de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/4/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El nivel de distribucion de la voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

El ratio del filtro de voz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **voice_count** = ``2`` :ref:`🔗<class_AudioEffectChorus_property_voice_count>`

.. rst-class:: classref-property-setget

- |void| **set_voice_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_voice_count**\ (\ )

El número de voces en el efecto.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

La señal procesada del efecto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectChorus_method_get_voice_cutoff_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_cutoff_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_delay_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_delay_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_depth_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_depth_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_level_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_level_db>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_pan:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_pan>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_rate_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_rate_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_cutoff_hz:

.. rst-class:: classref-method

|void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_cutoff_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_delay_ms:

.. rst-class:: classref-method

|void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_delay_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_depth_ms:

.. rst-class:: classref-method

|void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_depth_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_level_db:

.. rst-class:: classref-method

|void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_level_db>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_pan:

.. rst-class:: classref-method

|void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_pan>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_rate_hz:

.. rst-class:: classref-method

|void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_rate_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
