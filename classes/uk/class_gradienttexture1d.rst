:github_url: hide

.. _class_GradientTexture1D:

GradientTexture1D
=================

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

1D-текстура, яка використовує кольори, отримані з :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Опис
--------

Одновимірна текстура, яка отримує кольори з :ref:`Gradient<class_Gradient>` для заповнення даних текстури. Текстура заповнюється вибіркою градієнта для кожного пікселя. Таким чином, текстура не обов’язково представляє точну копію градієнта, оскільки в ній можуть бути відсутні деякі кольори, якщо пікселів недостатньо. Дивіться також :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`CurveTexture<class_CurveTexture>` і :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`gradient<class_GradientTexture1D_property_gradient>` |                                                                                        |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_hdr<class_GradientTexture1D_property_use_hdr>`   | ``false``                                                                              |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_GradientTexture1D_property_width>`       | ``256``                                                                                |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GradientTexture1D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture1D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

:ref:`Gradient<class_Gradient>` використовується для заповнення текстури.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture1D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Якщо ``true``, згенерована текстура підтримуватиме високий динамічний діапазон (формат :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Це дозволяє ефектам світіння працювати, якщо :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` має значення ``true``. Якщо ``false``, згенерована текстура використовуватиме низький динамічний діапазон; надто яскраві кольори будуть обмежені (формат :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`).

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_GradientTexture1D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Кількість зразків кольорів, які будуть отримані з :ref:`Gradient<class_Gradient>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
