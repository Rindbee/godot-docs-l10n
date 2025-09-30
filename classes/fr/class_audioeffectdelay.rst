:github_url: hide

.. _class_AudioEffectDelay:

AudioEffectDelay
================

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ajoute un effet audio de retard à un bus audio. Joue le signal d'entrée après une période de temps.

Deux options de retard et de rétroaction.

.. rst-class:: classref-introduction-group

Description
-----------

Joue le signal d'entrée après une période de temps. Le signal retardé peut être joué plusieurs fois pour créer un écho qui s'amortit dans le temps. Les effets de retard vont d'un subtil écho à un mélange prononcé de sons précédents avec les nouveaux sons.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectDelay_property_dry>`                             | ``1.0``     |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`feedback_active<class_AudioEffectDelay_property_feedback_active>`     | ``false``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_delay_ms<class_AudioEffectDelay_property_feedback_delay_ms>` | ``340.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_level_db<class_AudioEffectDelay_property_feedback_level_db>` | ``-6.0``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_lowpass<class_AudioEffectDelay_property_feedback_lowpass>`   | ``16000.0`` |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`tap1_active<class_AudioEffectDelay_property_tap1_active>`             | ``true``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_delay_ms<class_AudioEffectDelay_property_tap1_delay_ms>`         | ``250.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_level_db<class_AudioEffectDelay_property_tap1_level_db>`         | ``-6.0``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_pan<class_AudioEffectDelay_property_tap1_pan>`                   | ``0.2``     |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`tap2_active<class_AudioEffectDelay_property_tap2_active>`             | ``true``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_delay_ms<class_AudioEffectDelay_property_tap2_delay_ms>`         | ``500.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_level_db<class_AudioEffectDelay_property_tap2_level_db>`         | ``-12.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_pan<class_AudioEffectDelay_property_tap2_pan>`                   | ``-0.4``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioEffectDelay_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectDelay_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

Pourcentage de sortie du son original. À 0, seul les sons délayés sont sortis. La valeur peut aller de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feedback_active** = ``false`` :ref:`🔗<class_AudioEffectDelay_property_feedback_active>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_feedback_active**\ (\ )

Si ``true``, la rétroaction est activée.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_delay_ms** = ``340.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_delay_ms**\ (\ )

Retard de rétroaction en millisecondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_level_db**\ (\ )

Niveau sonore pour le retour.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_lowpass:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_lowpass** = ``16000.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_lowpass>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_lowpass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_lowpass**\ (\ )

Filtre passe-bas pour rétroaction, en Hz. Les fréquences inférieures à cette valeur sont filtrées hors du signal source.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap1_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap1_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap1_active**\ (\ )

Si ``true``, le premier écho sera activé.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_delay_ms** = ``250.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_delay_ms**\ (\ )

Délai du premier écho en millisecondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_level_db**\ (\ )

Niveau sonore pour le premier écho.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_pan** = ``0.2`` :ref:`🔗<class_AudioEffectDelay_property_tap1_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_pan**\ (\ )

La balance gauche/droite pour le premier écho. La valeur peut aller de -1 (uniquement à gauche) à 1 (uniquement à droite).

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap2_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap2_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap2_active**\ (\ )

Si ``true``, le second écho sera activé.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_delay_ms** = ``500.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_delay_ms**\ (\ )

Délai du second écho en millisecondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_level_db** = ``-12.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_level_db**\ (\ )

Niveau sonore le second écho.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_pan** = ``-0.4`` :ref:`🔗<class_AudioEffectDelay_property_tap2_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_pan**\ (\ )

La position gauche-droite pour le second écho. La valeur peut aller de -1 (complètement à gauche) à 1 (complètement à droite).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
