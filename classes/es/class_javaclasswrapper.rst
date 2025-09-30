:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Hereda:** :ref:`Object<class_Object>`

Provides access to the Java Native Interface.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Tutoriales
--------------------

- :doc:`Integrating with Android APIs <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
