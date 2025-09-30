:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Hérite de :** :ref:`Object<class_Object>`

Fournit l'accès à l'interface native Java.

.. rst-class:: classref-introduction-group

Description
-----------

The JavaClassWrapper singleton provides a way for the Godot application to send and receive data through the `Java Native Interface <https://developer.android.com/training/articles/perf-jni>`__ (JNI).

\ **Note:** This singleton is only available in Android builds.

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **Warning:** When calling Java methods, be sure to check :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` to check if the method threw an exception.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Intégration avec les API Android <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`get_exception<class_JavaClassWrapper_method_get_exception>`\ (\ )                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`   | :ref:`wrap<class_JavaClassWrapper_method_wrap>`\ (\ name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

Returns the Java exception from the last call into a Java class. If there was no exception, it will return ``null``.

\ **Note:** This method only works on Android. On every other platform, this method will always return ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Wraps a class defined in Java, and returns it as a :ref:`JavaClass<class_JavaClass>` :ref:`Object<class_Object>` type that Godot can interact with.

When wrapping inner (nested) classes, use ``$`` instead of ``.`` to separate them. For example, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` wraps the **WindowManager.LayoutParams** class.

\ **Note:** To invoke a constructor, call a method with the same name as the class. For example:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Note:** This method only works on Android. On every other platform, this method does nothing and returns an empty :ref:`JavaClass<class_JavaClass>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
