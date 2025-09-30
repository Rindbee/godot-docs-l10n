:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**Hérite de :** :ref:`Object<class_Object>`

L'instance unique qui connecte le moteur de jeu avec les greffons Android pour s'interfacer sur du code natif Android.

.. rst-class:: classref-introduction-group

Description
-----------

The JNISingleton is implemented only in the Android export. It's used to call methods and connect signals from an Android plugin written in Java or Kotlin. Methods and signals can be called and connected to the JNISingleton as if it is a Node. See `Java Native Interface - Wikipedia <https://en.wikipedia.org/wiki/Java_Native_Interface>`__ for more information.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Créer des greffons Android <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
