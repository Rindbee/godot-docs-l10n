:github_url: hide

.. _class_EditorExportPlatformLinuxBSD:

EditorExportPlatformLinuxBSD
============================

**Наследует:** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экспортер для Linux/BSD.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Экспорт для Linux <../tutorials/export/exporting_for_linux>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`binary_format/architecture<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`             |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`binary_format/embed_pck<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/debug<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`                       |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/release<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`debug/export_console_wrapper<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`shader_baker/enabled<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`                         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/cleanup_script<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`ssh_remote_deploy/enabled<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`               |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/extra_args_scp<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/extra_args_ssh<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/host<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`                     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/port<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`                     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/run_script<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`texture_format/etc2_astc<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`texture_format/s3tc_bptc<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`

Архитектура исполняемого файла приложения.

Поддерживаемые архитектуры: ``x86_32``, ``x86_64``, ``arm64``, ``arm32``, ``rv64``, ``ppc64`` и ``loongarch64``.

Официальные шаблоны экспорта включают только двоичные файлы ``x86_32``, ``x86_64``, ``arm32`` и ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`

Если ``true``, ресурсы проекта внедряются в исполняемый файл.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`

Путь к пользовательскому шаблону экспорта. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`

Путь к пользовательскому шаблону экспорта. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`

Если ``true``, то консольная оболочка экспортируется вместе с основным исполняемым файлом, что позволяет запустить проект с включенным консольным выводом.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`

If ``true``, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

\ **Note:** When exporting as a dedicated server, the shader baker is always disabled since no rendering is performed.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>`

Код скрипта для выполнения на удаленном хосте после завершения работы приложения.

В скрипте можно использовать следующие переменные:

- ``{temp_dir}`` - Путь к временной папке на удаленном компьютере, в которую загружаются приложение и скрипты.

- ``{archive_name}`` - Имя ZIP-архива, содержащего загруженное приложение.

- ``{exe_name}`` - Имя исполняемого файла приложения.

- ``{cmd_args}`` - Массив аргументов командной строки для приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`

Позволяет выполнять удаленное развертывание с использованием SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>`

Массив дополнительных аргументов командной строки, переданных SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>`

Массив дополнительных аргументов командной строки, переданных в SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`

Имя пользователя и адрес SSH удаленного хоста в формате ``user@address``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`

Номер порта SSH удаленного хоста.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`

Код скрипта для выполнения на удаленном хосте при запуске приложения.

В скрипте можно использовать следующие переменные:

- ``{temp_dir}`` - Путь к временной папке на удаленном компьютере, в которую загружаются приложение и скрипты.

- ``{archive_name}`` - Имя ZIP-архива, содержащего загруженное приложение.

- ``{exe_name}`` - Имя исполняемого файла приложения.

- ``{cmd_args}`` - Массив аргументов командной строки для приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`

Если ``true``, текстуры проекта экспортируются в формате ETC2/ASTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`

Если ``true``, текстуры проекта экспортируются в формате S3TC/BPTC.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
