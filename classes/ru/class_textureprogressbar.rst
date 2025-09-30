:github_url: hide

.. _class_TextureProgressBar:

TextureProgressBar
==================

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Текстурная полоса прогресса. Полезно для экранов загрузки и полосок жизни или выносливости.

.. rst-class:: classref-introduction-group

Описание
----------------

TextureProgressBar работает как :ref:`ProgressBar<class_ProgressBar>`, но использует до 3 текстур вместо ресурса Godot :ref:`Theme<class_Theme>`. Его можно использовать для создания горизонтальных, вертикальных и радиальных индикаторов прогресса.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`                             | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`           | mouse_filter                                                                              | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>`           | ``false``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`       | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`         | ``360.0``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`       | ``0.0``                                                                      |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                                                       | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | step                                                                                      | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>`     | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_left<class_TextureProgressBar_property_stretch_margin_left>`         | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_right<class_TextureProgressBar_property_stretch_margin_right>`       | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_top<class_TextureProgressBar_property_stretch_margin_top>`           | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_over<class_TextureProgressBar_property_texture_over>`                       |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`               |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`texture_progress_offset<class_TextureProgressBar_property_texture_progress_offset>` | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_under<class_TextureProgressBar_property_texture_under>`                     |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_over<class_TextureProgressBar_property_tint_over>`                             | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_progress<class_TextureProgressBar_property_tint_progress>`                     | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_under<class_TextureProgressBar_property_tint_under>`                           | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_stretch_margin<class_TextureProgressBar_method_get_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_stretch_margin<class_TextureProgressBar_method_set_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_TextureProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_TextureProgressBar_FillMode>`

.. _class_TextureProgressBar_constant_FILL_LEFT_TO_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_LEFT_TO_RIGHT** = ``0``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется слева направо.

.. _class_TextureProgressBar_constant_FILL_RIGHT_TO_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_RIGHT_TO_LEFT** = ``1``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется справа налево.

.. _class_TextureProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется сверху вниз.

.. _class_TextureProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется снизу вверх.

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE** = ``4``

Превращает узел в радиальный столбец. :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется по часовой стрелке. См. :ref:`radia_center_offset<class_TextureProgressBar_property_radia_center_offset>`, :ref:`radia_initial_angle<class_TextureProgressBar_property_radia_initial_angle>` и :ref:`radia_fill_degrees<class_TextureProgressBar_property_radia_fill_degrees>` для управления способом заполнения столбца.

.. _class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_COUNTER_CLOCKWISE** = ``5``

Превращает узел в радиальный столбец. :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется против часовой стрелки. См. :ref:`radia_center_offset<class_TextureProgressBar_property_radia_center_offset>`, :ref:`radia_initial_angle<class_TextureProgressBar_property_radia_initial_angle>` и :ref:`radia_fill_degrees<class_TextureProgressBar_property_radia_fill_degrees>` для управления способом заполнения столбца.

.. _class_TextureProgressBar_constant_FILL_BILINEAR_LEFT_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_LEFT_AND_RIGHT** = ``6``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется от центра, расширяясь как влево, так и вправо.

.. _class_TextureProgressBar_constant_FILL_BILINEAR_TOP_AND_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_TOP_AND_BOTTOM** = ``7``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется от центра, расширяясь как вверх, так и вниз.

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE** = ``8``

Превращает узел в радиальный столбец. :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` заполняется радиально от центра, расширяясь как по часовой стрелке, так и против часовой стрелки. См. :ref:`radia_center_offset<class_TextureProgressBar_property_radia_center_offset>`, :ref:`radia_initial_angle<class_TextureProgressBar_property_radia_initial_angle>` и :ref:`radia_fill_degrees<class_TextureProgressBar_property_radia_fill_degrees>` для управления способом заполнения столбца.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextureProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_TextureProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

Направление заполнения. См. :ref:`FillMode<enum_TextureProgressBar_FillMode>` для возможных значений.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_nine_patch_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nine_patch_stretch** = ``false`` :ref:`🔗<class_TextureProgressBar_property_nine_patch_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_nine_patch_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_nine_patch_stretch**\ (\ )

Если ``true``, Godot обрабатывает текстуры полосы как в :ref:`NinePatchRect<class_NinePatchRect>`. Используйте свойства ``stretch_margin_*``, такие как :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>`, чтобы настроить сетку 3×3 девяти частей. При использовании радиального :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` эта настройка включит растяжение только для :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, тогда как :ref:`texture_under<class_TextureProgressBar_property_texture_under>` и :ref:`texture_over<class_TextureProgressBar_property_texture_over>` будут обрабатываться как в :ref:`NinePatchRect<class_NinePatchRect>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_center_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **radial_center_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_radial_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_radial_center_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_radial_center_offset**\ (\ )

