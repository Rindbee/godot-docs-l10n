:github_url: hide

.. _class_VisualShaderNodeTexture:

VisualShaderNodeTexture
=======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Выполняет поиск 2D-текстуры в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Выполняет операцию поиска по предоставленной текстуре с поддержкой выбора из нескольких источников текстур.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeTexture_Source>`           | :ref:`source<class_VisualShaderNodeTexture_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_VisualShaderNodeTexture_property_texture>`           |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` | :ref:`texture_type<class_VisualShaderNodeTexture_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeTexture_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeTexture_Source>`

.. _class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_TEXTURE** = ``0``

Используйте текстуру, указанную в качестве аргумента для этой функции.

.. _class_VisualShaderNodeTexture_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_SCREEN** = ``1``

Использовать текстуру текущего окна просмотра в качестве источника.

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_TEXTURE** = ``2``

Используйте текстуру из встроенной текстуры этого шейдера (например, текстуру :ref:`Sprite2D<class_Sprite2D>`).

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_NORMAL** = ``3``

Используйте текстуру из встроенной карты нормалей этого шейдера.

.. _class_VisualShaderNodeTexture_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_DEPTH** = ``4``

Использовать текстуру глубины, захваченную во время предварительного прохода глубины. Доступно только при использовании предварительного прохода глубины (т. е. в пространственных шейдерах и в рендерах forward_plus или gl_compatibility).

.. _class_VisualShaderNodeTexture_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_PORT** = ``5``

Используйте текстуру, предоставленную во входном порту для этой функции.

.. _class_VisualShaderNodeTexture_constant_SOURCE_3D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_3D_NORMAL** = ``6``

Использовать нормальный буфер, захваченный во время предварительного прохода глубины. Доступно только при наличии буфера нормальной шероховатости (т. е. в пространственных шейдерах и в рендерере forward_plus).

.. _class_VisualShaderNodeTexture_constant_SOURCE_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_ROUGHNESS** = ``7``

Использовать буфер шероховатости, захваченный во время предварительного прохода глубины. Доступно только при наличии буфера normal-roughness (т. е. в пространственных (spatial) шейдерах и в рендерере forward_plus).

.. _class_VisualShaderNodeTexture_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_MAX** = ``8``

Представляет размер перечисления :ref:`Source<enum_VisualShaderNodeTexture_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTexture_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTexture_TextureType>`

.. _class_VisualShaderNodeTexture_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_DATA** = ``0``

Никаких подсказок в единое заявление не добавляется.

.. _class_VisualShaderNodeTexture_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_COLOR** = ``1``

Добавляет ``source_color`` в качестве подсказки к объявлению uniform для правильного преобразования sRGB в линейный.

.. _class_VisualShaderNodeTexture_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Добавляет ``hint_normal`` в качестве подсказки к объявлению uniform, которое внутренне преобразует текстуру для правильного использования в качестве карты нормалей.

.. _class_VisualShaderNodeTexture_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_MAX** = ``3``

Представляет размер перечисления :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeTexture_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeTexture_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeTexture_Source>` **get_source**\ (\ )

Определяет источник для поиска.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_VisualShaderNodeTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Исходная текстура, если требуется для выбранного :ref:`source<class_VisualShaderNodeTexture_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **get_texture_type**\ (\ )

Указывает тип текстуры, если :ref:`source<class_VisualShaderNodeTexture_property_source>` установлен в :ref:`SOURCE_TEXTURE<class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
