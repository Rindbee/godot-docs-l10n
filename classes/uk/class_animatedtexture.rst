:github_url: hide

.. _class_AnimatedTexture:

AnimatedTexture
===============

**Застаріло:** This class does not work properly in current versions and may be removed in the future. There is currently no equivalent workaround.

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Проксі-текстура для простої анімації на основі кадрів.

.. rst-class:: classref-introduction-group

Опис
--------

**AnimatedTexture** — це формат ресурсу для анімації на основі кадрів, у якому декілька текстур можна автоматично об’єднувати в ланцюг із попередньо визначеною затримкою для кожного кадру. На відміну від :ref:`AnimationPlayer<class_AnimationPlayer>` або :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, він не є :ref:`Node<class_Node>`, але має перевагу в тому, що його можна використовувати будь-де, де можна використовувати ресурс :ref:`Texture2D<class_Texture2D>`, наприклад. у :ref:`TileSet<class_TileSet>`.

 Відтворенням анімації керує властивість :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`, а також тривалість кожного кадру (див. :ref:`set_frame_duration()<class_AnimatedTexture_method_set_frame_duration>`). Анімація повторюється, тобто вона автоматично перезапускається з кадру 0 після відтворення останнього кадру.

\ **AnimatedTexture** наразі вимагає, щоб усі текстури рамки мали однаковий розмір, інакше більші текстури будуть обрізані відповідно до найменшої.

\ **Примітка: ** AnimatedTexture не підтримує використання :ref:`AtlasTexture<class_AtlasTexture>`. Кожен кадр має бути окремою :ref:`Texture2D<class_Texture2D>`.

\ **Попередження: ** Поточна реалізація неефективна для сучасних рендерів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`current_frame<class_AnimatedTexture_property_current_frame>` |                                                                                        |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`frames<class_AnimatedTexture_property_frames>`               | ``1``                                                                                  |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`one_shot<class_AnimatedTexture_property_one_shot>`           | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`pause<class_AnimatedTexture_property_pause>`                 | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                            | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`     | ``1.0``                                                                                |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_frame_duration<class_AnimatedTexture_method_get_frame_duration>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_frame_texture<class_AnimatedTexture_method_get_frame_texture>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_duration<class_AnimatedTexture_method_set_frame_duration>`\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_texture<class_AnimatedTexture_method_set_frame_texture>`\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_AnimatedTexture_constant_MAX_FRAMES:

.. rst-class:: classref-constant

**MAX_FRAMES** = ``256`` :ref:`🔗<class_AnimatedTexture_constant_MAX_FRAMES>`

Максимальна кількість кадрів, яку підтримує **AnimatedTexture**. Якщо вам потрібно більше кадрів у вашій анімації, використовуйте :ref:`AnimationPlayer<class_AnimationPlayer>` або :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimatedTexture_property_current_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_frame** :ref:`🔗<class_AnimatedTexture_property_current_frame>`

.. rst-class:: classref-property-setget

- |void| **set_current_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_frame**\ (\ )

Встановлює поточний видимий кадр текстури. Встановлення цього кадру під час відтворення скидає час поточного кадру, тому новий вибраний кадр відтворюється протягом усієї заданої тривалості кадру.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **frames** = ``1`` :ref:`🔗<class_AnimatedTexture_property_frames>`

.. rst-class:: classref-property-setget

- |void| **set_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frames**\ (\ )

Кількість кадрів для використання в анімації. Хоча ви можете створювати кадри самостійно за допомогою :ref:`set_frame_texture()<class_AnimatedTexture_method_set_frame_texture>`, вам потрібно встановити це значення, щоб анімація враховувала нові кадри. Максимальна кількість кадрів - :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_AnimatedTexture_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Якщо ``true``, анімація буде відтворюватися лише один раз і не буде повертатися до першого кадру після досягнення кінця. Зауважте, що досягнення кінця не призведе до встановлення :ref:`pause<class_AnimatedTexture_property_pause>` на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_pause:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pause** = ``false`` :ref:`🔗<class_AnimatedTexture_property_pause>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pause**\ (\ )

Якщо ``true``, анімація призупиниться на тому місці, де вона зараз знаходиться (тобто на :ref:`current_frame<class_AnimatedTexture_property_current_frame>`). Анімація продовжиться з того місця, де її було призупинено, якщо змінити цю властивість на ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedTexture_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Швидкість анімації множиться на це значення. Якщо встановлено від'ємне значення, анімація відтворюється у зворотному напрямку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AnimatedTexture_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_duration>`

Повертає задану тривалість ``frame`` у секундах.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_texture>`

Повертає :ref:`Texture2D<class_Texture2D>` заданого кадру.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_duration:

.. rst-class:: classref-method

|void| **set_frame_duration**\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_duration>`

Задає тривалість будь-якого заданого ``frame``. На остаточну тривалість впливає :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`. Якщо встановлено ``0``, кадр буде пропущений під час відтворення.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_texture:

.. rst-class:: classref-method

|void| **set_frame_texture**\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_texture>`

Призначає :ref:`Texture2D<class_Texture2D>` заданому кадру. Ідентифікатори кадрів починаються з 0, тому перший кадр має ідентифікатор 0, а останній кадр анімації має ідентифікатор :ref:`frames<class_AnimatedTexture_property_frames>` - 1.

Ви можете визначити будь-яку кількість текстур в :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`, але майте на увазі, що лише кадри від 0 до :ref:`frames<class_AnimatedTexture_property_frames>` - 1 будуть частиною анімації.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
