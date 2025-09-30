:github_url: hide

.. _class_StyleBoxFlat:

StyleBoxFlat
============

**Наследует:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Настраиваемый :ref:`StyleBox<class_StyleBox>`, не использующий текстуру.

.. rst-class:: classref-introduction-group

Описание
----------------

Настраивая различные свойства этого stylebox'а, вы можете добиться многих общих видов без необходимости использования текстуры. Это включает в себя опциональные скругленные границы, сглаживание, тени и наклон.

Установка радиуса угла на высокие значения допускается. Как только углы перекрываются, stylebox переключается на относительную систему:

.. code:: text

    height = 30
    corner_radius_top_left = 50
    corner_radius_bottom_left = 100

Относительная система теперь будет использовать соотношение 1:2 двух левых углов для расчета фактической ширины угла. Оба сложенных угла **никогда** не будут больше высоты. Результат:

.. code:: text

    corner_radius_top_left: 10
    corner_radius_bottom_left: 20

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>`                           | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`anti_aliasing_size<class_StyleBoxFlat_property_anti_aliasing_size>`                 | ``1.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`bg_color<class_StyleBoxFlat_property_bg_color>`                                     | ``Color(0.6, 0.6, 0.6, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`border_blend<class_StyleBoxFlat_property_border_blend>`                             | ``false``                   |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`border_color<class_StyleBoxFlat_property_border_color>`                             | ``Color(0.8, 0.8, 0.8, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>`               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>`                   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>`                 | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>`                     | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>`                           | ``8``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_left<class_StyleBoxFlat_property_corner_radius_bottom_left>`   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_right<class_StyleBoxFlat_property_corner_radius_bottom_right>` | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_left<class_StyleBoxFlat_property_corner_radius_top_left>`         | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_right<class_StyleBoxFlat_property_corner_radius_top_right>`       | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`draw_center<class_StyleBoxFlat_property_draw_center>`                               | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`             | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>`                 | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>`               | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>`                   | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_StyleBoxFlat_property_shadow_color>`                             | ``Color(0, 0, 0, 0.6)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_StyleBoxFlat_property_shadow_offset>`                           | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>`                               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`skew<class_StyleBoxFlat_property_skew>`                                             | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width<class_StyleBoxFlat_method_get_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                               |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width_min<class_StyleBoxFlat_method_get_border_width_min>`\ (\ ) |const|                                                                     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_corner_radius<class_StyleBoxFlat_method_get_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxFlat_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width<class_StyleBoxFlat_method_set_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width_all<class_StyleBoxFlat_method_set_border_width_all>`\ (\ width\: :ref:`int<class_int>`\ )                                              |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius<class_StyleBoxFlat_method_set_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius_all<class_StyleBoxFlat_method_set_corner_radius_all>`\ (\ radius\: :ref:`int<class_int>`\ )                                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxFlat_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxFlat_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StyleBoxFlat_property_anti_aliasing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **anti_aliasing** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing>`

.. rst-class:: classref-property-setget

- |void| **set_anti_aliased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_anti_aliased**\ (\ )

Сглаживание рисует небольшое кольцо вокруг краев, которое постепенно переходит в прозрачность. В результате края выглядят намного более гладкими. Это заметно только при использовании скругленных углов или :ref:`skew<class_StyleBoxFlat_property_skew>`.

\ **Примечание:** При использовании скошенных углов с углами в 45 градусов (:ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>` = 1) рекомендуется установить :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>` на ``false``, чтобы обеспечить четкость изображения и избежать возможных визуальных сбоев.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_anti_aliasing_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **anti_aliasing_size** = ``1.0`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing_size>`

.. rst-class:: classref-property-setget

- |void| **set_aa_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aa_size**\ (\ )

Это изменяет размер эффекта сглаживания. ``1.0`` рекомендуется для оптимального результата в масштабе 100%, аналогично тому, как скругленные прямоугольники отображаются в веб-браузерах и большинстве программ для векторной графики.

\ **Примечание:** Более высокие значения могут привести к эффекту размытия, но также могут создать нежелательные артефакты на небольших полях с углами большого радиуса.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_bg_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **bg_color** = ``Color(0.6, 0.6, 0.6, 1)`` :ref:`🔗<class_StyleBoxFlat_property_bg_color>`

.. rst-class:: classref-property-setget

- |void| **set_bg_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_bg_color**\ (\ )

Цвет фона stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **border_blend** = ``false`` :ref:`🔗<class_StyleBoxFlat_property_border_blend>`

.. rst-class:: classref-property-setget

- |void| **set_border_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_border_blend**\ (\ )

Если ``true``, граница будет сливаться с цветом фона.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(0.8, 0.8, 0.8, 1)`` :ref:`🔗<class_StyleBoxFlat_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Устанавливает цвет границы.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_bottom** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина нижней границы.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_left>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина левой границы.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_right>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина границы для правой границы.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_top** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_top>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина верхней границы.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_detail:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_detail** = ``8`` :ref:`🔗<class_StyleBoxFlat_property_corner_detail>`

