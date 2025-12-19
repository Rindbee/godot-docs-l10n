:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**Hereda:** :ref:`Object<class_Object>`

Singleton que conecta el motor con los plugins de Android para interactuar con código nativo de Android.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El JNISingleton solo se implementa en la exportación de Android. Se utiliza para llamar a métodos y conectar señales desde un plugin de Android escrito en Java o Kotlin. Los métodos y las señales se pueden llamar y conectar al JNISingleton como si fuera un Node. Véase `Java Native Interface - Wikipedia <https://en.wikipedia.org/wiki/Java_Native_Interface>`__ para obtener más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Crear plugins de Android <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_java_method<class_JNISingleton_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_JNISingleton_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JNISingleton_method_has_java_method>`

Returns ``true`` if the given ``method`` name exists in the JNISingleton's Java methods.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
