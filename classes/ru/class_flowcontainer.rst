:github_url: hide

.. _class_FlowContainer:

FlowContainer
=============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HFlowContainer<class_HFlowContainer>`, :ref:`VFlowContainer<class_VFlowContainer>`

Контейнер, который располагает свои дочерние элементы управления горизонтально или вертикально и оборачивает их по границам.

.. rst-class:: classref-introduction-group

Описание
----------------

Контейнер, который размещает свои дочерние элементы управления горизонтально или вертикально и оборачивает их вокруг границ. Это похоже на то, как текст в книге оборачивается, когда больше слов не помещается на строке.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`                 | :ref:`alignment<class_FlowContainer_property_alignment>`                     | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` | :ref:`last_wrap_alignment<class_FlowContainer_property_last_wrap_alignment>` | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`reverse_fill<class_FlowContainer_property_reverse_fill>`               | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`vertical<class_FlowContainer_property_vertical>`                       | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_line_count<class_FlowContainer_method_get_line_count>`\ (\ ) |const| |
   +-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_FlowContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_FlowContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_FlowContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_FlowContainer_AlignmentMode>`

.. _class_FlowContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Дочерние элементы управления будут расположены в начале контейнера, т. е. сверху, если ориентация вертикальная, слева, если ориентация горизонтальная (справа для макета RTL).

.. _class_FlowContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Дочерние элементы управления будут размещены в центре контейнера.

.. _class_FlowContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Дочерние элементы управления будут располагаться в конце контейнера, т. е. внизу, если ориентация вертикальная, справа, если ориентация горизонтальная (слева для макета RTL).

.. rst-class:: classref-item-separator

----

.. _enum_FlowContainer_LastWrapAlignmentMode:

.. rst-class:: classref-enumeration

enum **LastWrapAlignmentMode**: :ref:`🔗<enum_FlowContainer_LastWrapAlignmentMode>`

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_INHERIT** = ``0``

Последняя частично заполненная строка или столбец будут перенесены и выровнены относительно предыдущей строки или столбца в соответствии с :ref:`alignment<class_FlowContainer_property_alignment>`.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_BEGIN** = ``1``

Последняя частично заполненная строка или столбец будут перенесены и выровнены по началу предыдущей строки или столбца.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_CENTER** = ``2``

Последняя частично заполненная строка или столбец будут перенесены и выровнены по центру предыдущей строки или столбца.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_END** = ``3``

Последняя частично заполненная строка или столбец будут перенесены и выровнены по концу предыдущей строки или столбца.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_FlowContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **get_alignment**\ (\ )

Выравнивание дочерних элементов контейнера (должно быть одним из :ref:`ALIGNMENT_BEGIN<class_FlowContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_FlowContainer_constant_ALIGNMENT_CENTER>` или :ref:`ALIGNMENT_END<class_FlowContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_last_wrap_alignment:

.. rst-class:: classref-property

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **last_wrap_alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_last_wrap_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_last_wrap_alignment**\ (\ value\: :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>`\ )
- :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **get_last_wrap_alignment**\ (\ )

Поведение переноса последней, частично заполненной строки или столбца (должно быть одним из :ref:`LAST_WRAP_ALIGNMENT_INHERIT<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT>`, :ref:`LAST_WRAP_ALIGNMENT_BEGIN<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN>`, :ref:`LAST_WRAP_ALIGNMENT_CENTER<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER>` или :ref:`LAST_WRAP_ALIGNMENT_END<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_reverse_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_fill** = ``false`` :ref:`🔗<class_FlowContainer_property_reverse_fill>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_fill**\ (\ )

Если ``true``, меняет направление заполнения. Горизонтальные **FlowContainer** будут заполнять строки снизу вверх, вертикальные **FlowContainer** будут заполнять столбцы справа налево.

При использовании вертикального **FlowContainer** с :ref:`Control.layout_direction<class_Control_property_layout_direction>` справа налево столбцы будут заполняться слева направо.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_FlowContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Если ``true``, **FlowContainer** расположит свои дочерние элементы вертикально, а не горизонтально.

Нельзя изменить при использовании :ref:`HFlowContainer<class_HFlowContainer>` и :ref:`VFlowContainer<class_VFlowContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_FlowContainer_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_FlowContainer_method_get_line_count>`

Возвращает текущее количество строк.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_FlowContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_h_separation>`

Горизонтальное разделение дочерних узлов.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_v_separation>`

Вертикальное разделение дочерних узлов.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
