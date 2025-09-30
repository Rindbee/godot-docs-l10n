:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/CheckButton.xml.

.. _class_CheckButton:

CheckButton
===========

**Наследует:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, представляющая бинарный выбор.

.. rst-class:: classref-introduction-group

Описание
----------------

**CheckButton** — это кнопка-переключатель, отображаемая как поле для флажка. По функциональности она похожа на :ref:`CheckBox<class_CheckBox>`, но имеет другой внешний вид. Чтобы следовать установленным шаблонам UX, рекомендуется использовать **CheckButton**, когда переключение оказывает **немедленный** эффект на что-либо. Например, ее можно использовать, когда нажатие показывает или скрывает расширенные настройки, не запрашивая у пользователя подтверждения этого действия.

См. также :ref:`BaseButton<class_BaseButton>`, который содержит общие свойства и методы, связанные с этим узлом.

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

   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_checked_color<class_CheckButton_theme_color_button_checked_color>`              | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_unchecked_color<class_CheckButton_theme_color_button_unchecked_color>`          | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckButton_theme_constant_check_v_offset>`                       | ``0``                 |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckButton_theme_icon_checked>`                                         |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckButton_theme_icon_checked_disabled>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled_mirrored<class_CheckButton_theme_icon_checked_disabled_mirrored>`     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_mirrored<class_CheckButton_theme_icon_checked_mirrored>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckButton_theme_icon_unchecked>`                                     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckButton_theme_icon_unchecked_disabled>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled_mirrored<class_CheckButton_theme_icon_unchecked_disabled_mirrored>` |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_mirrored<class_CheckButton_theme_icon_unchecked_mirrored>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_CheckButton_theme_color_button_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_checked_color>`

Цвет отмеченного значка при нажатии на флажок.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_color_button_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_unchecked_color>`

Цвет неотмеченного значка, когда флажок не нажат.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckButton_theme_constant_check_v_offset>`

Вертикальное смещение, используемое при отрисовке значков переключения (в пикселях).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckButton_theme_icon_checked>`

Значок, отображаемый при установке флажка **CheckButton** (для макетов слева направо).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled>`

Значок, отображаемый, когда **CheckButton** отмечен и отключен (для макетов слева направо).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled_mirrored>`

Значок, отображаемый, когда **CheckButton** отмечен и отключен (для макетов с письмом справа налево).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_mirrored>`

Значок, отображаемый при установке флажка **CheckButton** (для макетов с письмом справа налево).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckButton_theme_icon_unchecked>`

Значок, отображаемый при снятом флажке **CheckButton** (для макетов слева направо).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled>`

Значок, отображаемый, когда **CheckButton** не отмечен и отключен (для макетов слева направо).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled_mirrored>`

Значок, отображаемый, когда **CheckButton** не отмечен и отключен (для макетов с письмом справа налево).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_mirrored>`

Значок, отображаемый при снятом флажке **CheckButton** (для макетов с письмом справа налево).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
