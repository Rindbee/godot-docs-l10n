:github_url: hide

.. _class_VScrollBar:

VScrollBar
==========

**Наследует:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вертикальная полоса прокрутки, идущая сверху (мин.) вниз (макс.).

.. rst-class:: classref-introduction-group

Описание
----------------

Вертикальная полоса прокрутки, обычно используемая для навигации по содержимому, выходящему за пределы видимой высоты элемента управления. Это элемент управления на основе :ref:`Range<class_Range>`, который идет сверху (min) вниз (max). Обратите внимание, что это направление противоположно направлению :ref:`VSlider<class_VSlider>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_left<class_VScrollBar_theme_constant_padding_left>`   | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_right<class_VScrollBar_theme_constant_padding_right>` | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_VScrollBar_theme_constant_padding_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_left** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_left>`

Padding between the left of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_VScrollBar_theme_constant_padding_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_right** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_right>`

Padding between the right of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
