:github_url: hide

.. meta::
	:keywords: tray

.. _class_StatusIndicator:

StatusIndicator
===============

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Индикатор состояния приложения (он же значок в области уведомлений).

\ **Примечание:** Индикатор состояния реализован в macOS и Windows.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_StatusIndicator_property_icon>`       |                  |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`   | :ref:`menu<class_StatusIndicator_property_menu>`       | ``NodePath("")`` |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`String<class_String>`       | :ref:`tooltip<class_StatusIndicator_property_tooltip>` | ``""``           |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`           | :ref:`visible<class_StatusIndicator_property_visible>` | ``true``         |
   +-----------------------------------+--------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_StatusIndicator_method_get_rect>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_StatusIndicator_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ mouse_button\: :ref:`int<class_int>`, mouse_position\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_StatusIndicator_signal_pressed>`

Издается при нажатии индикатора состояния.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StatusIndicator_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_StatusIndicator_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_icon**\ (\ )

Значок индикатора состояния.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_menu:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **menu** = ``NodePath("")`` :ref:`🔗<class_StatusIndicator_property_menu>`

.. rst-class:: classref-property-setget

- |void| **set_menu**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_menu**\ (\ )

Индикатор состояния собственного всплывающего меню. Если это установлено, сигнал :ref:`press<class_StatusIndicator_signal_press>` не выдается.

\ **Примечание:** Собственное всплывающее меню поддерживается только в том случае, если :ref:`NativeMenu<class_NativeMenu>` поддерживает функцию :ref:`NativeMenu.FEATURE_POPUP_MENU<class_NativeMenu_constant_FEATURE_POPUP_MENU>`.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_tooltip:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip** = ``""`` :ref:`🔗<class_StatusIndicator_property_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip**\ (\ )

Подсказка индикатора состояния.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_StatusIndicator_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Если ``true``, индикатор состояния виден.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StatusIndicator_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_StatusIndicator_method_get_rect>`

Возвращает прямоугольник индикатора состояния в экранных координатах. Если этот индикатор состояния не виден, возвращает пустой :ref:`Rect2<class_Rect2>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
