:github_url: hide

.. _class_TextServerManager:

TextServerManager
=================

**Hereda:** :ref:`Object<class_Object>`

Un singleton para administrar implementaciones de :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**TextServerManager** es el backend de la API para cargar, enumerar y cambiar :ref:`TextServer<class_TextServer>`\ s.

\ **Nota:** Es posible cambiar de servidor de texto en tiempo de ejecución, pero esto invalidará todas las fuentes y los búferes de texto. Asegúrate de descargar todos los controles, fuentes y temas antes de hacerlo.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_TextServerManager_method_add_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`find_interface<class_TextServerManager_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_interface<class_TextServerManager_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_TextServerManager_method_get_interface_count>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_TextServerManager_method_get_interfaces>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_primary_interface<class_TextServerManager_method_get_primary_interface>`\ (\ ) |const|                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_TextServerManager_method_remove_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_primary_interface<class_TextServerManager_method_set_primary_interface>`\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_TextServerManager_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_added>`

Emitida cuando se ha añadido una nueva interfaz.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_removed>`

Emitida cuando se quita una interfaz.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TextServerManager_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_add_interface>`

Registra una interfaz :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_find_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TextServerManager_method_find_interface>`

Encuentra una interfaz por su ``name``.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface>`

Devuelve la interfaz registrada en un índice dado.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface_count>`

Devuelve el número de interfaces registradas actualmente.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interfaces>`

Devuelve una lista de interfaces disponibles, con el índice y el nombre de cada interfaz.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_primary_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_primary_interface**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_primary_interface>`

Devuelve la interfaz principal :ref:`TextServer<class_TextServer>` actualmente en uso.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_remove_interface>`

Elimina una interfaz. Todas las fuentes y cachés de texto conformado deben ser liberadas antes de eliminar una interfaz.

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_set_primary_interface:

.. rst-class:: classref-method

|void| **set_primary_interface**\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_set_primary_interface>`

Establece la interfaz principal de :ref:`TextServer<class_TextServer>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
