:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**Успадковує:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє ключ на клавіатурі, що натискається або звільняється.

.. rst-class:: classref-introduction-group

Опис
--------

Вхідний захід для клавіш на клавіатурі. Підтримує ключові преси, ключові релізи та події ``echo``. Також можна отримати в :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Примітка:** Події, отримані з клавіатури, зазвичай мають всі властивості, встановлених. У випадку, якщо у вас є тільки один з :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` або :ref:`unicode<class_InputEventKey_property_unicode>`.

Коли події порівнюються, властивості перевіряють в наступному пріоритеті - :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` і :ref:`unicode<class_InputEventKey_property_unicode>`. Події з першим відповідним значенням будуть розглянуті рівні.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`echo<class_InputEventKey_property_echo>`                         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`key_label<class_InputEventKey_property_key_label>`               | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`keycode<class_InputEventKey_property_keycode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` | :ref:`location<class_InputEventKey_property_location>`                 | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventKey_property_pressed>`                   | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`unicode<class_InputEventKey_property_unicode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_key_label<class_InputEventKey_method_as_text_key_label>`\ (\ ) |const|                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_keycode<class_InputEventKey_method_as_text_keycode>`\ (\ ) |const|                                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_location<class_InputEventKey_method_as_text_location>`\ (\ ) |const|                                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_physical_keycode<class_InputEventKey_method_as_text_physical_keycode>`\ (\ ) |const|                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_key_label_with_modifiers<class_InputEventKey_method_get_key_label_with_modifiers>`\ (\ ) |const|               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_keycode_with_modifiers<class_InputEventKey_method_get_keycode_with_modifiers>`\ (\ ) |const|                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_physical_keycode_with_modifiers<class_InputEventKey_method_get_physical_keycode_with_modifiers>`\ (\ ) |const| |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

Якщо ``true``, ключ вже притискався до цього заходу. Якщо користувач тримає ключ.

\ **Примітка:** Ставка, на яку надсилаються події ехо, як правило, близько 20 подій на другий (після завершення ключа на нерівномірну половину другого). Тим не менше, затримка ключа / швидкість може бути змінена користувачем або повністю вимкнена в налаштуваннях операційної системи. Щоб переконатися, що ваш проект працює правильно на всіх конфігураціях, не припустимо, користувач має конкретну функцію повторення ключів у своїй поведінки проекту.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

Represents the localized label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants or any valid Unicode character. Key labels are meant for key prompts.

For keyboard layouts with a single label on the key, it is equivalent to :ref:`keycode<class_InputEventKey_property_keycode>`.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.key_label)`` where ``event`` is the **InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

Latin label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants. Key codes are meant for shortcuts expressed with a standard Latin keyboard, such as :kbd:`Ctrl + S` for a "Save" shortcut.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.keycode)`` where ``event`` is the **InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

Представляє розташування ключа, який має як ліві, так і праві версії, такі як :kbd:`Shift` або :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

Represents the physical location of a key on the 101/102-key US QWERTY keyboard, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants. Physical key codes meant for game input, such as WASD movement, where only the location of the keys is important.

To get a human-readable representation of the **InputEventKey**, use :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` in combination with :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>` or :ref:`DisplayServer.keyboard_get_label_from_physical()<class_DisplayServer_method_keyboard_get_label_from_physical>`:


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            var label = DisplayServer.keyboard_get_label_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))
            print(OS.get_keycode_string(label))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            var label = DisplayServer.KeyboardGetLabelFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
            GD.Print(OS.GetKeycodeString(label));
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventKey_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Якщо ``true``, натискається ключовий стан. Якщо ``false``, випущена ключова держава.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

The key Unicode character code (when relevant), shifted by modifier keys. Unicode character codes for composite characters and complex scripts may not be available unless IME input mode is active. See :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>` for more information. Unicode character codes are meant for text input.

\ **Note:** This property is set by the engine only for a pressed event. If the event is sent by an IME or a virtual keyboard, no corresponding key released event is sent.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

Повертає рядкове представлення :ref:`String<class_String>` мітки_ключа_учасника :ref:`key_label<class_InputEventKey_property_key_label>` та модифікаторів події.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

Повертає рядкове представлення :ref:`String<class_String>` коду клавіші :ref:`keycode<class_InputEventKey_property_keycode>` та модифікаторів події.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

Повертає представлення події у форматі :ref:`String<class_String>` :ref:`location<class_InputEventKey_property_location>`. Це буде порожній рядок, якщо подія не пов’язана з певним місцем розташування.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

Повертає рядкове представлення :ref:`String<class_String>` для :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` та модифікаторів події.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

Повертає локалізований ярлик, що поєднує в собі ключі модифікатора, такі як :kbd:`Shift` або :kbd:`Alt`. Дивись також :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Для отримання людсько-прочитаного представлення **InputEventKey** з модифікаторами, використання ``OS.get_keycode_string(event.get_key_label_with_modifiers()``, де ``event`` є **InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

Повертає латинський код у поєднанні з модифікаторами, такими як :kbd:`Shift` або :kbd:`Alt`. Дивись також :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Для отримання людсько-прочитаного представлення **InputEventKey** з модифікаторами, використання ``OS.get_keycode_string(event.get_keycode_with_modifiers()``, де ``event`` є **InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

Повертає фізичний код, що поєднує в собі ключі модифікатора, такі як :kbd:`Shift` або :kbd:`Alt`. Дивись також :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Для отримання людсько-прочитаного представлення **InputEventKey** з модифікаторами, використання ``OS.get_keycode_string(event.get_phys_keycode_with_modifiers()``, де ``event`` є **InputEventKey**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