Смещает :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, если :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` — :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` или :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`.

\ **Примечание:** Эффективный радиальный центр всегда остается в пределах :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`. Если вам нужно переместить его за пределы границ текстуры, измените :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, чтобы он содержал дополнительное пустое пространство там, где это необходимо.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_fill_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_fill_degrees** = ``360.0`` :ref:`🔗<class_TextureProgressBar_property_radial_fill_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_fill_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fill_degrees**\ (\ )

Верхний предел для заполнения :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, если :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` — :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` или :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. Когда ``value`` узла равно его ``max_value``, текстура заполняется до этого угла.

См. :ref:`Range.value<class_Range_property_value>`, :ref:`Range.max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_initial_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_initial_angle** = ``0.0`` :ref:`🔗<class_TextureProgressBar_property_radial_initial_angle>`

.. rst-class:: classref-property-setget

- |void| **set_radial_initial_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radial_initial_angle**\ (\ )

Начальный угол для заполнения :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, если :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` равен :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` или :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. Когда ``value`` узла равно его ``min_value``, текстура вообще не отображается. Когда ``value`` увеличивается, текстура заполняется и стремится к :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`.

\ **Примечание:** :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` заключен между ``0`` и ``360`` градусами (включительно).

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_bottom** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Высота нижнего ряда 9-частей. Поле 16 означает, что нижние углы и сторона 9-slice будут иметь высоту 16 пикселей. Вы можете задать все 4 значения полей по отдельности, чтобы создать панели с неравномерными границами. Действует только если :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_left** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина левого столбца 9-patch. Действует только если :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_right** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ширина правого столбца 9-patch. Действует только если :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_top** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Высота верхнего ряда 9-patch. Действует только если :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_over:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_over** :ref:`🔗<class_TextureProgressBar_property_texture_over>`

.. rst-class:: classref-property-setget

- |void| **set_over_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_over_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>`, которая рисует поверх полосы прогресса. Используйте ее для добавления бликов или верхней рамки, которая скрывает часть :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_progress** :ref:`🔗<class_TextureProgressBar_property_texture_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_progress_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>`, которая обрезает на основе ``value`` и :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` узла. По мере увеличения ``value`` текстура заполняется. Она отображается полностью, когда ``value`` достигает ``max_value``. Она не отображается вообще, если ``value`` равно ``min_value``.

Свойство ``value`` происходит от :ref:`Range<class_Range>`. См. :ref:`Range.value<class_Range_property_value>`, :ref:`Range.min_value<class_Range_property_min_value>`, :ref:`Range.max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_progress_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_texture_progress_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_progress_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_progress_offset**\ (\ )

Смещение :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`. Полезно для :ref:`texture_over<class_TextureProgressBar_property_texture_over>` и :ref:`texture_under<class_TextureProgressBar_property_texture_under>` с причудливыми границами, чтобы избежать прозрачных полей в вашей текстуре прогресса.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_under:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_under** :ref:`🔗<class_TextureProgressBar_property_texture_under>`

.. rst-class:: classref-property-setget

- |void| **set_under_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_under_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` рисуется под полосой прогресса. Фон полосы.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_over:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_over** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_over>`

.. rst-class:: classref-property-setget

- |void| **set_tint_over**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_over**\ (\ )

Умножает цвет текстуры :ref:`texture_over<class_TextureProgressBar_property_texture_over>` панели. Эффект похож на :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`, за исключением того, что он влияет только на эту конкретную текстуру, а не на весь узел.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_progress:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_progress** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_progress>`

.. rst-class:: classref-property-setget

- |void| **set_tint_progress**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_progress**\ (\ )

Умножает цвет текстуры :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` полосы.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_under:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_under** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_under>`

.. rst-class:: classref-property-setget

- |void| **set_tint_under**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_under**\ (\ )

Умножает цвет текстуры :ref:`texture_under<class_TextureProgressBar_property_texture_under>` панели.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TextureProgressBar_method_get_stretch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_TextureProgressBar_method_get_stretch_margin>`

Возвращает растягиваемое поле с указанным индексом. См. :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` и связанные свойства.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_method_set_stretch_margin:

.. rst-class:: classref-method

|void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TextureProgressBar_method_set_stretch_margin>`

Устанавливает растягиваемое поле с указанным индексом. См. :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` и связанные свойства.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
