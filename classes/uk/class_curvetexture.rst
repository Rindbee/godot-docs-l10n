:github_url: hide

.. _class_CurveTexture:

CurveTexture
============

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 1D текстура, де піксельна яскравість відповідає точкам на криві.

.. rst-class:: classref-introduction-group

Опис
--------

Одновимірна текстура, де яскравість пікселів відповідає точкам на одиничному ресурсі :ref:`Curve<class_Curve>`, у відтінках сірого або червоному. Це візуальне представлення спрощує завдання збереження кривих як файлів зображень.

Якщо вам потрібно зберегти до 3 кривих в одній текстурі, замість цього використовуйте :ref:`CurveXYZTexture<class_CurveXYZTexture>`. Дивіться також :ref:`GradientTexture1D<class_GradientTexture1D>` і :ref:`GradientTexture2D<class_GradientTexture2D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                         | :ref:`curve<class_CurveTexture_property_curve>`               |                                                                                        |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | resource_local_to_scene                                       | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureMode<enum_CurveTexture_TextureMode>` | :ref:`texture_mode<class_CurveTexture_property_texture_mode>` | ``0``                                                                                  |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`width<class_CurveTexture_property_width>`               | ``256``                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CurveTexture_TextureMode:

.. rst-class:: classref-enumeration

enum **TextureMode**: :ref:`🔗<enum_CurveTexture_TextureMode>`

.. _class_CurveTexture_constant_TEXTURE_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RGB** = ``0``

Зберігати криву однаково по червоному, зеленому і синьому каналах. Це використовує більше відео пам'яті, але більш сумісний з тіні, які тільки читають зелені і сині значення.

.. _class_CurveTexture_constant_TEXTURE_MODE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RED** = ``1``

Зберігайте криву тільки в червоному каналі. Це зберігає відео пам'ять, але деякі користувацькі тіні не можуть працювати з цим.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CurveTexture_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_CurveTexture_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

:ref:`Curve<class_Curve>`, яка відображається на текстурі. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_texture_mode:

.. rst-class:: classref-property

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_CurveTexture_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`TextureMode<enum_CurveTexture_TextureMode>`\ )
- :ref:`TextureMode<enum_CurveTexture_TextureMode>` **get_texture_mode**\ (\ )

Формат текстури повинен бути створений з. При проходженні CurveTexture як вхід до :ref:`Shader<class_Shader>` це може знадобитися для налаштування.

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveTexture_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Ширина текстури (в пікселях). Найвищі значення дають можливість представити високочастотні дані краще (наприклад, різкі зміни напрямку), за вартістю збільшення часу і використання пам'яті.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
