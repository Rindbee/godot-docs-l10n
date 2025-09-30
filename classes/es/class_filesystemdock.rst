:github_url: hide

.. _class_FileSystemDock:

FileSystemDock
==============

**Hereda:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

El panel del editor de Godot para gestionar los archivos del proyecto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase solo está disponible en :ref:`EditorPlugin<class_EditorPlugin>`\ s y no puede ser instanciada. Puedes acceder a ella usando :ref:`EditorInterface.get_file_system_dock()<class_EditorInterface_method_get_file_system_dock>`.

Mientras que **FileSystemDock** no expone ningún método para la manipulación de archivos, puede escuchar varias señales relacionadas con archivos.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_resource_tooltip_plugin<class_FileSystemDock_method_add_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`navigate_to_path<class_FileSystemDock_method_navigate_to_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_resource_tooltip_plugin<class_FileSystemDock_method_remove_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_FileSystemDock_signal_display_mode_changed:

.. rst-class:: classref-signal

**display_mode_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_display_mode_changed>`

Emitida cuando el usuario cambia el modo de visualización de archivo o el modo dividido.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_file_removed:

.. rst-class:: classref-signal

**file_removed**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_file_removed>`

Emitida cuando el ``file`` dado es eliminado.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_files_moved:

.. rst-class:: classref-signal

**files_moved**\ (\ old_file\: :ref:`String<class_String>`, new_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_files_moved>`

Emitida cuando un archivo es movido de la ruta ``old_file`` a la ruta ``new_file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_color_changed:

.. rst-class:: classref-signal

**folder_color_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_folder_color_changed>`

Emitida cuando el color cambia.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_moved:

.. rst-class:: classref-signal

**folder_moved**\ (\ old_folder\: :ref:`String<class_String>`, new_folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_moved>`

Emitida cuando una carpeta es movida de la ruta ``old_folder`` a la ruta ``new_folder``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_removed:

.. rst-class:: classref-signal

**folder_removed**\ (\ folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_removed>`

Emitida cuando el ``folder`` dado es eliminado.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_inherit:

.. rst-class:: classref-signal

**inherit**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_inherit>`

Emitida cuando se crea una nueva escena que hereda la escena en la ruta ``file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_instantiate:

.. rst-class:: classref-signal

**instantiate**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileSystemDock_signal_instantiate>`

Emitida cuando las escenas dadas se instancian en el editor.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_resource_removed:

.. rst-class:: classref-signal

**resource_removed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_FileSystemDock_signal_resource_removed>`

Emitida cuando se elimina un archivo de un ``resource`` externo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_FileSystemDock_method_add_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **add_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_add_resource_tooltip_plugin>`

Registra un nuevo :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_navigate_to_path:

.. rst-class:: classref-method

|void| **navigate_to_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_method_navigate_to_path>`

Establece la ``path`` dada como seleccionada actualmente, asegurando que el archivo/directorio seleccionado sea visible.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_remove_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **remove_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_remove_resource_tooltip_plugin>`

Elimina un :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`. Falla si el plugin no se agregó previamente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
