:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/ButtonGroup.xml.

.. _class_ButtonGroup:

ButtonGroup
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Группа кнопок, не позволяющая нажимать более одной кнопки одновременно.

.. rst-class:: classref-introduction-group

Описание
----------------

Группа кнопок, производных от :ref:`BaseButton<class_BaseButton>`. Кнопки в **ButtonGroup** рассматриваются как радиокнопки: одновременно можно нажать не более одной кнопки. Некоторые типы кнопок (например, :ref:`CheckBox<class_CheckBox>`) могут иметь особый вид в этом состоянии.

Каждый член **ButtonGroup** должен иметь :ref:`BaseButton.toggle_mode<class_BaseButton_property_toggle_mode>`, установленный на ``true``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_unpress<class_ButtonGroup_property_allow_unpress>` | ``false``                                                                             |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                        | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] | :ref:`get_buttons<class_ButtonGroup_method_get_buttons>`\ (\ )               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`BaseButton<class_BaseButton>`                              | :ref:`get_pressed_button<class_ButtonGroup_method_get_pressed_button>`\ (\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_ButtonGroup_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ button\: :ref:`BaseButton<class_BaseButton>`\ ) :ref:`🔗<class_ButtonGroup_signal_pressed>`

Издается при нажатии одной из кнопок группы.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ButtonGroup_property_allow_unpress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_unpress** = ``false`` :ref:`🔗<class_ButtonGroup_property_allow_unpress>`

.. rst-class:: classref-property-setget

- |void| **set_allow_unpress**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_unpress**\ (\ )

Если ``true``, можно отжать все кнопки в этой **ButtonGroup**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ButtonGroup_method_get_buttons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] **get_buttons**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_buttons>`

Возвращает :ref:`Array<class_Array>` :ref:`Button<class_Button>`-ок, у которых это значение равно **ButtonGroup** (см. :ref:`BaseButton.button_group<class_BaseButton_property_button_group>`).

.. rst-class:: classref-item-separator

----

.. _class_ButtonGroup_method_get_pressed_button:

.. rst-class:: classref-method

:ref:`BaseButton<class_BaseButton>` **get_pressed_button**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_pressed_button>`

Возвращает текущую нажатую кнопку.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
