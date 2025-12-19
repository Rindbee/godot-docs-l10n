:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

A container that arranges child controls horizontally or vertically and provides grabbers for adjusting the split ratios between them.

.. rst-class:: classref-introduction-group

Опис
--------

A container that arranges child controls horizontally or vertically and creates grabbers between them. The grabbers can be dragged around to change the size relations between the child controls.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`collapsed<class_SplitContainer_property_collapsed>`                                         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_area_highlight_in_editor<class_SplitContainer_property_drag_area_highlight_in_editor>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_begin<class_SplitContainer_property_drag_area_margin_begin>`               | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_end<class_SplitContainer_property_drag_area_margin_end>`                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_offset<class_SplitContainer_property_drag_area_offset>`                           | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` | :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>`                       | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`split_offset<class_SplitContainer_property_split_offset>`                                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                 | :ref:`split_offsets<class_SplitContainer_property_split_offsets>`                                 | ``PackedInt32Array(0)`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>`                 | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`vertical<class_SplitContainer_property_vertical>`                                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                     | :ref:`clamp_split_offset<class_SplitContainer_method_clamp_split_offset>`\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                              | :ref:`get_drag_area_control<class_SplitContainer_method_get_drag_area_control>`\ (\ )                                       |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] | :ref:`get_drag_area_controls<class_SplitContainer_method_get_drag_area_controls>`\ (\ )                                     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_color<class_SplitContainer_theme_color_touch_dragger_color>`                 | ``Color(1, 1, 1, 0.3)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_hover_color<class_SplitContainer_theme_color_touch_dragger_hover_color>`     | ``Color(1, 1, 1, 0.6)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_pressed_color<class_SplitContainer_theme_color_touch_dragger_pressed_color>` | ``Color(1, 1, 1, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`autohide<class_SplitContainer_theme_constant_autohide>`                                    | ``1``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`        | ``6``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`separation<class_SplitContainer_theme_constant_separation>`                                | ``12``                  |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber<class_SplitContainer_theme_icon_grabber>`                                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`touch_dragger<class_SplitContainer_theme_icon_touch_dragger>`                              |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>`               |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

Видається, коли користувач завершує перетягування.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

Видається, коли користувач починає перетягувати.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

Emitted when any dragger is dragged by user.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

Піктограма розділеного перетягувача завжди видима, якщо :ref:`autohide<class_SplitContainer_theme_constant_autohide>` має значення ``false``, інакше вона відображається лише тоді, коли на неї наводиться курсор. 

Розмір піктограми захоплення визначає мінімальний :ref:`separation<class_SplitContainer_theme_constant_separation>`. 

Піктограма перетягування автоматично приховується, якщо довжина піктограми захоплювача більша за смугу розділення.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

Значок розділеного перетягувача ніколи не відображається незалежно від значення :ref:`autohide<class_SplitContainer_theme_constant_autohide>`.

Розмір піктограми захоплення визначає мінімальний :ref:`separation<class_SplitContainer_theme_constant_separation>`.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

Значок розділеного перетягувача не видно, а панель розділення згорнуто до нульової товщини.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

If ``true``, the draggers will be disabled and the children will be sized as if all :ref:`split_offsets<class_SplitContainer_property_split_offsets>` were ``0``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

Виділяє область перетягування :ref:`Rect2<class_Rect2>`, щоб ви могли бачити, де вона знаходиться під час розробки. Зона перетягування є золотою, якщо :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` має значення ``true``, і червоною, якщо ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

Зменшує розмір області перетягування та панелі розділення :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` на початку контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

Зменшує розмір області перетягування та панелі розділення :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` у кінці контейнера.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

Зміщує область перетягування на осі контейнера, щоб запобігти перекриттю області перетягування :ref:`ScrollBar<class_ScrollBar>` або іншого вибраного :ref:`Control<class_Control>` дочірнього вузла.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

Визначає видимість перетягувача. Ця властивість не визначає, чи ввімкнено перетягування. Для цього використовуйте :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

Вмикає або вимикає розділене перетягування.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**Застаріло:** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

The first element of :ref:`split_offsets<class_SplitContainer_property_split_offsets>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

Offsets for each dragger in pixels. Each one is the offset of the split between the :ref:`Control<class_Control>` nodes before and after the dragger, with ``0`` being the default position. The default position is based on the :ref:`Control<class_Control>` nodes expand flags and minimum sizes. See :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`, :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>`, and :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`.

If none of the :ref:`Control<class_Control>` nodes before the dragger are expanded, the default position will be at the start of the **SplitContainer**. If none of the :ref:`Control<class_Control>` nodes after the dragger are expanded, the default position will be at the end of the **SplitContainer**. If the dragger is in between expanded :ref:`Control<class_Control>` nodes, the default position will be in the middle, based on the :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`\ s and minimum sizes.

\ **Note:** If the split offsets cause :ref:`Control<class_Control>` nodes to overlap, the first split will take priority when resolving the positions.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

Якщо значення ``true``, буде ввімкнено сенсорний маркер перетягування для кращої зручності використання на менших екранах. На відміну від стандартного інструмента захоплення, цей маркер перетягування перекриває дочірні елементи **SplitContainer** і не впливає на їх мінімальну відстань. Стандартний інструмент захоплення більше не відображатиметься, коли ця опція ввімкнена.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Якщо ``true``, то **SplitContainer** влаштує своїх дітей вертикально, а не горизонтально.

Не можна змінити при використанні :ref:`HSplitContainer<class_HSplitContainer>` і :ref:`VSplitContainer<class_VSplitContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

Clamps the :ref:`split_offsets<class_SplitContainer_property_split_offsets>` values to ensure they are within valid ranges and do not overlap with each other. When overlaps occur, this method prioritizes one split offset (at index ``priority_index``) by clamping any overlapping split offsets to it.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**Застаріло:** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

Повертає область перетягування :ref:`Control<class_Control>`. Наприклад, ви можете перемістити попередньо налаштовану кнопку в область перетягування :ref:`Control<class_Control>`, щоб вона рухалася разом із роздільною смугою. Спробуйте встановити прив’язки :ref:`Button<class_Button>` на ``center`` перед викликом ``reparent()``. 

::
 
    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())  

