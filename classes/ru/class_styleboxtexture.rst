:github_url: hide

.. _class_StyleBoxTexture:

StyleBoxTexture
===============

**Наследует:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Девяти-сторонний текстурный :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Текстурный девяти-сторонний :ref:`StyleBox<class_StyleBox>`, похожий на :ref:`NinePatchRect<class_NinePatchRect>`. Этот stylebox выполняет масштабирование текстуры 3×3, где полностью растягивается только центральная ячейка. Это позволяет разрабатывать ограниченные стили независимо от размера stylebox.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_StyleBoxTexture_property_axis_stretch_horizontal>` | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_StyleBoxTexture_property_axis_stretch_vertical>`     | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`draw_center<class_StyleBoxTexture_property_draw_center>`                         | ``true``              |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_bottom<class_StyleBoxTexture_property_expand_margin_bottom>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_left<class_StyleBoxTexture_property_expand_margin_left>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_right<class_StyleBoxTexture_property_expand_margin_right>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_top<class_StyleBoxTexture_property_expand_margin_top>`             | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`modulate_color<class_StyleBoxTexture_property_modulate_color>`                   | ``Color(1, 1, 1, 1)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`region_rect<class_StyleBoxTexture_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_StyleBoxTexture_property_texture>`                                 |                       |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_bottom<class_StyleBoxTexture_property_texture_margin_bottom>`     | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_left<class_StyleBoxTexture_property_texture_margin_left>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_right<class_StyleBoxTexture_property_texture_margin_right>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_top<class_StyleBoxTexture_property_texture_margin_top>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxTexture_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_texture_margin<class_StyleBoxTexture_method_get_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                           |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxTexture_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxTexture_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin<class_StyleBoxTexture_method_set_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin_all<class_StyleBoxTexture_method_set_texture_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                       |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_StyleBoxTexture_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_StyleBoxTexture_AxisStretchMode>`

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Растянуть текстуру stylebox. Это приведет к видимым искажениям, если только размер текстуры не будет идеально соответствовать размеру stylebox.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Повторяет текстуру stylebox, чтобы она соответствовала размеру stylebox в соответствии с системой девяти частей.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Повторяет текстуру stylebox для соответствия размеру stylebox в соответствии с системой из девяти частей. В отличие от :ref:`AXIS_STRETCH_MODE_TILE<class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE>`, текстура может быть слегка растянута, чтобы сделать текстуру из девяти частей бесшовной.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StyleBoxTexture_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

Управляет тем, как текстура stylebox будет растягиваться или располагаться по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

Управляет тем, как текстура stylebox будет растягиваться или располагаться по вертикали.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxTexture_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Если ``true``, будет нарисован центральный элемент текстуры из девяти участков.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет нижнее поле этого стиля при рисовании, в результате чего оно отображается больше, чем требуется.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет левое поле этого стиля при рисовании, в результате чего оно отображается больше, чем требуется.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет правое поле этого стиля при рисовании, в результате чего оно отображается больше, чем требуется.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет верхнее поле этого стиля при рисовании, в результате чего оно отображается больше, чем требуется.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_modulate_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_StyleBoxTexture_property_modulate_color>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Изменяет цвет текстуры при рисовании этого stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_StyleBoxTexture_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Регион для использования из :ref:`texture<class_StyleBoxTexture_property_texture>`.

Это эквивалентно первой обертке :ref:`texture<class_StyleBoxTexture_property_texture>` в :ref:`AtlasTexture<class_AtlasTexture>` с тем же регионом.

Если пусто (``Rect2(0, 0, 0, 0)``), используется вся текстура :ref:`texture<class_StyleBoxTexture_property_texture>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_StyleBoxTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура, используемая при рисовании этого stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Увеличивает нижнее поле поля текстуры 3×3.

Более высокое значение означает, что большая часть исходной текстуры считается частью нижней границы поля 3×3.

Это также значение, используемое в качестве резервного для :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`, если оно отрицательное.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Увеличивает левое поле поля текстуры 3×3.

Более высокое значение означает, что большая часть исходной текстуры считается частью левой границы поля 3×3.

Это также значение, используемое в качестве резервного варианта для :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>`, если оно отрицательное.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Увеличивает правое поле поля текстуры 3×3.

Более высокое значение означает, что большая часть исходной текстуры считается частью правой границы поля 3×3.

Это также значение, используемое в качестве резервного для :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>`, если оно отрицательное.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Увеличивает верхнее поле поля текстуры 3×3.

Более высокое значение означает, что большая часть исходной текстуры считается частью верхней границы поля 3×3.

Это также значение, используемое в качестве резервного для :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>`, если оно отрицательное.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StyleBoxTexture_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_expand_margin>`

Возвращает размер поля расширения для указанного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_get_texture_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_texture_margin>`

Возвращает размер поля указанного :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin>`

Устанавливает поле расширения на ``size`` пикселей для указанной :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin_all>`

Устанавливает поле расширения на ``size`` пикселей для всех сторон.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin:

.. rst-class:: classref-method

|void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin>`

Устанавливает поле в ``size`` пикселей для указанной :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin_all:

.. rst-class:: classref-method

|void| **set_texture_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin_all>`

Устанавливает поле в ``size`` пикселей для всех сторон.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
