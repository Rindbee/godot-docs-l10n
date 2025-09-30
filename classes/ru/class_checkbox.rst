:github_url: hide

.. _class_CheckBox:

CheckBox
========

**Наследует:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, представляющая бинарный выбор.

.. rst-class:: classref-introduction-group

Описание
----------------

**CheckBox** позволяет пользователю выбрать один из двух возможных вариантов. Он похож на :ref:`CheckButton<class_CheckButton>` по функциональности, но имеет другой внешний вид. Чтобы следовать установленным шаблонам UX, рекомендуется использовать **CheckBox**, когда переключение **не** оказывает немедленного эффекта на что-либо. Например, его можно использовать, когда переключение будет выполнять что-либо только после нажатия кнопки подтверждения.

См. также :ref:`BaseButton<class_BaseButton>`, который содержит общие свойства и методы, связанные с этим узлом.

Когда :ref:`BaseButton.button_group<class_BaseButton_property_button_group>` указывает :ref:`ButtonGroup<class_ButtonGroup>`, **CheckBox** меняет свой внешний вид на вид переключателя и использует различные свойства темы ``radio_*``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_checked_color<class_CheckBox_theme_color_checkbox_checked_color>`     | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_unchecked_color<class_CheckBox_theme_color_checkbox_unchecked_color>` | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckBox_theme_constant_check_v_offset>`                  | ``0``                 |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckBox_theme_icon_checked>`                                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckBox_theme_icon_checked_disabled>`                  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked<class_CheckBox_theme_icon_radio_checked>`                        |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked_disabled<class_CheckBox_theme_icon_radio_checked_disabled>`      |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked<class_CheckBox_theme_icon_radio_unchecked>`                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked_disabled<class_CheckBox_theme_icon_radio_unchecked_disabled>`  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckBox_theme_icon_unchecked>`                                |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckBox_theme_icon_unchecked_disabled>`              |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_CheckBox_theme_color_checkbox_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_checked_color>`

Цвет отмеченного значка при нажатии на флажок.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_color_checkbox_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_unchecked_color>`

Цвет неотмеченного значка, когда флажок не нажат.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckBox_theme_constant_check_v_offset>`

Вертикальное смещение, используемое при отрисовке значков галочек (в пикселях).

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckBox_theme_icon_checked>`

Значок галочки, отображаемый при установке флажка **CheckBox**.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_checked_disabled>`

Значок галочки, отображаемый, когда **CheckBox** отмечен и отключен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked** :ref:`🔗<class_CheckBox_theme_icon_radio_checked>`

Значок галочки, отображаемый, когда **CheckBox** настроен как переключатель и отмечен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_checked_disabled>`

Значок галочки, отображаемый, когда **CheckBox** настроен как переключатель, отключен и не отмечен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked>`

Значок галочки, отображаемый, когда **CheckBox** настроен как переключатель и не отмечен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked_disabled>`

Значок галочки, отображаемый, когда **CheckBox** настроен как переключатель, отключен и не отмечен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckBox_theme_icon_unchecked>`

Значок галочки, отображаемый, когда флажок **CheckBox** не отмечен.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_unchecked_disabled>`

Значок галочки, отображаемый, когда флажок **CheckBox** не отмечен и отключен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
