:github_url: hide

.. _class_AudioEffectPhaser:

AudioEffectPhaser
=================

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ajoute un effet audio phaser (ou modulateur de phase) à un bus audio.

Combine le signal original avec une copie qui est légèrement hors phase avec l'original.

.. rst-class:: classref-introduction-group

Description
-----------

Combine des signaux déphasés avec le signal original. Le mouvement des signaux déphasés est contrôlé par un oscillateur à basse fréquence.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`depth<class_AudioEffectPhaser_property_depth>`               | ``1.0``    |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`feedback<class_AudioEffectPhaser_property_feedback>`         | ``0.7``    |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`range_max_hz<class_AudioEffectPhaser_property_range_max_hz>` | ``1600.0`` |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`range_min_hz<class_AudioEffectPhaser_property_range_min_hz>` | ``440.0``  |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`rate_hz<class_AudioEffectPhaser_property_rate_hz>`           | ``0.5``    |
   +---------------------------+--------------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioEffectPhaser_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_AudioEffectPhaser_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Détermine à quelle hauteur les fréquences du filtre balayent. Une faible valeur affectera principalement les fréquences basses. Une haute valeur peut balayer haut dans les aigus. La valeur peut aller de ``0.1`` à ``4.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback** = ``0.7`` :ref:`🔗<class_AudioEffectPhaser_property_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback**\ (\ )

Pourcentage de sortie du son modifié. La valeur peut aller de 0,1 à 0.9.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_max_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_max_hz** = ``1600.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_max_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_max_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_max_hz**\ (\ )

Détermine la fréquence maximale affectée par les modulations de l'oscillateur basse fréquence, en Hz. La valeur peut aller de 10 à 10000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_min_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_min_hz** = ``440.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_min_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_min_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_min_hz**\ (\ )

Détermine la fréquence minimale affectée par les modulations de l'oscillateur basse fréquence, en Hz. La valeur peut aller de 10 à 10000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **rate_hz** = ``0.5`` :ref:`🔗<class_AudioEffectPhaser_property_rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_rate_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rate_hz**\ (\ )

Ajuste le taux de Hz à laquelle l'effet balaye en haut et en bas dans la plage de fréquences.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
