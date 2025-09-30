:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**Наследует:** :ref:`Object<class_Object>`

Синглтон, который связывает движок с контекстом JavaScript браузера при веб-экспорте.

.. rst-class:: classref-introduction-group

Описание
----------------

Синглтон JavaScriptBridge реализован только в экспорте Web. Он используется для доступа к контексту JavaScript браузера. Это позволяет взаимодействовать со встроенными страницами или вызывать сторонние JavaScript API.

\ **Примечание:** Этот синглтон можно отключить во время сборки для повышения безопасности. По умолчанию синглтон JavaScriptBridge включён. В официальных шаблонах экспорта синглтон JavaScriptBridge также включён. Подробнее см. в разделе :doc:`Компиляция для Web <../engine_details/development/compiling/compiling_for_web>` в документации.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Экспорт для Интернета: вызов JavaScript из скрипта <../tutorials/export/exporting_for_web.html#calling-javascript-from-script>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

Выдается, когда обнаружено обновление для этого прогрессивного веб-приложения, но оно ожидает активации, поскольку активна предыдущая версия. См. :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>`, чтобы принудительно выполнить обновление немедленно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

Создает ссылку на :ref:`Callable<class_Callable>`, которую можно использовать в качестве обратного вызова JavaScript. Ссылка должна сохраняться до тех пор, пока не произойдет обратный вызов, иначе она не будет вызвана вообще. См. :ref:`JavaScriptObject<class_JavaScriptObject>` для использования.

\ **Примечание:** Функция обратного вызова должна принимать ровно один аргумент :ref:`Array<class_Array>`, который будет объектом JavaScript `arguments <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__, преобразованным в массив.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

Создает новый объект JavaScript с помощью конструктора ``new``. ``object`` должен быть допустимым свойством JavaScript ``window``. См. :ref:`JavaScriptObject<class_JavaScriptObject>` для использования.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

Предлагает пользователю загрузить файл, содержащий указанный ``buffer``. Файл будет иметь заданные ``name`` и ``mime`` тип.

\ **Примечание:** Браузер может переопределить `MIME-тип <https://en.wikipedia.org/wiki/Media_type>`__, предоставленный на основе расширения файла ``name``.

\ **Примечание:** Браузеры могут блокировать загрузку, если :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` не вызывается из взаимодействия с пользователем (например, нажатием кнопки).

\ **Примечание:** Браузеры могут запрашивать у пользователя разрешение или блокировать загрузку, если несколько запросов на загрузку выполняются в быстрой последовательности.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Выполнить строку ``code`` как код JavaScript в окне браузера. Это вызов фактической глобальной функции JavaScript ``eval()``.

Если ``use_global_execution_context`` равен ``true``, код будет оценен в глобальном контексте выполнения. В противном случае он оценен в контексте выполнения функции в среде выполнения движка.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

Принудительная синхронизация постоянной файловой системы (если включено).

\ **Примечание:** Это полезно только для модулей или расширений, которые не могут использовать :ref:`FileAccess<class_FileAccess>` для записи файлов.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

Возвращает интерфейс к объекту JavaScript, который может использоваться скриптами. ``interface`` должен быть допустимым свойством `` window`` JavaScript. Обратный вызов должен принимать один аргумент :ref:`Array<class_Array>`, который будет содержать аргументы ``arguments``. См. :ref:`JavaScriptObject<class_JavaScriptObject>` для использования.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

Возвращает ``true``, если заданный ``javascript_object`` имеет тип `[code]ArrayBuffer[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `[code]DataView[/code] <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__ или один из многих `типизированных объектов массива <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Возвращает копию содержимого ``javascript_buffer`` в виде :ref:`PackedByteArray<class_PackedByteArray>`. См. также :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

Возвращает ``true``, если новая версия прогрессивного веб-приложения ожидает активации.

\ **Примечание:** Актуально только при экспорте в качестве прогрессивного веб-приложения.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

Выполняет обновление прогрессивного веб-приложения в реальном времени. Принудительно устанавливает новую версию и перезагружает страницу.

\ **Примечание:** Ваше приложение будет **перезагружено во всех вкладках браузера**.

\ **Примечание:** Актуально только при экспорте в качестве прогрессивного веб-приложения и :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` возвращает ``true``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
