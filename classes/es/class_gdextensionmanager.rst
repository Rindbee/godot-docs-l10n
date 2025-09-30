:github_url: hide

.. _class_GDExtensionManager:

GDExtensionManager
==================

**Hereda:** :ref:`Object<class_Object>`

Proporciona acceso a la funcionalidad de GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GDExtensionManager carga, inicializa y realiza un seguimiento de todas las bibliotecas :ref:`GDExtension<class_GDExtension>` disponibles en el proyecto.

\ **Nota:** No se preocupe por GDExtension a menos que sepa lo que está haciendo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Descripción general de GDExtension <../tutorials/scripting/gdextension/what_is_gdextension>`

- :doc:`Ejemplo de GDExtension en C++ <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDExtension<class_GDExtension>`                 | :ref:`get_extension<class_GDExtensionManager_method_get_extension>`\ (\ path\: :ref:`String<class_String>`\ )                     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_loaded_extensions<class_GDExtensionManager_method_get_loaded_extensions>`\ (\ ) |const|                                 |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_extension_loaded<class_GDExtensionManager_method_is_extension_loaded>`\ (\ path\: :ref:`String<class_String>`\ ) |const| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension<class_GDExtensionManager_method_load_extension>`\ (\ path\: :ref:`String<class_String>`\ )                   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`reload_extension<class_GDExtensionManager_method_reload_extension>`\ (\ path\: :ref:`String<class_String>`\ )               |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`unload_extension<class_GDExtensionManager_method_unload_extension>`\ (\ path\: :ref:`String<class_String>`\ )               |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_GDExtensionManager_signal_extension_loaded:

.. rst-class:: classref-signal

**extension_loaded**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_loaded>`

Emitted after the editor has finished loading a new extension.

\ **Note:** This signal is only emitted in editor builds.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extension_unloading:

.. rst-class:: classref-signal

**extension_unloading**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_unloading>`

Emitted before the editor starts unloading an extension.

\ **Note:** This signal is only emitted in editor builds.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extensions_reloaded:

.. rst-class:: classref-signal

**extensions_reloaded**\ (\ ) :ref:`🔗<class_GDExtensionManager_signal_extensions_reloaded>`

Emitted after the editor has finished reloading one or more extensions.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GDExtensionManager_LoadStatus:

.. rst-class:: classref-enumeration

enum **LoadStatus**: :ref:`🔗<enum_GDExtensionManager_LoadStatus>`

.. _class_GDExtensionManager_constant_LOAD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_OK** = ``0``

La extensión se ha cargado correctamente.

.. _class_GDExtensionManager_constant_LOAD_STATUS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_FAILED** = ``1``

La extensión no se pudo cargar, posiblemente porque no existe o le faltan dependencias.

.. _class_GDExtensionManager_constant_LOAD_STATUS_ALREADY_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_ALREADY_LOADED** = ``2``

La extensión ya ha sido cargada.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NOT_LOADED** = ``3``

La extensión no se ha cargado.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NEEDS_RESTART:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NEEDS_RESTART** = ``4``

La extensión requiere que la aplicación se reinicie para cargarse completamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GDExtensionManager_method_get_extension:

.. rst-class:: classref-method

:ref:`GDExtension<class_GDExtension>` **get_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_get_extension>`

Returns the :ref:`GDExtension<class_GDExtension>` at the given file ``path``, or ``null`` if it has not been loaded or does not exist.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_get_loaded_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_extensions**\ (\ ) |const| :ref:`🔗<class_GDExtensionManager_method_get_loaded_extensions>`

Returns the file paths of all currently loaded extensions.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_is_extension_loaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_extension_loaded**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDExtensionManager_method_is_extension_loaded>`

Returns ``true`` if the extension at the given file ``path`` has already been loaded successfully. See also :ref:`get_loaded_extensions()<class_GDExtensionManager_method_get_loaded_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension>`

Loads an extension by absolute file path. The ``path`` needs to point to a valid :ref:`GDExtension<class_GDExtension>`. Returns :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>` if successful.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_reload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **reload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_reload_extension>`

Reloads the extension at the given file path. The ``path`` needs to point to a valid :ref:`GDExtension<class_GDExtension>`, otherwise this method may return either :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>` or :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

\ **Note:** You can only reload extensions in the editor. In release builds, this method always fails and returns :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_unload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **unload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_unload_extension>`

Unloads an extension by file path. The ``path`` needs to point to an already loaded :ref:`GDExtension<class_GDExtension>`, otherwise this method returns :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
