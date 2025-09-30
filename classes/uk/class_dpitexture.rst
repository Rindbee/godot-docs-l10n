:github_url: hide

.. _class_DPITexture:

DPITexture
==========

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Автоматично масштабована :ref:`Texture2D<class_Texture2D>` на основі зображення SVG.

.. rst-class:: classref-introduction-group

Опис
--------

Автоматично масштабована :ref:`Texture2D<class_Texture2D>` на основі зображення SVG. **DPITexture** використовуються для автоматичного перерастрування піктограм та інших елементів теми інтерфейсу на основі текстур, щоб відповідати масштабу вікна перегляду та наддискретизації шрифтів. Див. також :ref:`ProjectSettings.display/window/stretch/mode<class_ProjectSettings_property_display/window/stretch/mode>` (режим «canvas_items») та :ref:`Viewport.oversampling_override<class_Viewport_property_oversampling_override>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_DPITexture_property_base_scale>` | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_DPITexture_property_color_map>`   | ``{}``                                                                                 |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | resource_local_to_scene                                 | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_DPITexture_property_saturation>` | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DPITexture<class_DPITexture>` | :ref:`create_from_string<class_DPITexture_method_create_from_string>`\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`               | :ref:`get_scaled_rid<class_DPITexture_method_get_scaled_rid>`\ (\ ) |const|                                                                                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_source<class_DPITexture_method_get_source>`\ (\ ) |const|                                                                                                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_size_override<class_DPITexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_source<class_DPITexture_method_set_source>`\ (\ source\: :ref:`String<class_String>`\ )                                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_DPITexture_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_DPITexture_property_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_base_scale**\ (\ )

Масштаб текстури. ``1.0`` – це оригінальний розмір SVG. Вищі значення призводять до більшого зображення.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_DPITexture_property_color_map>`

.. rst-class:: classref-property-setget

- |void| **set_color_map**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_map**\ (\ )

Якщо встановлено, перерозподіляє кольори текстур відповідно до карти :ref:`Color<class_Color>`-:ref:`Color<class_Color>`.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_DPITexture_property_saturation>`

.. rst-class:: classref-property-setget

- |void| **set_saturation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_saturation**\ (\ )

Замінює насиченість текстури.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_DPITexture_method_create_from_string:

.. rst-class:: classref-method

:ref:`DPITexture<class_DPITexture>` **create_from_string**\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_DPITexture_method_create_from_string>`

Створює нову **DPITexture** та ініціалізує її, виділяючи та встановлюючи SVG-дані з рядка.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_scaled_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_scaled_rid**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_scaled_rid>`

Повертає :ref:`RID<class_RID>` текстури, растеризованої відповідно до передискретизації поточного намальованого елемента полотна.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_source>`

Повертає вихідний код SVG.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_DPITexture_method_set_size_override>`

Зменшення текстури до зазначених розмірів.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_source:

.. rst-class:: classref-method

|void| **set_source**\ (\ source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DPITexture_method_set_source>`

Встановлює вихідний код SVG.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
