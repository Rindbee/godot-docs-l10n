:github_url: hide

.. _class_InputEventPanGesture:

InputEventPanGesture
====================

**Наследует:** :ref:`InputEventGesture<class_InputEventGesture>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой жест панорамирования.

.. rst-class:: classref-introduction-group

Описание
----------------

Сохраняет информацию о жестах панорамирования. Жест панорамирования выполняется, когда пользователь проводит по сенсорному экрану двумя пальцами. Обычно он используется для панорамирования/прокрутки.

\ **Примечание:** На Android для этого требуется включить настройку проекта :ref:`ProjectSettings.input_devices/pointing/android/enable_pan_and_scale_gestures<class_ProjectSettings_property_input_devices/pointing/android/enable_pan_and_scale_gestures>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`delta<class_InputEventPanGesture_property_delta>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventPanGesture_property_delta:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **delta** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventPanGesture_property_delta>`

.. rst-class:: classref-property-setget

- |void| **set_delta**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_delta**\ (\ )

Объем панорамирования с момента последнего события панорамирования.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
