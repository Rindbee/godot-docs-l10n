:github_url: hide

.. _class_GLTFSpecGloss:

GLTFSpecGloss
=============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Архивное расширение glTF для зеркальных/глянцевых материалов.

.. rst-class:: classref-introduction-group

Описание
----------------

KHR_materials_pbrSpecularGlossiness — это архивное расширение glTF. Это означает, что оно устарело и не рекомендуется для новых файлов. Однако оно по-прежнему поддерживается для загрузки старых файлов.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

- `KHR_materials_pbrSpecularGlossiness glTF расширение спецификации <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Archived/KHR_materials_pbrSpecularGlossiness>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`diffuse_factor<class_GLTFSpecGloss_property_diffuse_factor>`   | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`diffuse_img<class_GLTFSpecGloss_property_diffuse_img>`         |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`gloss_factor<class_GLTFSpecGloss_property_gloss_factor>`       | ``1.0``               |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`spec_gloss_img<class_GLTFSpecGloss_property_spec_gloss_img>`   |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`specular_factor<class_GLTFSpecGloss_property_specular_factor>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFSpecGloss_property_diffuse_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **diffuse_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_diffuse_factor>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_diffuse_factor**\ (\ )

Коэффициент отражения диффузии материала.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_diffuse_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **diffuse_img** :ref:`🔗<class_GLTFSpecGloss_property_diffuse_img>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_diffuse_img**\ (\ )

Диффузная текстура.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_gloss_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **gloss_factor** = ``1.0`` :ref:`🔗<class_GLTFSpecGloss_property_gloss_factor>`

.. rst-class:: classref-property-setget

- |void| **set_gloss_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gloss_factor**\ (\ )

Глянцевитость или гладкость материала.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_spec_gloss_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **spec_gloss_img** :ref:`🔗<class_GLTFSpecGloss_property_spec_gloss_img>`

.. rst-class:: classref-property-setget

- |void| **set_spec_gloss_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_spec_gloss_img**\ (\ )

Текстура зеркального блеска.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_specular_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_specular_factor>`

.. rst-class:: classref-property-setget

- |void| **set_specular_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_factor**\ (\ )

Зеркальный цвет RGB материала. Альфа-канал не используется.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
