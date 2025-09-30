:github_url: hide

.. _class_TextServerFallback:

TextServerFallback
==================

**Hérite de :** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

.. rst-class:: classref-introduction-group

Description
-----------

A fallback implementation of Godot's text server. This fallback is faster than :ref:`TextServerAdvanced<class_TextServerAdvanced>` for processing a lot of text, but it does not support BiDi and complex text layout.

\ **Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option ``module_text_server_fb_enabled=yes``. When building with **TextServerFallback**, consider also disabling :ref:`TextServerAdvanced<class_TextServerAdvanced>` with ``module_text_server_adv_enabled=no`` to reduce binary size.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