.. rst-class:: classref-property-setget

- |void| **set_corner_detail**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_detail**\ (\ )

Это устанавливает количество вершин, используемых для каждого угла. Более высокие значения приводят к более круглым углам, но требуют больше вычислительной мощности для вычисления. При выборе значения следует учитывать радиус угла (:ref:`set_corner_radius_all()<class_StyleBoxFlat_method_set_corner_radius_all>`).

Для радиусов угла менее 10 должно быть достаточно ``4`` или ``5``. Для радиусов угла менее 30 должно быть достаточно значений между ``8`` и ``12``.

Детализация угла ``1`` приведет к скошенным углам вместо скругленных, что полезно для некоторых художественных эффектов.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Радиус нижнего левого угла. Если ``0``, угол не закруглен.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Радиус нижнего правого угла. Если ``0``, угол не закруглен.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Радиус верхнего левого угла. Если ``0``, угол не закруглен.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Радиус верхнего правого угла. Если ``0``, угол не закруглен.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Включает/выключает отрисовку внутренней части stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет stylebox за пределы прямоугольника управления на нижнем крае. Полезно в сочетании с :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>` для рисования границы за пределами прямоугольника управления.

\ **Примечание:** В отличие от :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`, :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>` *не* влияет на размер области нажатия для :ref:`Control<class_Control>`. Это может негативно повлиять на удобство использования при неправильном использовании, так как пользователь может попытаться нажать на область StyleBox, которая фактически не может получать щелчки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет stylebox за пределы прямоугольника управления на левом краю. Полезно в сочетании с :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>` для рисования границы за пределами прямоугольника управления.

\ **Примечание:** В отличие от :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>`, :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>` *не* влияет на размер области нажатия для :ref:`Control<class_Control>`. Это может негативно повлиять на удобство использования при неправильном использовании, так как пользователь может попытаться нажать на область StyleBox, которая фактически не может получать щелчки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет stylebox за пределы прямоугольника управления на правом краю. Полезно в сочетании с :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>` для рисования границы за пределами прямоугольника управления.

\ **Примечание:** В отличие от :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>`, :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>` *не* влияет на размер области нажатия для :ref:`Control<class_Control>`. Это может негативно повлиять на удобство использования при неправильном использовании, так как пользователь может попытаться нажать на область StyleBox, которая фактически не может получать щелчки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Расширяет stylebox за пределы прямоугольника управления на верхнем крае. Полезно в сочетании с :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>` для рисования границы за пределами прямоугольника управления.

\ **Примечание:** В отличие от :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>`, :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>` *не* влияет на размер области нажатия для :ref:`Control<class_Control>`. Это может негативно повлиять на удобство использования при неправильном использовании, так как пользователь может попытаться нажать на область StyleBox, которая фактически не может получать щелчки.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0.6)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

Цвет тени. Это не имеет никакого эффекта, если :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>` меньше 1.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

Смещение тени в пикселях. Регулирует положение тени относительно stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

Размер тени в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_skew:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **skew** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_skew**\ (\ )

Если установлено ненулевое значение на любой из осей, :ref:`skew<class_StyleBoxFlat_property_skew>` искажает StyleBox по горизонтали и/или вертикали. Это можно использовать для пользовательских интерфейсов в «футуристическом» стиле. Положительные значения наклоняют StyleBox вправо (ось X) и вверх (ось Y), а отрицательные значения наклоняют StyleBox влево (ось X) и вниз (ось Y).

\ **Примечание:** Чтобы текст не касался краев StyleBox, рассмотрите возможность увеличения поля содержимого :ref:`StyleBox<class_StyleBox>` (см. :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`). Предпочтительно увеличить поле содержимого вместо поля расширения (см. :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`), поскольку увеличение поля расширения не увеличивает размер области нажатия для :ref:`Control<class_Control>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StyleBoxFlat_method_get_border_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width>`

Возвращает указанную ширину границы :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_border_width_min:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width_min**\ (\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width_min>`

Возвращает наименьшую ширину границы из всех четырех границ.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_corner_radius:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_corner_radius>`

Возвращает радиус заданного ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_expand_margin>`

Возвращает размер указанного поля расширения :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width:

.. rst-class:: classref-method

|void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width>`

Устанавливает ширину границы указанного элемента :ref:`Side<enum_@GlobalScope_Side>` на ``width`` пикселей.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width_all:

.. rst-class:: classref-method

|void| **set_border_width_all**\ (\ width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width_all>`

Устанавливает ширину границы на ``width`` пикселей для всех сторон.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius:

.. rst-class:: classref-method

|void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius>`

Устанавливает радиус угла равным ``radius`` пикселей для заданного ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius_all:

.. rst-class:: classref-method

|void| **set_corner_radius_all**\ (\ radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius_all>`

Устанавливает радиус угла равным ``radius`` пикселей для всех углов.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin>`

Устанавливает поле расширения на ``size`` пикселей для указанной :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin_all>`

Устанавливает поле расширения на ``size`` пикселей для всех сторон.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
