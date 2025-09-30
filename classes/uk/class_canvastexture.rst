:github_url: hide

.. _class_CanvasTexture:

CanvasTexture
=============

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура з додатковими нормалями та дзеркальними картами для використання у 2D-візуалізації.

.. rst-class:: classref-introduction-group

Опис
--------

**CanvasTexture** є альтернативою :ref:`ImageTexture<class_ImageTexture>` для двовимірної візуалізації. Це дозволяє використовувати нормальні карти та дзеркальні карти в будь-якому вузлі, який успадковує :ref:`CanvasItem<class_CanvasItem>`. **CanvasTexture** також дозволяє перевизначати фільтр текстури та режим повторення незалежно від властивостей вузла (або налаштувань проекту).

\ **Примітка:** **CanvasTexture** не можна використовувати в 3D. Він не відображатиметься належним чином, якщо застосовувати до будь-якого :ref:`VisualInstance3D<class_VisualInstance3D>`, наприклад :ref:`Sprite3D<class_Sprite3D>` або :ref:`Decal<class_Decal>`. Для фізичних матеріалів у 3D замість цього використовуйте :ref:`BaseMaterial3D<class_BaseMaterial3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`2D світло і тіні <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`diffuse_texture<class_CanvasTexture_property_diffuse_texture>`       |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`normal_texture<class_CanvasTexture_property_normal_texture>`         |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | resource_local_to_scene                                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`specular_color<class_CanvasTexture_property_specular_color>`         | ``Color(1, 1, 1, 1)``                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` | ``1.0``                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`specular_texture<class_CanvasTexture_property_specular_texture>`     |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` | :ref:`texture_filter<class_CanvasTexture_property_texture_filter>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` | :ref:`texture_repeat<class_CanvasTexture_property_texture_repeat>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CanvasTexture_property_diffuse_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **diffuse_texture** :ref:`🔗<class_CanvasTexture_property_diffuse_texture>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_diffuse_texture**\ (\ )

Дифузна (кольорова) текстура для використання. Це основна текстура, яку ви хочете встановити в більшості випадків.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_normal_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **normal_texture** :ref:`🔗<class_CanvasTexture_property_normal_texture>`

.. rst-class:: classref-property-setget

- |void| **set_normal_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_normal_texture**\ (\ )

Звичайна текстура карти для використання. Має видимий ефект, лише якщо :ref:`Light2D<class_Light2D>` впливає на цю **CanvasTexture**.

\ **Примітка:** Godot очікує, що карта нормалей використовуватиме координати X+, Y+ та Z+. Перегляньте `цю сторінку <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates>`__, щоб порівняти нормальні координати карти, очікувані популярними механізмами.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CanvasTexture_property_specular_color>`

.. rst-class:: classref-property-setget

- |void| **set_specular_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_color**\ (\ )

Множник для кольорів дзеркального відбиття. Колір :ref:`Light2D<class_Light2D>` також враховується при визначенні кольору відбиття. Має видимий ефект, лише якщо :ref:`Light2D<class_Light2D>` впливає на цю **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_shininess:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_shininess** = ``1.0`` :ref:`🔗<class_CanvasTexture_property_specular_shininess>`

.. rst-class:: classref-property-setget

- |void| **set_specular_shininess**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_shininess**\ (\ )

Показник ступеня дзеркального відображення :ref:`Light2D<class_Light2D>`. Вищі значення призводять до більш глянцевого/"мокрого" вигляду, при цьому відблиски стають більш локальними та менш помітними в цілому. Стандартне значення ``1.0`` повністю вимикає дзеркальні відбиття. Має видимий ефект, лише якщо :ref:`Light2D<class_Light2D>` впливає на цю **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **specular_texture** :ref:`🔗<class_CanvasTexture_property_specular_texture>`

.. rst-class:: classref-property-setget

- |void| **set_specular_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_specular_texture**\ (\ )

Дзеркальна карта, яка використовується для дзеркальних відображень :ref:`Light2D<class_Light2D>`. Це має бути сіра або кольорова текстура з більш яскравими областями, що призводить до більш високого значення :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>`. Використання кольорового :ref:`specular_texture<class_CanvasTexture_property_specular_texture>` дозволяє контролювати дзеркальний блиск на кожному каналі. Має видимий ефект, лише якщо :ref:`Light2D<class_Light2D>` впливає на цю **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_CanvasItem_TextureFilter>`\ )
- :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **get_texture_filter**\ (\ )

Режим фільтрації текстури для використання під час малювання цієї **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **get_texture_repeat**\ (\ )

Режим повторення текстури для використання під час малювання цієї **CanvasTexture**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
