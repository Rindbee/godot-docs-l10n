:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**Наследует:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет MIDI-сообщение от MIDI-устройства, например музыкальной клавиатуры.

.. rst-class:: classref-introduction-group

Описание
----------------

InputEventMIDI хранит информацию о сообщениях с `MIDI <https://en.wikipedia.org/wiki/MIDI>`__ (Musical Instrument Digital Interface) устройств. К ним могут относиться музыкальные клавиатуры, синтезаторы и драм-машины.

MIDI-сообщения могут быть получены через 5-контактный разъем MIDI или через USB. Если ваше устройство поддерживает оба варианта, обязательно проверьте настройки на устройстве, чтобы узнать, какой выход оно использует.

По умолчанию Godot не обнаруживает устройства MIDI. Сначала вам нужно вызвать :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. Вы можете проверить, какие устройства обнаружены, с помощью :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>` и закрыть соединение с помощью :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        OS.open_midi_inputs()
        print(OS.get_connected_midi_inputs())

    func _input(input_event):
        if input_event is InputEventMIDI:
            _print_midi_info(input_event)

    func _print_midi_info(midi_event):
        print(midi_event)
        print("Channel ", midi_event.channel)
        print("Message ", midi_event.message)
        print("Pitch ", midi_event.pitch)
        print("Velocity ", midi_event.velocity)
        print("Instrument ", midi_event.instrument)
        print("Pressure ", midi_event.pressure)
        print("Controller number: ", midi_event.controller_number)
        print("Controller value: ", midi_event.controller_value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        OS.OpenMidiInputs();
        GD.Print(OS.GetConnectedMidiInputs());
    }

    public override void _Input(InputEvent inputEvent)
    {
        if (inputEvent is InputEventMidi midiEvent)
        {
            PrintMIDIInfo(midiEvent);
        }
    }

    private void PrintMIDIInfo(InputEventMidi midiEvent)
    {
        GD.Print(midiEvent);
        GD.Print($"Channel {midiEvent.Channel}");
        GD.Print($"Message {midiEvent.Message}");
        GD.Print($"Pitch {midiEvent.Pitch}");
        GD.Print($"Velocity {midiEvent.Velocity}");
        GD.Print($"Instrument {midiEvent.Instrument}");
        GD.Print($"Pressure {midiEvent.Pressure}");
        GD.Print($"Controller number: {midiEvent.ControllerNumber}");
        GD.Print($"Controller value: {midiEvent.ControllerValue}");
    }



\ **Примечание:** Godot не поддерживает вывод MIDI, поэтому нет способа отправлять сообщения MIDI из Godot. Поддерживается только ввод MIDI.

\ **Примечание:** На веб-платформе использование ввода MIDI требует предварительного предоставления разрешения браузеру. Этот запрос разрешения выполняется при вызове :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. Ввод MIDI не будет работать, пока пользователь не примет запрос разрешения.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Список байтов состояния сообщения MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `Википедия: Общий список MIDI-инструментов <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `Список частот клавиш фортепиано в Википедии <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`channel<class_InputEventMIDI_property_channel>`                     | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`controller_number<class_InputEventMIDI_property_controller_number>` | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`controller_value<class_InputEventMIDI_property_controller_value>`   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`instrument<class_InputEventMIDI_property_instrument>`               | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` | :ref:`message<class_InputEventMIDI_property_message>`                     | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`pitch<class_InputEventMIDI_property_pitch>`                         | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`pressure<class_InputEventMIDI_property_pressure>`                   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`velocity<class_InputEventMIDI_property_velocity>`                   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

MIDI-канал этого сообщения, диапазон от ``0`` до ``15``. MIDI-канал ``9`` зарезервирован для ударных инструментов.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

Уникальный номер контроллера, если :ref:`message<class_InputEventMIDI_property_message>` — :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, в противном случае это ``0``. Это значение можно использовать для идентификации ползунков громкости, баланса и панорамирования, а также переключателей и педалей на MIDI-устройстве. Небольшой список см. в `General MIDI specification <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

Значение, применяемое к контроллеру. Если :ref:`message<class_InputEventMIDI_property_message>` — это :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, это значение варьируется от ``0`` до ``127``, в противном случае это ``0``. См. также :ref:`controller_value<class_InputEventMIDI_property_controller_value>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

Инструмент (также называемый *program* или *preset*), используемый в этом MIDI-сообщении. Это значение варьируется от ``0`` до ``127``.

Чтобы узнать, что означает каждое значение, обратитесь к `списку инструментов General MIDI <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__. Имейте в виду, что список смещен на 1, поскольку он не начинается с 0. Значение ``0`` соответствует акустическому роялю (grand piano).

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

Представляет тип сообщения MIDI (см. перечисление :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`).

Для получения дополнительной информации см. `таблицу байтов состояния сообщения MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

Номер индекса высоты тона этого MIDI-сообщения. Это значение варьируется от ``0`` до ``127``.

На фортепиано **middle C** — это ``60``, за которым следует **C-sharp** (``61``), затем **D** (``62``) и т. д. Каждая октава разделена на смещения по 12. См. столбец «MIDI note number» в `таблице частот клавиш фортепиано <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ полный список.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

Сила нажатия клавиши. Это значение варьируется от ``0`` до ``127``.

\ **Примечание:** Для многих устройств это значение всегда равно ``0``. Другие устройства, такие как музыкальные клавиатуры, могут имитировать давление, изменяя :ref:`velocity<class_InputEventMIDI_property_velocity>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

Скорость сообщения MIDI. Это значение находится в диапазоне от ``0`` до ``127``. Для музыкальной клавиатуры это соответствует тому, как быстро была нажата клавиша, и на практике редко превышает ``110``.

\ **Примечание:** Некоторые устройства MIDI могут отправлять сообщение :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>` со скоростью ``0`` и ожидать, что оно будет обработано так же, как сообщение :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>`. При необходимости это можно обработать несколькими строками кода:

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Note pressed!")

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
