:github_url: hide

.. _class_ImageFormatLoaderExtension:

ImageFormatLoaderExtension
==========================

**Наследует:** :ref:`ImageFormatLoader<class_ImageFormatLoader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовый класс для создания расширений :ref:`ImageFormatLoader<class_ImageFormatLoader>` (добавление поддержки дополнительных форматов изображений).

.. rst-class:: classref-introduction-group

Описание
----------------

Движок поддерживает несколько форматов изображений из коробки (PNG, SVG, JPEG, WebP и многие другие), но вы можете реализовать поддержку дополнительных форматов изображений, расширив этот класс.

Обязательно соблюдайте задокументированные типы возвращаемых данных и значения. Вам следует создать его экземпляр и вызвать :ref:`add_format_loader()<class_ImageFormatLoaderExtension_method_add_format_loader>`, чтобы зарегистрировать этот загрузчик во время фазы инициализации.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_load_image<class_ImageFormatLoaderExtension_private_method__load_image>`\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_format_loader<class_ImageFormatLoaderExtension_method_add_format_loader>`\ (\ )                                                                                                                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_format_loader<class_ImageFormatLoaderExtension_method_remove_format_loader>`\ (\ )                                                                                                                                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ImageFormatLoaderExtension_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`

Возвращает список расширений файлов для этого формата изображения. Файлы с заданными расширениями будут рассматриваться как файлы изображений и загружаться с использованием этого класса.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_private_method__load_image:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_load_image**\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__load_image>`

Загружает содержимое ``fileaccess`` в предоставленный ``image``.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_add_format_loader:

.. rst-class:: classref-method

|void| **add_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_add_format_loader>`

Добавьте этот загрузчик формата в движок, что позволит ему распознавать расширения файлов, возвращаемые :ref:`_get_recognized_extensions()<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_remove_format_loader:

.. rst-class:: classref-method

|void| **remove_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_remove_format_loader>`

Удалите этот загрузчик формата из движка.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
