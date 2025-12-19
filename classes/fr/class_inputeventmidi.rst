:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**Hérite de :** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente un message MIDI d'un appareil MIDI, tel qu'un clavier de musique.

.. rst-class:: classref-introduction-group

Description
-----------

InputEventMIDI stocke des informations sur des messages de périphériques `MIDI <https://fr.wikipedia.org/wiki/Musical_Instrument_Digital_Interface>`__ (Musical Instrument Digital Interface, litt. "Interface pour instrument de musique numérique"). Il peut s'agir de claviers de musique, de synthétiseurs et de boîtes à rythmes.

Les messages MIDI peuvent être reçus sur un connecteur MIDI 5 broches ou par USB. Si votre appareil prend en charge les deux, assurez-vous de vérifier les paramètres de l'appareil pour voir quelle sortie il utilise.

Par défaut, Godot ne détecte pas les périphériques MIDI. Vous devez d'abord appeler :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. Vous pouvez vérifier quels périphériques sont détectés avec :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>`, et fermer la connexion avec :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        OS.open_midi_inputs()
        print(OS.get_connected_midi_inputs())

    func _input(input_event):
        if input_event is InputEventMIDI:
            _afficher_info_midi(input_event)

    func _afficher_info_midi(evenement_midi):
        print(midi_event)
        print("Canal ", evenement_midi.channel)
        print("Message ", evenement_midi.message)
        print("Hauteur ", evenement_midi.pitch)
        print("Vitesse ", evenement_midi.velocity)
        print("Instrument ", evenement_midi.instrument)
        print("Pression ", evenement_midi.pressure)
        print("Numéro du contrôleur : ", evenement_midi.controller_number)
        print("Valeur du contrôleur : ", evenement_midi.controller_value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        OS.OpenMidiInputs();
        GD.Print(OS.GetConnectedMidiInputs());
    }

    public override void _Input(InputEvent inputEvent)
    {
        if (inputEvent is InputEventMidi evenementMidi)
        {
            AfficherInfoMIDI(evenementMidi);
        }
    }

    private void AfficherInfoMIDI(InputEventMidi evenementMidi)
    {
        GD.Print(midiEvent);
        GD.Print($"Canal {evenementMidi.Channel}");
        GD.Print($"Message {evenementMidi.Message}");
        GD.Print($"Hauteur {evenementMidi.Pitch}");
        GD.Print($"Vitesse {evenementMidi.Velocity}");
        GD.Print($"Instrument {evenementMidi.Instrument}");
        GD.Print($"Pression {evenementMidi.Pressure}");
        GD.Print($"Numéro du contrôleur : {evenementMidi.ControllerNumber}");
        GD.Print($"Valeur du contrôleur : {evenementMidi.ControllerValue}");
    }



\ **Note :** Godot ne supporte pas la sortie MIDI, donc il n'y a aucun moyen d'émettre des messages MIDI depuis Godot. Seule l'entrée MIDI est supportée.

\ **Note :** Sur la plate-forme Web, l'utilisation de l'entrée MIDI nécessite une autorisation du navigateur accordée d'abord. Cette requête de permission est effectuée lors de l'appel à :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. L'entrée MIDI ne fonctionnera pas tant que l'utilisateur n'aura pas accepté la requête de permission.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Liste des octets de statut de message MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `Liste d'instruments General MIDI de Wikipédia <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `La liste des fréquences des touches de piano sur Wikipédia <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

Le canal MIDI de ce message, allant de ``0`` à ``15``. Le canal MIDI ``9`` est réservé aux instruments à percussion.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

The unique number of the controller, if :ref:`message<class_InputEventMIDI_property_message>` is :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, otherwise this is ``0``. This value can be used to identify sliders for volume, balance, and panning, as well as switches and pedals on the MIDI device. See the `General MIDI specification <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__ for a small list.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

La valeur appliquée au contrôleur. Si :ref:`message<class_InputEventMIDI_property_message>` vaut :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, cette valeur varie de ``0`` à ``127``, sinon elle vaut ``0``. Voir aussi :ref:`controller_value<class_InputEventMIDI_property_controller_value>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

The instrument (also called *program* or *preset*) used on this MIDI message. This value ranges from ``0`` to ``127``.

To see what each value means, refer to the `General MIDI's instrument list <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__. Keep in mind that the list is off by 1 because it does not begin from 0. A value of ``0`` corresponds to the acoustic grand piano.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

Représente le type de message MIDI (voir l’énumération :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`).

Pour plus d'informations, voir la `spécification de la liste des octets de statut de message MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

The pitch index number of this MIDI message. This value ranges from ``0`` to ``127``.

On a piano, the **middle C** is ``60``, followed by a **C-sharp** (``61``), then a **D** (``62``), and so on. Each octave is split in offsets of 12. See the "MIDI note number" column of the `piano key frequency chart <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ a full list.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

La force de la touche appuyée. Cette valeur varie de ``0`` à ``127``.

\ **Note :** Pour de nombreux appareils, cette valeur vaut toujours ``0``. D'autres appareils tels que les claviers de musique peuvent simuler la pression en changeant :ref:`velocity<class_InputEventMIDI_property_velocity>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

La vitesse du message MIDI. Cette valeur varie de ``0`` à ``127``. Pour un clavier de musique, cela correspond à la rapidité avec laquelle la touche a été appuyée et est rarement supérieure à ``110`` en pratique.

\ **Note :** Certains périphériques MIDI peuvent envoyer un message :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>` avec une vitesse de ``0`` et s'attendent à ce qu'il soit traité comme un message :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>`. Si nécessaire, cela peut être géré avec quelques lignes de code :

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Touche appuyée !")

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
