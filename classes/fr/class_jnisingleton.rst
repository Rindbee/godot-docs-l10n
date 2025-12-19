:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**Hérite de :** :ref:`Object<class_Object>`

L'instance unique qui connecte le moteur de jeu avec les greffons Android pour s'interfacer sur du code natif Android.

.. rst-class:: classref-introduction-group

Description
-----------

Le JNISingleton est implémenté seulement dans l'export Android. Il est utilisé pour appeler des méthodes et connecter des signaux d'un plugin Android écrit en Java ou en Kotlin. Les méthodes et les signaux peuvent être appelés et connectés au JNISingleton comme s'il s'agit d'un Node. Voir `Java Native Interface - Wikipedia <https://fr.wikipedia.org/wiki/Java_Native_Interface>`__ pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Créer des greffons Android <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_java_method<class_JNISingleton_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_JNISingleton_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JNISingleton_method_has_java_method>`

Returns ``true`` if the given ``method`` name exists in the JNISingleton's Java methods.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
