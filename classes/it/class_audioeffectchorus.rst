:github_url: hide

.. _class_AudioEffectChorus:

AudioEffectChorus
=================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un effetto audio di coro.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Aggiunge un effetto audio di coro. L'effetto applica un filtro con voci per duplicare la sorgente audio e manipolarla attraverso il filtro.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectChorus_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectChorus_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

Il segnale grezzo dell'effetto.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di taglio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/delay_ms** = ``15.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il ritardo di segnale della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/depth_ms** = ``2.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La profondità del filtro vocale.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il volume della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/pan** = ``-0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il livello di panning della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/rate_hz** = ``0.8`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di filtraggio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di taglio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/delay_ms** = ``20.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il ritardo di segnale della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/depth_ms** = ``3.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La profondità del filtro vocale.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il volume della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/pan** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il livello di panning della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/rate_hz** = ``1.2`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di filtraggio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di taglio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il ritardo di segnale della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La profondità del filtro vocale.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/3/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il volume della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/3/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il livello di panning della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di filtraggio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di taglio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il ritardo di segnale della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La profondità del filtro vocale.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/4/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il volume della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/4/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Il livello di panning della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

La frequenza di filtraggio della voce.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **voice_count** = ``2`` :ref:`🔗<class_AudioEffectChorus_property_voice_count>`

.. rst-class:: classref-property-setget

- |void| **set_voice_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_voice_count**\ (\ )

Il numero di voci nell'effetto.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

Il segnale elaborato dell'effetto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