\ **Примітка:** Область перетягування :ref:`Control<class_Control>` малюється поверх дочірніх елементів **SplitContainer**, тому об’єкти малювання :ref:`CanvasItem<class_CanvasItem>`, викликані з :ref:`Control<class_Control>`, і дочірні об’єкти, додані до :ref:`Control<class_Control>`, також відображатимуться над дочірніми елементами **SplitContainer**. Спробуйте встановити :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` користувацьких дочірніх елементів на :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`, щоб запобігти блокуванню перетягування мишею, якщо це потрібно. 

\ **Попередження:** Це обов’язковий внутрішній вузол, його видалення та звільнення може призвести до збою.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

Returns an :ref:`Array<class_Array>` of the drag area :ref:`Control<class_Control>`\ s. These are the interactable :ref:`Control<class_Control>` nodes between each child. For example, this can be used to add a pre-configured button to a drag area :ref:`Control<class_Control>` so that it rides along with the split bar. Try setting the :ref:`Button<class_Button>` anchors to ``center`` prior to the :ref:`Node.reparent()<class_Node_method_reparent>` call.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **Note:** The drag area :ref:`Control<class_Control>`\ s are drawn over the **SplitContainer**'s children, so :ref:`CanvasItem<class_CanvasItem>` draw objects called from a drag area and children added to it will also appear over the **SplitContainer**'s children. Try setting :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` of custom children to :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` to prevent blocking the mouse from dragging if desired.

\ **Warning:** These are required internal nodes, removing or freeing them may cause a crash.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

Колір сенсорного перетягувача.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

Колір сенсорного перетягувача при наведенні курсора.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

Колір сенсорного перетягувача при натисканні.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

Boolean value. If ``1`` (``true``), the grabbers will hide automatically when they aren't under the cursor. If ``0`` (``false``), the grabbers are always visible. The :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` must be :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

The minimum thickness of the area users can click on to grab a split bar. This ensures that the split bar can still be dragged if :ref:`separation<class_SplitContainer_theme_constant_separation>` or :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`'s size is too narrow to easily select.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

The split bar thickness, i.e., the gap between each child of the container. This is overridden by the size of the grabber icon if :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` is set to :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`, or :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>`, and :ref:`separation<class_SplitContainer_theme_constant_separation>` is smaller than the size of the grabber icon in the same axis.

\ **Note:** To obtain :ref:`separation<class_SplitContainer_theme_constant_separation>` values less than the size of the grabber icon, for example a ``1 px`` hairline, set :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` or :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` to a new :ref:`ImageTexture<class_ImageTexture>`, which effectively sets the grabber icon size to ``0 px``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

The icon used for the grabbers drawn in the separations. This is only used in :ref:`HSplitContainer<class_HSplitContainer>` and :ref:`VSplitContainer<class_VSplitContainer>`. For **SplitContainer**, see :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` and :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` instead.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

The icon used for the grabbers drawn in the separations when :ref:`vertical<class_SplitContainer_property_vertical>` is ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

Піктограма, яка використовується для маркера перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``, а :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

Піктограма, яка використовується для ручки перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``. Використовується лише в :ref:`HSplitContainer<class_HSplitContainer>` та :ref:`VSplitContainer<class_VSplitContainer>`. Для **SplitContainer** дивіться :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` та :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

The icon used for the grabbers drawn in the separations when :ref:`vertical<class_SplitContainer_property_vertical>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

Піктограма, яка використовується для маркера перетягування, коли :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` має значення ``true``, а :ref:`vertical<class_SplitContainer_property_vertical>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

Визначає фон розділеної смуги, якщо її товщина більша за нуль.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
