:github_url: hide

.. _class_EditorExportPlatformWeb:

EditorExportPlatformWeb
=======================

**Наследует:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экспортер для Интернета.

.. rst-class:: classref-introduction-group

Описание
----------------

Веб-экспортер настраивает способ обработки веб-сборки. В окне «Экспорт» редактора он создается при добавлении нового пресета «Веб».

\ **Примечание:** Godot в Вебе визуализируется внутри тега ``<canvas>``. Обычно холст нельзя позиционировать или изменять вручную, но в остальном он действует как основное :ref:`Window<class_Window>` приложения.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Экспорт для Интернета (Web) <../tutorials/export/exporting_for_web>`

- :doc:`Индекс веб-документации <../tutorials/platform/web/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_EditorExportPlatformWeb_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/debug>`

Путь к файлу пользовательского шаблона экспорта, используемого для отладочных сборок. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/release>`

Путь к файлу пользовательского шаблона экспорта, используемого для релизных сборок. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/canvas_resize_policy:

.. rst-class:: classref-property

:ref:`int<class_int>` **html/canvas_resize_policy** :ref:`🔗<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`

Определяет, как Godot должен изменять размер холста.

- **Нет:** Размер холста не изменяется автоматически.

- **Проект:** Размер холста зависит от :ref:`ProjectSettings<class_ProjectSettings>`.

- **Адаптивный:** Размер холста автоматически изменяется, чтобы вместить как можно большую часть веб-страницы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/custom_html_shell:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/custom_html_shell** :ref:`🔗<class_EditorExportPlatformWeb_property_html/custom_html_shell>`

Пользовательская HTML-страница, которая оборачивает экспортированную веб-сборку. Если оставить пустым, будет использоваться оболочка HTML по умолчанию.

Для получения дополнительной информации см. :doc:`Настройка оболочки HTML5 <../tutorials/platform/web/customizing_html5_shell>` учебник.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/experimental_virtual_keyboard** :ref:`🔗<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`

**Экспериментальное:** Это свойство может быть изменено или удалено в будущих версиях.

Если ``true``, встраивает в веб-страницу поддержку виртуальной клавиатуры, которая отображается при необходимости на устройствах с сенсорным экраном.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/export_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/export_icon** :ref:`🔗<class_EditorExportPlatformWeb_property_html/export_icon>`

Если ``true``, значок проекта будет использоваться в качестве значка веб-страницы этого приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/focus_canvas_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/focus_canvas_on_start** :ref:`🔗<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`

Если ``true``, холст будет сфокусирован сразу после загрузки приложения, если окно браузера уже находится в фокусе.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/head_include:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/head_include** :ref:`🔗<class_EditorExportPlatformWeb_property_html/head_include>`

Дополнительные HTML-теги для включения в ``<head>``, такие как теги ``<meta>``.

\ **Примечание:** Вам не нужно добавлять тег ``<title>``, так как он автоматически включается на основе имени проекта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **progressive_web_app/background_color** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`

Цвет фона, используемый в веб-приложении.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/display:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/display** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/display>`

`Режим отображения <https://developer.mozilla.org/en-US/docs/Web/Manifest/display/>`__ для использования в этом прогрессивном веб-приложении. Разные браузеры и платформы могут вести себя по-разному.

- **Полноэкранный:** Отображает приложение в полноэкранном режиме и скрывает все элементы пользовательского интерфейса браузера.

- **Автономный:** Отображает приложение в отдельном окне и скрывает все элементы пользовательского интерфейса браузера.

- **Минимальный пользовательский интерфейс:** Отображает приложение в отдельном окне и показывает только элементы пользовательского интерфейса браузера для навигации.

- **Браузер:** Отображает приложение как обычную веб-страницу.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/enabled** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`

Если ``true``, то эта веб-сборка превращается в `прогрессивное веб-приложение <https://en.wikipedia.org/wiki/Progressive_web_app>`__ (PWA).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/ensure_cross_origin_isolation_headers** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>`

При включении прогрессивное веб-приложение будет следить за тем, чтобы каждый запрос имел заголовки изоляции между источниками (COEP/COOP). 

Это может упростить настройку для обслуживания экспортированной игры.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_144x144** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`

Путь к файлу наименьшего значка для этого веб-приложения. Если не определено, по умолчанию используется значок проекта.

\ **Примечание:** Если значок не имеет размер 144×144, он будет автоматически изменен для финальной сборки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_180x180** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`

Путь к файлу маленькой иконки для этого веб-приложения. Если не определено, по умолчанию используется иконка проекта.

\ **Примечание:** Если иконка не имеет размер 180×180, она будет автоматически изменена для финальной сборки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_512x512** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`

Путь к файлу самого большого значка для этого веб-приложения. Если не определено, по умолчанию используется значок проекта.

\ **Примечание:** Если значок не имеет размер 512×512, он будет автоматически изменен для финальной сборки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/offline_page:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/offline_page** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`

Страница для отображения, если сервер, на котором размещена страница, недоступен. Эта страница сохраняется на клиентской машине.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/orientation:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/orientation** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`

Ориентация, используемая при запуске веб-приложения через мобильное устройство.

- **Любая:** Ориентация не устанавливается принудительно.

- **Альбомная:** Принудительно устанавливает горизонтальную компоновку (шире, чем выше).

- **Портретная:** Принудительно устанавливает вертикальную компоновку (выше, чем шире).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/emscripten_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/emscripten_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`

Количество потоков, которые emscripten выделит при запуске. Меньшее значение выделит меньше потоков и потребит меньше системных ресурсов, но вы можете столкнуться с риском исчерпания потоков в пуле и необходимости выделять больше потоков во время выполнения, что может привести к взаимоблокировке.

\ **Примечание:** Некоторые браузеры имеют жесткий предел количества потоков, которые могут быть выделены, поэтому лучше быть осторожным и не повышать это число.

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

Если ``true``, включается поддержка :ref:`GDExtension<class_GDExtension>` для этой веб-сборки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/thread_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/thread_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/thread_support>`

Если ``true``, экспортированная игра будет поддерживать потоки. Для этого требуется `веб-сайт «cross-origin-isolated» <https://web.dev/articles/coop-coep>`__, который может быть сложно настроить и который ограничен по соображениям безопасности (например, невозможность связи со сторонними веб-сайтами).

Если ``false``, экспортированная игра не будет поддерживать потоки. В результате она более подвержена проблемам с производительностью и звуком, но для ее запуска потребуется только веб-сайт HTTPS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_desktop** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`

Если ``true``, разрешается оптимизировать текстуры для настольных компьютеров с помощью алгоритма S3TC/BPTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_mobile** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`

Если ``true``, то разрешается оптимизировать текстуры для мобильных устройств с помощью алгоритма ETC2/ASTC.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
