:github_url: hide

.. _class_CameraFeed:

CameraFeed
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Подача з камери дає вам доступ до однієї фізичної камери, підключеної до вашого пристрою.

.. rst-class:: classref-introduction-group

Опис
--------

Стрічка камери надає вам доступ до однієї фізичної камери, підключеної до вашого пристрою. Коли цю функцію ввімкнено, Godot почне захоплювати кадри з камери, які потім можна буде використовувати. Див. також :ref:`CameraServer<class_CameraServer>`.

\ **Примітка:** Багато камер повертають зображення YCbCr, які розділені на дві текстури та потребують об'єднання в шейдері. Godot робить це автоматично, якщо ви встановите середовище для відображення зображення з камери у фоновому режимі.

\ **Примітка:** Цей клас наразі реалізовано лише на Linux, Android, macOS та iOS. На інших платформах **CameraFeed** будуть недоступні. Щоб отримати **CameraFeed** на iOS, потрібен плагін камери з `godot-ios-plugins <https://github.com/godotengine/godot-ios-plugins>`__.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`feed_is_active<class_CameraFeed_property_feed_is_active>` | ``false``                          |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`feed_transform<class_CameraFeed_property_feed_transform>` | ``Transform2D(1, 0, 0, -1, 0, 1)`` |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`formats<class_CameraFeed_property_formats>`               | ``[]``                             |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_activate_feed<class_CameraFeed_private_method__activate_feed>`\ (\ ) |virtual|                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_deactivate_feed<class_CameraFeed_private_method__deactivate_feed>`\ (\ ) |virtual|                                                            |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedDataType<enum_CameraFeed_FeedDataType>` | :ref:`get_datatype<class_CameraFeed_method_get_datatype>`\ (\ ) |const|                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_id<class_CameraFeed_method_get_id>`\ (\ ) |const|                                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_name<class_CameraFeed_method_get_name>`\ (\ ) |const|                                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedPosition<enum_CameraFeed_FeedPosition>` | :ref:`get_position<class_CameraFeed_method_get_position>`\ (\ ) |const|                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_texture_tex_id<class_CameraFeed_method_get_texture_tex_id>`\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )         |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_external<class_CameraFeed_method_set_external>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`set_format<class_CameraFeed_method_set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ )         |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_name<class_CameraFeed_method_set_name>`\ (\ name\: :ref:`String<class_String>`\ )                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_position<class_CameraFeed_method_set_position>`\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ )                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_rgb_image<class_CameraFeed_method_set_rgb_image>`\ (\ rgb_image\: :ref:`Image<class_Image>`\ )                                             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_image<class_CameraFeed_method_set_ycbcr_image>`\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ )                                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_images<class_CameraFeed_method_set_ycbcr_images>`\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ ) |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_CameraFeed_signal_format_changed:

.. rst-class:: classref-signal

**format_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_format_changed>`

Видається при зміні формату.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_frame_changed>`

Випускається, коли доступний новий кадр.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CameraFeed_FeedDataType:

.. rst-class:: classref-enumeration

enum **FeedDataType**: :ref:`🔗<enum_CameraFeed_FeedDataType>`

.. _class_CameraFeed_constant_FEED_NOIMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_NOIMAGE** = ``0``

Для каналу не встановлено зображення.

.. _class_CameraFeed_constant_FEED_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_RGB** = ``1``

Подача постачає зображення RGB.

.. _class_CameraFeed_constant_FEED_YCBCR:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR** = ``2``

Подача постачає зображення YCbCr, які потрібно перетворити на RGB.

.. _class_CameraFeed_constant_FEED_YCBCR_SEP:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR_SEP** = ``3``

Подача подає окремі зображення Y та CbCr, які потрібно об’єднати та перетворити на RGB.

.. _class_CameraFeed_constant_FEED_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_EXTERNAL** = ``4``

Корм постачає зовнішнє зображення.

.. rst-class:: classref-item-separator

----

.. _enum_CameraFeed_FeedPosition:

.. rst-class:: classref-enumeration

enum **FeedPosition**: :ref:`🔗<enum_CameraFeed_FeedPosition>`

.. _class_CameraFeed_constant_FEED_UNSPECIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_UNSPECIFIED** = ``0``

Невизначена позиція.

.. _class_CameraFeed_constant_FEED_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_FRONT** = ``1``

Камера встановлена на передній частині пристрою.

.. _class_CameraFeed_constant_FEED_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_BACK** = ``2``

Камера встановлена на задній панелі пристрою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CameraFeed_property_feed_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feed_is_active** = ``false`` :ref:`🔗<class_CameraFeed_property_feed_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Якщо ``true``, канал активний.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_feed_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **feed_transform** = ``Transform2D(1, 0, 0, -1, 0, 1)`` :ref:`🔗<class_CameraFeed_property_feed_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

Перетворення, застосоване до зображення камери.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_formats:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **formats** = ``[]`` :ref:`🔗<class_CameraFeed_property_formats>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_formats**\ (\ )

Формати, які підтримує фід. Кожен запис є ``Словником``, що описує параметри формату.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CameraFeed_private_method__activate_feed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_activate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__activate_feed>`

Викликається, коли активовано подачу з камери.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__deactivate_feed:

.. rst-class:: classref-method

|void| **_deactivate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__deactivate_feed>`

Викликається, коли подача камери вимкнена.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_datatype:

.. rst-class:: classref-method

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **get_datatype**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_datatype>`

Повертає тип даних зображення каналу.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_id>`

Повертає унікальний ідентифікатор для цього каналу.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_name>`

Повертає назву камери.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_position:

.. rst-class:: classref-method

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **get_position**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_position>`

Повертає положення камери на пристрої.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_texture_tex_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_texture_tex_id**\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ ) :ref:`🔗<class_CameraFeed_method_get_texture_tex_id>`

Повертає ідентифікатор текстури (може використовуватися деякими зовнішніми бібліотеками, яким для запису даних потрібен дескриптор текстури).

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_external:

.. rst-class:: classref-method

|void| **set_external**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraFeed_method_set_external>`

Встановлює канал як зовнішній канал, наданий іншою бібліотекою.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_CameraFeed_method_set_format>`

Встановлює параметри формату стрічки для заданого ``index`` у масиві :ref:`formats<class_CameraFeed_property_formats>`. Повертає ``true`` у разі успіху. За замовчуванням потік, закодований YUYV, перетворюється на :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`. Формат виводу потоку, закодованого YUYV, можна змінити, встановивши запис ``output`` ``parameters`` на одне з наступних значень:

- ``"separate"`` призведе до :ref:`FEED_YCBCR_SEP<class_CameraFeed_constant_FEED_YCBCR_SEP>`;

- ``"grayscale"`` призведе до ненасиченого :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`;

- ``"copy"`` призведе до :ref:`FEED_YCBCR<class_CameraFeed_constant_FEED_YCBCR>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_name:

.. rst-class:: classref-method

|void| **set_name**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CameraFeed_method_set_name>`

Встановлює назву камери.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ ) :ref:`🔗<class_CameraFeed_method_set_position>`

Встановлює положення цієї камери.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_rgb_image:

.. rst-class:: classref-method

|void| **set_rgb_image**\ (\ rgb_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_rgb_image>`

Встановлює зображення RGB для цього каналу.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_image:

.. rst-class:: classref-method

|void| **set_ycbcr_image**\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_image>`

Встановлює зображення YCbCr для цього каналу.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_images:

.. rst-class:: classref-method

|void| **set_ycbcr_images**\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_images>`

Sets Y and CbCr images for this feed.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
