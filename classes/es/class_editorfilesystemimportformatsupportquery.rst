:github_url: hide

.. _class_EditorFileSystemImportFormatSupportQuery:

EditorFileSystemImportFormatSupportQuery
========================================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Used to query and configure import format support.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_file_extensions<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`\ (\ ) |virtual| |required| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_active<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`\ (\ ) |virtual| |required| |const|                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_query<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`\ (\ ) |virtual| |required| |const|                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_file_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`

Devuelve las extensiones de archivo admitidas.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_active**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`

Devuelve si este importador está activo.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_query**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`

Query support. Return ``false`` if import must not continue.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
