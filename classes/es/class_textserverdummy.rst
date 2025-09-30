:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**Hereda:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un servidor de texto ficticio que no puede renderizar texto ni gestionar fuentes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una interfaz :ref:`TextServer<class_TextServer>` ficticia que no hace nada. Útil para liberar memoria cuando no es necesario renderizar texto, ya que los servidores de texto consumen muchos recursos. También se puede utilizar para comparaciones de rendimiento en GUIs complejas para comprobar el impacto del renderizado de texto.

Un servidor de texto ficticio está siempre disponible al inicio de un proyecto. He aquí cómo acceder a él:

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # Si los otros servidores de texto no son necesarios, pueden ser eliminados:
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

El argumento de línea de comandos ``--text-driver Dummy`` (sensible a mayúsculas y minúsculas) puede ser usado para forzar el :ref:`TextServer<class_TextServer>` "Dummy" en cualquier proyecto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
