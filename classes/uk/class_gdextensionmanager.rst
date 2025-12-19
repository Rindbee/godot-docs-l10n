:github_url: hide

.. _class_GDExtensionManager:

GDExtensionManager
==================

**Успадковує:** :ref:`Object<class_Object>`

Забезпечує доступ до функцій GDExtension.

.. rst-class:: classref-introduction-group

Опис
--------

GDExtensionManager навантажень, ініціалізує та відстежує всі доступні бібліотеки :ref:`GDExtension<class_GDExtension>`.

\ **Примітка:** Не хвилюйтеся про GDExtension, якщо ви знаєте, що ви робите.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Огляд GDExtension <../tutorials/scripting/gdextension/what_is_gdextension>`

- :doc:`Приклад GDExtension в C++ <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDExtension<class_GDExtension>`                 | :ref:`get_extension<class_GDExtensionManager_method_get_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_loaded_extensions<class_GDExtensionManager_method_get_loaded_extensions>`\ (\ ) |const|                                                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_extension_loaded<class_GDExtensionManager_method_is_extension_loaded>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension<class_GDExtensionManager_method_load_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`load_extension_from_function<class_GDExtensionManager_method_load_extension_from_function>`\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`reload_extension<class_GDExtensionManager_method_reload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` | :ref:`unload_extension<class_GDExtensionManager_method_unload_extension>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                   |
   +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_GDExtensionManager_signal_extension_loaded:

.. rst-class:: classref-signal

**extension_loaded**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_loaded>`

Видається після того, як редактор завершив завантаження нового розширення.

\ **Примітка.** Цей сигнал видається лише у збірках редактора.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extension_unloading:

.. rst-class:: classref-signal

**extension_unloading**\ (\ extension\: :ref:`GDExtension<class_GDExtension>`\ ) :ref:`🔗<class_GDExtensionManager_signal_extension_unloading>`

Видається перед тим, як редактор починає вивантажувати розширення.

\ **Примітка.** Цей сигнал видається лише у збірках редактора.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_signal_extensions_reloaded:

.. rst-class:: classref-signal

**extensions_reloaded**\ (\ ) :ref:`🔗<class_GDExtensionManager_signal_extensions_reloaded>`

Після того, як редактор закінчив перевантаження одного або декількох розширень.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GDExtensionManager_LoadStatus:

.. rst-class:: classref-enumeration

enum **LoadStatus**: :ref:`🔗<enum_GDExtensionManager_LoadStatus>`

.. _class_GDExtensionManager_constant_LOAD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_OK** = ``0``

Подовжувач успішно завантажив.

.. _class_GDExtensionManager_constant_LOAD_STATUS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_FAILED** = ``1``

Подовжувач не вдалося завантажити, можливо, оскільки він не існує або не має ніяких залежностей.

.. _class_GDExtensionManager_constant_LOAD_STATUS_ALREADY_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_ALREADY_LOADED** = ``2``

Розширення вже було завантажено.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NOT_LOADED** = ``3``

Розширення не завантажується.

.. _class_GDExtensionManager_constant_LOAD_STATUS_NEEDS_RESTART:

.. rst-class:: classref-enumeration-constant

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **LOAD_STATUS_NEEDS_RESTART** = ``4``

Подовжувач вимагає застосування для перезавантаження повністю.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GDExtensionManager_method_get_extension:

.. rst-class:: classref-method

:ref:`GDExtension<class_GDExtension>` **get_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_get_extension>`

Повертаємо :ref:`GDExtension<class_GDExtension>` на вказаному файлі ``path``, або ``null``, якщо він не був завантажений або не існує.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_get_loaded_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_loaded_extensions**\ (\ ) |const| :ref:`🔗<class_GDExtensionManager_method_get_loaded_extensions>`

Повертаємо шлях до файлів всіх, які в даний час завантажені розширення.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_is_extension_loaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_extension_loaded**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDExtensionManager_method_is_extension_loaded>`

Повертає ``true``, якщо розширення в даному файлі ``path`` уже успішно завантажено. Дивіться також :ref:`get_loaded_extensions()<class_GDExtensionManager_method_get_loaded_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension>`

Завантажує розширення за абсолютним шляхом до файлу. ``path`` має вказувати на коректне значення :ref:`GDExtension<class_GDExtension>`. У разі успіху повертає :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_load_extension_from_function:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **load_extension_from_function**\ (\ path\: :ref:`String<class_String>`, init_func\: ``const GDExtensionInitializationFunction*``\ ) :ref:`🔗<class_GDExtensionManager_method_load_extension_from_function>`

Loads the extension already in address space via the given path and initialization function. The ``path`` needs to be unique and start with ``"libgodot://"``. Returns :ref:`LOAD_STATUS_OK<class_GDExtensionManager_constant_LOAD_STATUS_OK>` if successful.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_reload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **reload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_reload_extension>`

Перезавантажує розширення за вказаним шляхом до файлу. ``path`` має вказувати на коректне значення :ref:`GDExtension<class_GDExtension>`, інакше цей метод може повернути або :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>`, або :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

\ **Примітка:** Ви можете перезавантажувати розширення лише в редакторі. У релізних збірках цей метод завжди завершується невдачею та повертає :ref:`LOAD_STATUS_FAILED<class_GDExtensionManager_constant_LOAD_STATUS_FAILED>`.

.. rst-class:: classref-item-separator

----

.. _class_GDExtensionManager_method_unload_extension:

.. rst-class:: classref-method

:ref:`LoadStatus<enum_GDExtensionManager_LoadStatus>` **unload_extension**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDExtensionManager_method_unload_extension>`

Вивантажує розширення за допомогою файлової доріжки. ``Параметр шляху`` повинен вказувати на вже завантажені :ref:`GDExtension<class_GDExtension>`, інакше цей метод повертає :ref:`LOAD_STATUS_NOT_LOADED<class_GDExtensionManager_constant_LOAD_STATUS_NOT_LOADED>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
