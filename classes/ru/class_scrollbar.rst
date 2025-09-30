:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

Абстрактный базовый класс для полос прокрутки.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для полос прокрутки, обычно используемых для навигации по содержимому, выходящему за пределы видимой области элемента управления. Полосы прокрутки — это элементы управления на основе :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`custom_step<class_ScrollBar_property_custom_step>` | ``-1.0``                                                            |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                               | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | step                                                     | ``0.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_ScrollBar_theme_icon_decrement>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_ScrollBar_theme_icon_decrement_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_pressed<class_ScrollBar_theme_icon_decrement_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_ScrollBar_theme_icon_increment>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_ScrollBar_theme_icon_increment_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_pressed<class_ScrollBar_theme_icon_increment_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber<class_ScrollBar_theme_style_grabber>`                        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_highlight<class_ScrollBar_theme_style_grabber_highlight>`    |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_pressed<class_ScrollBar_theme_style_grabber_pressed>`        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll<class_ScrollBar_theme_style_scroll>`                          |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll_focus<class_ScrollBar_theme_style_scroll_focus>`              |
   +-----------------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

Выдается при прокрутке полосы прокрутки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

Переопределяет шаг, используемый при нажатии кнопок увеличения и уменьшения или при использовании клавиш со стрелками, когда фокус находится на **ScrollBar**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

Значок используется как кнопка для прокрутки **ScrollBar** влево/вверх. Поддерживает пользовательский шаг с использованием свойства :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

Отображается при наведении курсора мыши на кнопку уменьшения.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

Отображается при нажатии кнопки уменьшения.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

Значок используется как кнопка для прокрутки **ScrollBar** вправо/вниз. Поддерживает пользовательский шаг с использованием свойства :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

Отображается при наведении курсора мыши на кнопку увеличения.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

Отображается при нажатии кнопки увеличения.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

Используется в качестве текстуры для граббера, перетаскиваемого элемента, представляющего текущую прокрутку.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

Используется, когда указатель мыши наведен на захват.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

Используется при перетаскивании захвата.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll** :ref:`🔗<class_ScrollBar_theme_style_scroll>`

Используется как фон для **ScrollBar**.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll_focus** :ref:`🔗<class_ScrollBar_theme_style_scroll_focus>`

Используется в качестве фона, когда **ScrollBar** имеет фокус GUI .

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
