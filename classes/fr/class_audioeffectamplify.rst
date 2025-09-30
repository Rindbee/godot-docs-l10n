:github_url: hide

.. _class_AudioEffectAmplify:

AudioEffectAmplify
==================

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ajoute un effet audio amplifiant à un bus audio.

.. rst-class:: classref-introduction-group

Description
-----------

Augmente ou diminue le volume passé au bus audio.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`         | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_linear<class_AudioEffectAmplify_property_volume_linear>` |         |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioEffectAmplify_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioEffectAmplify_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

La quantité d'amplification en décibels. Les valeurs positives augmentent le son, les valeurs négatives le diminue. La valeur peut aller de -80 à 24 dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectAmplify_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioEffectAmplify_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Montant d'amplification en tant que valeur linéaire.

\ **Note :** Ce membre modifie :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>` par commodité. La valeur renvoyée est équivalente au résultat de :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` sur :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`. Définir ce membre est équivalent à définir :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>` au résultat de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` sur une valeur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
