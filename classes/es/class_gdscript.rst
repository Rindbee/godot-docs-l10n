:github_url: hide

.. _class_GDScript:

GDScript
========

**Hereda:** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un guión implementado en el lenguaje de programación GDScript.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A script implemented in the GDScript programming language, saved with the ``.gd`` extension. The script extends the functionality of all objects that instantiate it.

Calling :ref:`new()<class_GDScript_method_new>` creates a new instance of the script. :ref:`Object.set_script()<class_Object_method_set_script>` extends an existing object, if that object's class matches one of the script's base classes.

If you are looking for GDScript's built-in functions, see :ref:`@GDScript<class_@GDScript>` instead.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación de GDScript <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

Devuelve una nueva instancia del script.

::

    var MiClase = load("miclase.gd")
    var instancia = MiClase.new()
    print(instancia.get_script() == MiClase) # Imprime true

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
