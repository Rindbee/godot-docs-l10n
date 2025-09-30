:github_url: hide

.. _class_AudioStreamPlaybackInteractive:

AudioStreamPlaybackInteractive
==============================

**Hérite de :** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Composant de lecture d':ref:`AudioStreamInteractive<class_AudioStreamInteractive>`.

.. rst-class:: classref-introduction-group

Description
-----------

Composant de lecture d':ref:`AudioStreamInteractive<class_AudioStreamInteractive>`. Contient des fonctions pour changer le clip actuellement joué.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_current_clip_index<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`\ (\ ) |const|                                          |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ )                              |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip_by_name<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioStreamPlaybackInteractive_method_get_current_clip_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_clip_index**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`

Renvoie l'index du clip en cours de lecture. Vous pouvez utiliser ceci pour obtenir le nom du clip en cours de lecture avec :ref:`AudioStreamInteractive.get_clip_name()<class_AudioStreamInteractive_method_get_clip_name>`.

\ **Exemple :** Obtenez le nom de clip en cours de lecture à partir d'un nœud :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`.


.. tabs::

 .. code-tab:: gdscript

    var nom_clip_lecture = flux.get_clip_name(get_stream_playback().get_current_clip_index())



.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip:

.. rst-class:: classref-method

|void| **switch_to_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`

Change vers un clip (par index).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name:

.. rst-class:: classref-method

|void| **switch_to_clip_by_name**\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`

Change vers un clip (par nom).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
