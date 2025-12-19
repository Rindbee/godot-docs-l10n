:github_url: hide

.. _class_EditorExportPlatformWeb:

EditorExportPlatformWeb
=======================

**Hereda:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exportador para la Web.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The Web exporter customizes how a web build is handled. In the editor's "Export" window, it is created when adding a new "Web" preset.

\ **Note:** Godot on Web is rendered inside a ``<canvas>`` tag. Normally, the canvas cannot be positioned or resized manually, but otherwise acts as the main :ref:`Window<class_Window>` of the application.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Exporting for the Web <../tutorials/export/exporting_for_web>`

- :doc:`Índice de documentación web <../tutorials/platform/web/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/debug<class_EditorExportPlatformWeb_property_custom_template/debug>`                                                                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/release<class_EditorExportPlatformWeb_property_custom_template/release>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`html/canvas_resize_policy<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/custom_html_shell<class_EditorExportPlatformWeb_property_html/custom_html_shell>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/experimental_virtual_keyboard<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/export_icon<class_EditorExportPlatformWeb_property_html/export_icon>`                                                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/focus_canvas_on_start<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/head_include<class_EditorExportPlatformWeb_property_html/head_include>`                                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`progressive_web_app/background_color<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/display<class_EditorExportPlatformWeb_property_progressive_web_app/display>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/enabled<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/ensure_cross_origin_isolation_headers<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_144x144<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_180x180<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_512x512<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/offline_page<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/orientation<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`                                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/godot_pool_size<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/extensions_support<class_EditorExportPlatformWeb_property_variant/extensions_support>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/thread_support<class_EditorExportPlatformWeb_property_variant/thread_support>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_desktop<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_mobile<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorExportPlatformWeb_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/debug>`

File path to the custom export template used for debug builds. If left empty, the default template is used.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/release>`

File path to the custom export template used for release builds. If left empty, the default template is used.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/canvas_resize_policy:

.. rst-class:: classref-property

:ref:`int<class_int>` **html/canvas_resize_policy** :ref:`🔗<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`

Determines how the canvas should be resized by Godot.

- **None:** The canvas is not automatically resized.

- **Project:** The size of the canvas is dependent on the :ref:`ProjectSettings<class_ProjectSettings>`.

- **Adaptive:** The canvas is automatically resized to fit as much of the web page as possible.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/custom_html_shell:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/custom_html_shell** :ref:`🔗<class_EditorExportPlatformWeb_property_html/custom_html_shell>`

The custom HTML page that wraps the exported web build. If left empty, the default HTML shell is used.

For more information, see the :doc:`Customizing HTML5 Shell <../tutorials/platform/web/customizing_html5_shell>` tutorial.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/experimental_virtual_keyboard** :ref:`🔗<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

If ``true``, embeds support for a virtual keyboard into the web page, which is shown when necessary on touchscreen devices.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/export_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/export_icon** :ref:`🔗<class_EditorExportPlatformWeb_property_html/export_icon>`

If ``true``, the project icon will be used as the favicon for this application's web page.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/focus_canvas_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/focus_canvas_on_start** :ref:`🔗<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`

If ``true``, the canvas will be focused as soon as the application is loaded, if the browser window is already in focus.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/head_include:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/head_include** :ref:`🔗<class_EditorExportPlatformWeb_property_html/head_include>`

Additional HTML tags to include inside the ``<head>``, such as ``<meta>`` tags.

\ **Note:** You do not need to add a ``<title>`` tag, as it is automatically included based on the project's name.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **progressive_web_app/background_color** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`

El color de fondo utilizado detrás de la aplicación web.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/display:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/display** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/display>`

The `display mode <https://developer.mozilla.org/en-US/docs/Web/Manifest/display/>`__ to use for this progressive web application. Different browsers and platforms may not behave the same.

- **Fullscreen:** Displays the app in fullscreen and hides all of the browser's UI elements.

- **Standalone:** Displays the app in a separate window and hides all of the browser's UI elements.

- **Minimal UI:** Displays the app in a separate window and only shows the browser's UI elements for navigation.

- **Browser:** Displays the app as a normal web page.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/enabled** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`

If ``true``, turns this web build into a `progressive web application <https://en.wikipedia.org/wiki/Progressive_web_app>`__ (PWA).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/ensure_cross_origin_isolation_headers** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>`

When enabled, the progressive web app will make sure that each request has cross-origin isolation headers (COEP/COOP).

This can simplify the setup to serve the exported game.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_144x144** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`

File path to the smallest icon for this web application. If not defined, defaults to the project icon.

\ **Note:** If the icon is not 144×144, it will be automatically resized for the final build.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_180x180** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`

File path to the small icon for this web application. If not defined, defaults to the project icon.

\ **Note:** If the icon is not 180×180, it will be automatically resized for the final build.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_512x512** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`

File path to the largest icon for this web application. If not defined, defaults to the project icon.

\ **Note:** If the icon is not 512×512, it will be automatically resized for the final build.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/offline_page:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/offline_page** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`

The page to display, should the server hosting the page not be available. This page is saved in the client's machine.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/orientation:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/orientation** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`

The orientation to use when the web application is run through a mobile device.

- **Any:** No orientation is forced.

- **Landscape:** Forces a horizontal layout (wider than it is taller).

- **Portrait:** Forces a vertical layout (taller than it is wider).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/emscripten_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/emscripten_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`

The number of threads that emscripten will allocate at startup. A smaller value will allocate fewer threads and consume fewer system resources, but you may run the risk of running out of threads in the pool and needing to allocate more threads at run time which may cause a deadlock.

\ **Note:** Some browsers have a hard cap on the number of threads that can be allocated, so it is best to be cautious and keep this number low.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/godot_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/godot_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`

Override for the default size of the :ref:`WorkerThreadPool<class_WorkerThreadPool>`. This setting is used when :ref:`ProjectSettings.threading/worker_pool/max_threads<class_ProjectSettings_property_threading/worker_pool/max_threads>` size is set to ``-1`` (which it is by default). This size must be smaller than :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>` otherwise deadlocks may occur.

When using threads, this size needs to be large enough to accommodate features that rely on having a dedicated thread like :ref:`ProjectSettings.physics/2d/run_on_separate_thread<class_ProjectSettings_property_physics/2d/run_on_separate_thread>` or :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>`. In general, it is best to ensure that this is at least ``4`` and is at least ``2`` or ``3`` less than :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/extensions_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/extensions_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/extensions_support>`

Si es ``true``, habilita la compatibilidad con :ref:`GDExtension<class_GDExtension>` para esta compilación web.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/thread_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/thread_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/thread_support>`

If ``true``, the exported game will support threads. It requires `a "cross-origin isolated" website <https://web.dev/articles/coop-coep>`__, which may be difficult to set up and is limited for security reasons (such as not being able to communicate with third-party websites).

If ``false``, the exported game will not support threads. As a result, it is more prone to performance and audio issues, but will only require to be run on an HTTPS website.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_desktop** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`

If ``true``, allows textures to be optimized for desktop through the S3TC/BPTC algorithm.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_mobile** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`

If ``true`` allows textures to be optimized for mobile through the ETC2/ASTC algorithm.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
