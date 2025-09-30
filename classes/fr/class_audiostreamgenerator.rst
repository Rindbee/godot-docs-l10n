:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**Hérite de :** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un flux audio avec des utilitaires pour la generation de sons procéduraux.

.. rst-class:: classref-introduction-group

Description
-----------

**AudioStreamGenerator** est un type de flux audio qui ne joue pas les sons tout seul, au lieu de cela, il s'attend à ce qu'un script génère des données audio pour lui. Voir aussi :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`.

Voici un échantillon sur comment l'utiliser pour générer une onde sinusoïdale :


.. tabs::

 .. code-tab:: gdscript

    var lecture # Gardera l'AudioStreamGeneratorPlayback.
    @onready var echantillion_hz= $AudioStreamPlayer.stream.mix_rate
    var pulsation_hz = 440.0 # La fréquence de l'onde sonore
    var phase = 0.0

    func _ready():
        $AudioStreamPlayer.play()
        lecture = $AudioStreamPlayer.get_stream_playback()
        remplir_buffer()

    func remplir_buffer():
        var increment = pulse_hz / sample_hz
        var trames_disponibles = playback.get_frames_available()

        for i in range(trames_disponibles):
            lecture.push_frame(Vector2.ONE * sin(phase * TAU))
            phase = fmod(phase + increment, 1.0)

 .. code-tab:: csharp

    [Export] public AudioStreamPlayer Lecteur { get; set; }

    private AudioStreamGeneratorPlayback _lecture ; // Gardera l'AudioStreamGeneratorPlayback.
    private float _echantillionHz;
    private float _pulsationHz = 440.0f; // La fréquence de l'onde sonore
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Lecteur.Stream is AudioStreamGenerator generateur) // Typé en tant que générateur pour accéder à MixRate.
        {
            _echantillionHz = generateur.MixRate;
            Lecteur.Play();
            _lecture = (AudioStreamGeneratorPlayback)Player.GetStreamPlayback();
            RemplirBuffer();
        }
    }

    public void RemplirBuffer()
    {
        float increment = _pulsationHz / _echantillionHz;
        int trames_disponibles = _playback.GetFramesAvailable();

        for (int i = 0; i < trames_disponibles; i++)
        {
            _lecture.PushFrame(Vector2.One * (float)Mathf.Sin(phase * Mathf.Tau));
            phase = Mathf.PosMod(phase + increment, 1.0);
        }
    }



Dans l'exemple ci-dessus, le nœud "AudioStreamPlayer" doit utiliser un **AudioStreamGenerator** comme son flux. La fonction ``remplir_buffer`` fournit des données audio pour estimer une onde sinusoïdale.

Voir aussi :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` pour l'analyse du spectre audio en temps réel.

\ **Note :** En raison de contraintes de performance, cette classe est la mieux utilisée en C# ou d'un langage compilé via GDExtension. Si vous voulez toujours utiliser cette classe en GDScript, envisagez d'utiliser un :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` inférieur comme 11,025 Hz ou 22,050 Hz.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo du générateur audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                                                 | :ref:`buffer_length<class_AudioStreamGenerator_property_buffer_length>` | ``0.5``     |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                                                 | :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`           | ``44100.0`` |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` | :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` | ``2``       |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

Taux de mixage de sortie de l':ref:`AudioServer<class_AudioServer>` actuel.

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

Taux de mixage d'entrée de l':ref:`AudioServer<class_AudioServer>` actuel.

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

Taux de mixage personnalisé, spécifié par :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

Valeur maximale pour l'énumération du mode de taux de mixage.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

La longueur de la mémoire tampon à générer (en secondes). Les valeurs inférieures entraînent moins de latence, mais exigent que le script génère les données audio plus rapidement, ce qui entraîne une utilisation plus important du CPU et plus de risques de craquements audio si le CPU n'est pas assez puissant.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

The sample rate to use (in Hz). Higher values are more demanding for the CPU to generate, but result in better quality.

In games, common sample rates in use are ``11025``, ``16000``, ``22050``, ``32000``, ``44100``, and ``48000``.

According to the `Nyquist-Shannon sampling theorem <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__, there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are generating lower-pitched sounds such as voices, lower sample rates such as ``32000`` or ``22050`` may be usable with no loss in quality.

\ **Note:** **AudioStreamGenerator** is not automatically resampling input data, to produce expected result :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` should match the sampling rate of input data.

\ **Note:** If you are using :ref:`AudioEffectCapture<class_AudioEffectCapture>` as the source of your data, set :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` to :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` or :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>` to automatically match current :ref:`AudioServer<class_AudioServer>` mixing rate.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

Mode de taux de mixage. Si défini à :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>`, :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` est utilisé, le taux de mixage de l':ref:`AudioServer<class_AudioServer>` courant est utilisé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
