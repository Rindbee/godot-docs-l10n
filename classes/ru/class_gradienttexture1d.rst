:github_url: hide

.. _class_GradientTexture1D:

GradientTexture1D
=================

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Одномерная текстура, использующая цвета, полученные из :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Описание
----------------

1D-текстура, которая получает цвета из :ref:`Gradient<class_Gradient>` для заполнения данных текстуры. Текстура заполняется путем выборки градиента для каждого пикселя. Поэтому текстура не обязательно представляет собой точную копию градиента, так как она может пропускать некоторые цвета, если пикселей недостаточно. См. также :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`CurveTexture<class_CurveTexture>` и :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_GradientTexture1D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture1D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

:ref:`Gradient<class_Gradient>`, используемый для заливки текстуры.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture1D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Если ``true``, сгенерированная текстура будет поддерживать высокий динамический диапазон (формат :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Это позволяет работать эффектам свечения, если :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` имеет значение ``true``. Если ``false``, сгенерированная текстура будет использовать низкий динамический диапазон; слишком яркие цвета будут ограничены (формат :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`).

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_GradientTexture1D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Количество образцов цвета, которые будут получены из :ref:`Gradient<class_Gradient>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
