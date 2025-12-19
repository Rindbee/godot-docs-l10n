:github_url: hide

.. _class_PropertyTweener:

PropertyTweener
===============

**Hérite de :** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interpole une propriété d'un :ref:`Object<class_Object>` dans le temps.

.. rst-class:: classref-introduction-group

Description
-----------

**PropertyTweener** est utilisé pour interpoler une propriété dans un objet. Voir :ref:`Tween.tween_property()<class_Tween_method_tween_property>` pour plus d'informations.

Le tweener se finira automatiquement si l'objet cible est libéré.

\ **Note :** :ref:`Tween.tween_property()<class_Tween_method_tween_property>` est le seul moyen correct de créer un **PropertyTweener**. Les **PropertyTweener** créés manuellement ne fonctionneront pas correctement.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`as_relative<class_PropertyTweener_method_as_relative>`\ (\ )                                                                                |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`from<class_PropertyTweener_method_from>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`from_current<class_PropertyTweener_method_from_current>`\ (\ )                                                                              |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_custom_interpolator<class_PropertyTweener_method_set_custom_interpolator>`\ (\ interpolator_method\: :ref:`Callable<class_Callable>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_delay<class_PropertyTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_ease<class_PropertyTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_trans<class_PropertyTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PropertyTweener_method_as_relative:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **as_relative**\ (\ ) :ref:`🔗<class_PropertyTweener_method_as_relative>`

Quand appelée, la valeur finale sera utilisée comme une valeur relative à la place.

\ **Exemple :** Déplacer le nœud de ``100`` pixels vers la droite.


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property(self, "position", Vector2.RIGHT * 100, 1).as_relative()

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(this, "position", Vector2.Right * 100.0f, 1.0f).AsRelative();



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_from:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **from**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PropertyTweener_method_from>`

Définit une valeur initiale personnalisée pour le **PropertyTweener**.

\ **Exemple :** Déplacer le nœud de la position ``(100, 100)`` à ``(200, 100)``.


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property(self, "position", Vector2(200, 100), 1).from(Vector2(100, 100))

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(new Vector2(100.0f, 100.0f));



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_from_current:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **from_current**\ (\ ) :ref:`🔗<class_PropertyTweener_method_from_current>`

Fait que ce **PropertyTweener** utilisera la valeur de propriété actuelle (c'est-à-dire au moment de créer ce **PropertyTweener**) comme point de départ. Ceci est équivalent à l'utilisation de :ref:`from()<class_PropertyTweener_method_from>` avec la valeur actuelle. Ces deux appels sont identiques :


.. tabs::

 .. code-tab:: gdscript

    tween.tween_property(self, "position", Vector2(200, 100), 1).from(position)
    tween.tween_property(self, "position", Vector2(200, 100), 1).from_current()

 .. code-tab:: csharp

    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(Position);
    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).FromCurrent();



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_custom_interpolator:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_custom_interpolator**\ (\ interpolator_method\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_PropertyTweener_method_set_custom_interpolator>`

Allows interpolating the value with a custom easing function. The provided ``interpolator_method`` will be called with a value ranging from ``0.0`` to ``1.0`` and is expected to return a value within the same range (values outside the range can be used for overshoot). The return value of the method is then used for interpolation between initial and final value. Note that the parameter passed to the method is still subject to the tweener's own easing.


.. tabs::

 .. code-tab:: gdscript

    @export var curve: Curve

    func _ready():
        var tween = create_tween()
        # Interpolate the value using a custom curve.
        tween.tween_property(self, "position:x", 300, 1).as_relative().set_custom_interpolator(tween_curve)

    func tween_curve(v):
        return curve.sample_baked(v)

 .. code-tab:: csharp

    [Export]
    public Curve Curve { get; set; }

    public override void _Ready()
    {
        Tween tween = CreateTween();
        // Interpolate the value using a custom curve.
        Callable tweenCurveCallable = Callable.From<float, float>(TweenCurve);
        tween.TweenProperty(this, "position:x", 300.0f, 1.0f).AsRelative().SetCustomInterpolator(tweenCurveCallable);
    }

    private float TweenCurve(float value)
    {
        return Curve.SampleBaked(value);
    }



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PropertyTweener_method_set_delay>`

Définit le délai en secondes avant que le **PropertyTweener** commence son interpolation. Par défaut, il n'y a pas de délai.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_ease>`

Définit le type de comportement utilisé pour :ref:`EaseType<enum_Tween_EaseType>`. Si non défini, le comportement par défaut sera celui utilisé dans le :ref:`Tween<class_Tween>` qui contient ce Tweener.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_trans>`

Définit le type de transition utilisée pour :ref:`TransitionType<enum_Tween_TransitionType>`. Si non défini, la transition par défaut sera celle utilisée dans le :ref:`Tween<class_Tween>` qui contient ce Tweener.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
