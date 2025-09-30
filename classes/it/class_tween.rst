:github_url: hide

.. _class_Tween:

Tween
=====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Oggetto leggero utilizzato per animazioni generiche tramite script, utilizzando i :ref:`Tweener<class_Tweener>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tweens are mostly useful for animations requiring a numerical property to be interpolated over a range of values. The name *tween* comes from *in-betweening*, an animation technique where you specify *keyframes* and the computer interpolates the frames that appear between them. Animating something with a **Tween** is called tweening.

\ **Tween** is more suited than :ref:`AnimationPlayer<class_AnimationPlayer>` for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a **Tween**; it would be difficult to do the same thing with an :ref:`AnimationPlayer<class_AnimationPlayer>` node. Tweens are also more light-weight than :ref:`AnimationPlayer<class_AnimationPlayer>`, so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a "fire-and-forget" manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped :ref:`CallbackTweener<class_CallbackTweener>` with a delay.

A **Tween** can be created by using either :ref:`SceneTree.create_tween()<class_SceneTree_method_create_tween>` or :ref:`Node.create_tween()<class_Node_method_create_tween>`. **Tween**\ s created manually (i.e. by using ``Tween.new()``) are invalid and can't be used for tweening values.

A tween animation is created by adding :ref:`Tweener<class_Tweener>`\ s to the **Tween** object, using :ref:`tween_property()<class_Tween_method_tween_property>`, :ref:`tween_interval()<class_Tween_method_tween_interval>`, :ref:`tween_callback()<class_Tween_method_tween_callback>` or :ref:`tween_method()<class_Tween_method_tween_method>`:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



This sequence will make the ``$Sprite`` node turn red, then shrink, before finally calling :ref:`Node.queue_free()<class_Node_method_queue_free>` to free the sprite. :ref:`Tweener<class_Tweener>`\ s are executed one after another by default. This behavior can be changed using :ref:`parallel()<class_Tween_method_parallel>` and :ref:`set_parallel()<class_Tween_method_set_parallel>`.

When a :ref:`Tweener<class_Tweener>` is created with one of the ``tween_*`` methods, a chained method call can be used to tweak the properties of this :ref:`Tweener<class_Tweener>`. For example, if you want to set a different transition type in the above example, you can use :ref:`set_trans()<class_Tween_method_set_trans>`:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0).set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0).set_trans(Tween.TRANS_BOUNCE)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f).SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f).SetTrans(Tween.TransitionType.Bounce);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



Most of the **Tween** methods can be chained this way too. In the following example the **Tween** is bound to the running script's node and a default transition is set for its :ref:`Tweener<class_Tweener>`\ s:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    var tween = GetTree().CreateTween().BindNode(this).SetTrans(Tween.TransitionType.Elastic);
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



Another interesting use for **Tween**\ s is animating arbitrary sets of objects:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    for sprite in get_children():
        tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    foreach (Node sprite in GetChildren())
        tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);



In the example above, all children of a node are moved one after another to position ``(0, 0)``.

You should avoid using more than one **Tween** per object's property. If two or more tweens animate one property at the same time, the last one created will take priority and assign the final value. If you want to interrupt and restart an animation, consider assigning the **Tween** to a variable:


.. tabs::

 .. code-tab:: gdscript

    var tween
    func animate():
        if tween:
            tween.kill() # Abort the previous animation.
        tween = create_tween()

 .. code-tab:: csharp

    private Tween _tween;

    public void Animate()
    {
        if (_tween != null)
            _tween.Kill(); // Abort the previous animation
        _tween = CreateTween();
    }



Some :ref:`Tweener<class_Tweener>`\ s use transitions and eases. The first accepts a :ref:`TransitionType<enum_Tween_TransitionType>` constant, and refers to the way the timing of the animation is handled (see `easings.net <https://easings.net/>`__ for some examples). The second accepts an :ref:`EaseType<enum_Tween_EaseType>` constant, and controls where the ``trans_type`` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different :ref:`TransitionType<enum_Tween_TransitionType>` constants with :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`, and use the one that looks best.

\ `Tween easing and transition types cheatsheet <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp>`__\ 

\ **Note:** Tweens are not designed to be reused and trying to do so results in an undefined behavior. Create a new Tween for each animation and every time you replay an animation from start. Keep in mind that Tweens start immediately, so only create a Tween when you want to start animating.

\ **Note:** The tween is processed after all of the nodes in the current frame, i.e. node's :ref:`Node._process()<class_Node_private_method__process>` method would be called before the tween (or :ref:`Node._physics_process()<class_Node_private_method__physics_process>` depending on the value passed to :ref:`set_process_mode()<class_Tween_method_set_process_mode>`).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`bind_node<class_Tween_method_bind_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`chain<class_Tween_method_chain>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`custom_step<class_Tween_method_custom_step>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`get_loops_left<class_Tween_method_get_loops_left>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | :ref:`get_total_elapsed_time<class_Tween_method_get_total_elapsed_time>`\ (\ ) |const|                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`interpolate_value<class_Tween_method_interpolate_value>`\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_running<class_Tween_method_is_running>`\ (\ )                                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_valid<class_Tween_method_is_valid>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`kill<class_Tween_method_kill>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`parallel<class_Tween_method_parallel>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`pause<class_Tween_method_pause>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`play<class_Tween_method_play>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ease<class_Tween_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ignore_time_scale<class_Tween_method_set_ignore_time_scale>`\ (\ ignore\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_loops<class_Tween_method_set_loops>`\ (\ loops\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_parallel<class_Tween_method_set_parallel>`\ (\ parallel\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_pause_mode<class_Tween_method_set_pause_mode>`\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ )                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_process_mode<class_Tween_method_set_process_mode>`\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ )                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_speed_scale<class_Tween_method_set_speed_scale>`\ (\ speed\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_trans<class_Tween_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )                                                                                                                                                                                                                                                             |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`stop<class_Tween_method_stop>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`tween_callback<class_Tween_method_tween_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ )                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`IntervalTweener<class_IntervalTweener>` | :ref:`tween_interval<class_Tween_method_tween_interval>`\ (\ time\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                           |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>`     | :ref:`tween_method<class_Tween_method_tween_method>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`tween_property<class_Tween_method_tween_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                          |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`tween_subtween<class_Tween_method_tween_subtween>`\ (\ subtween\: :ref:`Tween<class_Tween>`\ )                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

Emesso quando il **Tween** ha terminato tutto il tweening. Non emesso mai quando il **Tween** è impostato su ciclo infinito (vedi :ref:`set_loops()<class_Tween_method_set_loops>`).

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

Emesso quando un ciclo intero è completato (vedi :ref:`set_loops()<class_Tween_method_set_loops>`), fornendo l'indice del ciclo. Questo segnale non viene emesso dopo il ciclo finale, usa invece :ref:`finished<class_Tween_signal_finished>` per questo caso.

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

Emesso quando un passaggio del **Tween** è completato, fornendo l'indice del passaggio. Un passaggio è un singolo :ref:`Tweener<class_Tweener>` o un gruppo di :ref:`Tweener<class_Tweener>` in esecuzione in parallelo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

Il **Tween** si aggiorna dopo ogni frame di fisica (vedi :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

Il **Tween** si aggiorna dopo ogni frame di processo (vedi :ref:`Node._process()<class_Node_private_method__process>`).

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

Se il **Tween** ha un nodo associato, sarà elaborato quando quel nodo può elaborare (vedi :ref:`Node.process_mode<class_Node_property_process_mode>`). Altrimenti è lo stesso di :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>`.

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

Se lo :ref:`SceneTree<class_SceneTree>` è in pausa, anche il **Tween** sarà messo in pausa.

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

Il **Tween** sarà elaborato a prescindere dal fatto che :ref:`SceneTree<class_SceneTree>` sia in pausa o meno.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

L'animazione è interpolata linearmente.

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

L'animazione è interpolata tramite una funzione sinusoidale.

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

L'animazione è interpolata con una funzione quintica (alla potenza di 5).

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

L'animazione è interpolata con una funzione quartica (alla potenza di 4).

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

L'animazione è interpolata con una funzione quadratica (alla potenza di 2).

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

L'animazione è interpolata con una funzione esponenziale (alla potenza di x).

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

L'animazione è interpolata con elasticità, oscillando lungo le estremità.

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

L'animazione è interpolata con una funzione cubica (alla potenza di 3).

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

L'animazione è interpolata con una funzione radice quadrata.

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

L'animazione è interpolata rimbalzando alla fine.

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

L'animazione è interpolata tornando indietro alle estremità.

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

L'animazione è interpolata come una molla verso la fine.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

L'interpolazione inizia lentamente e accelera verso la fine.

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

L'interpolazione inizia rapidamente e rallenta verso la fine.

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

Una combinazione di :ref:`EASE_IN<class_Tween_constant_EASE_IN>` e :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. L'interpolazione è più lenta a entrambe le estremità.

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

Una combinazione di :ref:`EASE_IN<class_Tween_constant_EASE_IN>` e :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. L'interpolazione è più rapida a entrambe le estremità.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

Associa questo **Tween** al nodo ``node``. I **Tween** sono elaborati direttamente dal :ref:`SceneTree<class_SceneTree>`, quindi sono eseguiti indipendentemente dai nodi animati. Quando colleghi un :ref:`Node<class_Node>` al **Tween**, il **Tween** interromperà l'animazione quando l'oggetto non si trova all'interno dell'albero e il **Tween** sarà automaticamente interrotto quando l'oggetto associato verrà liberato. Inoltre, :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` renderà il comportamento di pausa dipendente dal nodo associato.

Per un modo più breve per creare e associare un **Tween**, puoi usare :ref:`Node.create_tween()<class_Node_method_create_tween>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

Utilizzato per concatenare due :ref:`Tweener<class_Tweener>` dopo che :ref:`set_parallel()<class_Tween_method_set_parallel>` è stato chiamato con ``true``.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # Sarà eseguito parallelamente a quanto sopra.
    tween.chain().tween_property(...) # Sarà eseguito dopo che i due sopra sono terminati.

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // Sarà eseguito parallelamente a quanto sopra.
    tween.Chain().TweenProperty(...); // Sarà eseguito dopo che i due sopra sono terminati.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

Elabora il **Tween** in base al valore ``delta`` specificato, in secondi. Questo è utile soprattutto per un controllo manuale quando il **Tween** è in pausa. Può anche essere utilizzato per terminare immediatamente l'animazione del **Tween**, impostando ``delta`` più lungo dell'intera durata dell'animazione del **Tween**.

Restituisce ``true`` se il **Tween** ha ancora dei :ref:`Tweener<class_Tweener>` che non sono terminati.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

Restituisce il numero di cicli rimanenti per questo **Tween** (vedi :ref:`set_loops()<class_Tween_method_set_loops>`). Un valore restituito pari a ``-1`` indica un **Tween** in ciclo infinito, mentre un valore restituito pari a ``0`` indica che il **Tween** ha già terminato.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

Restituisce il tempo totale in secondi in cui il **Tween** è stato in animazione (ad esempio il tempo trascorso dall'inizio, senza contare le pause, ecc.). Il tempo è influenzato da :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>` e :ref:`stop()<class_Tween_method_stop>` lo reimposterà su ``0``.

\ **Nota:** Poiché risulta dall'accumulo di delta di frame, il tempo restituito dopo che il **Tween** ha terminato l'animazione sarà leggermente maggiore della durata effettiva del **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_interpolate_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **interpolate_value**\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| :ref:`🔗<class_Tween_method_interpolate_value>`

Questo metodo può essere utilizzato per l'interpolazione manuale di un valore, quando non vuoi che il **Tween** esegua l'animazione per te. È simile a :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`, ma con supporto per transizione e allentamento personalizzate.

\ ``initial_value`` è il valore iniziale dell'interpolazione.

\ ``delta_value`` è la modifica del valore nell'interpolazione, ovvero è uguale a ``final_value - initial_value``.

\ ``elapsed_time`` è il tempo in secondi trascorso dopo l'inizio dell'interpolazione ed è utilizzato per controllare la posizione dell'interpolazione. Ad esempio, quando è uguale alla metà di ``duration``, il valore interpolato sarà a metà tra i valori iniziale e finale. Questo valore può anche essere maggiore di ``duration`` o minore di 0, il che estrapolerà il valore.

\ ``duration`` è il tempo totale dell'interpolazione.

\ **Nota:** Se ``duration`` è uguale a ``0``, il metodo restituirà sempre il valore finale, a prescindere dal ``elapsed_time`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

Restituisce un valore che indica se il **Tween** è attualmente in esecuzione, ovvero se non è stato messo in pausa e non ha terminato.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

Restituisce un valore che indica se il **Tween** è valido. Un **Tween** valido è un **Tween** contenuto nell'albero della scena (ad esempio, l'array da :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` conterrà questo **Tween**). Un **Tween** potrebbe diventare non valido quando ha terminato il tweening, è interrotto o quando è creato con ``Tween.new()``. I **Tween** non validi non possono avere :ref:`Tweener<class_Tweener>` aggiunti.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

Interrompe tutte le operazioni di tweening e invalida il **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

Fa in modo che il :ref:`Tweener<class_Tweener>` successivo sia eseguito in parallelo al precedente.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(...)
    tween.parallel().tween_property(...)
    tween.parallel().tween_property(...)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(...);
    tween.Parallel().TweenProperty(...);
    tween.Parallel().TweenProperty(...);



Tutti i :ref:`Tweener<class_Tweener>` nell'esempio saranno eseguiti allo stesso tempo.

Puoi rendere il **Tween** parallelo come predefinito attraverso :ref:`set_parallel()<class_Tween_method_set_parallel>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

Mette in pausa il tweening. L'animazione può essere ripresa usando :ref:`play()<class_Tween_method_play>`.

\ **Nota:** Se un Tween è in pausa e non è associato a nessun nodo, esisterà indefinitamente finché non sarà avviato manualmente o invalidato. Se perdi un riferimento a tale Tween, puoi recuperarlo usando :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

Riprende un **Tween** in pausa o interrotto.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ease:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_Tween_method_set_ease>`

Imposta il tipo di allentamento predefinito per i :ref:`PropertyTweener<class_PropertyTweener>` e i :ref:`MethodTweener<class_MethodTweener>` accodati dopo questo metodo.

Prima che questo metodo venga chiamato, il tipo di allentamento predefinito è :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`.

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Usa EASE_IN_OUT.
    tween.set_ease(Tween.EASE_IN)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Usa EASE_IN.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ignore_time_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ignore_time_scale**\ (\ ignore\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_ignore_time_scale>`

Se ``ignore`` è ``true``, il tween ignorerà :ref:`Engine.time_scale<class_Engine_property_time_scale>` e si aggiornerà con il tempo reale trascorso. Ciò influenza tutti i :ref:`Tweener<class_Tweener>` e i loro ritardi. Il valore predefinito è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

Imposta il numero di volte in cui la sequenza di tweening sarà ripetuta, ad esempio ``set_loops(2)`` eseguirà l'animazione due volte.

La chiamata a questo metodo senza argomenti farà in modo che **Tween** sia eseguito all'infinito, finché non è interrotto con :ref:`kill()<class_Tween_method_kill>`, il nodo associato al **Tween** viene liberato o tutti gli oggetti animati sono stati liberati (il che rende impossibile un'ulteriore animazione).

\ **Attenzione:** Assicurati di aggiungere sempre una certa durata/ritardo quando utilizzi cicli infiniti. Per evitare che il gioco si blocchi, le animazioni in ciclo di durata 0 (ad esempio un singolo :ref:`CallbackTweener<class_CallbackTweener>` senza ritardo) vengono interrotte dopo un piccolo numero di cicli, il che potrebbe produrre risultati imprevisti. Se la durata di un **Tween** dipende da un nodo, usa sempre :ref:`bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

Se ``parallel`` è ``true``, i :ref:`Tweener<class_Tweener>` aggiunti dopo questo metodo saranno eseguiti simultaneamente per impostazione predefinita, anziché in sequenza.

\ **Nota:** Proprio come con :ref:`parallel()<class_Tween_method_parallel>`, anche il tweener aggiunto prima di questo metodo farà parte del passaggio parallelo.

::

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # È eseguito insieme al tweener di position.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

Determina il comportamento del **Tween** quando lo :ref:`SceneTree<class_SceneTree>` è in pausa.

Il valore predefinito è :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

Determina se il **Tween** deve essere eseguito dopo i frame di processo (vedi :ref:`Node._process()<class_Node_private_method__process>`) o i frame di fisica (vedi :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

Il valore predefinito è :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

Scala la velocità di tweening. Questo influisce su tutti i :ref:`Tweener<class_Tweener>` e i loro ritardi.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Imposta il tipo di transizione predefinito per i :ref:`PropertyTweener<class_PropertyTweener>` e :ref:`MethodTweener<class_MethodTweener>` accodati dopo questo metodo.

Prima che questo metodo venga chiamato, il tipo di transizione predefinito è :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`.

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Usa TRANS_LINEAR.
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Usa TRANS_SINE.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Arresta il tweening e ripristina lo stato iniziale del **Tween**. Questo non rimuoverà alcun :ref:`Tweener<class_Tweener>` accodato.

\ **Nota:** Ciò *non* ripristina gli obiettivi dei :ref:`PropertyTweener<class_PropertyTweener>` ai loro valori di quando il **Tween** è stato avviato per la prima volta.

::

    var tween = create_tween()

    # Si sposterà da 0 a 500 in 1 secondo.
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # Sarà a (circa) 250 quando il timer termina.
    await get_tree().create_timer(0.5).timeout

    # Ora si sposterà da (circa) 250 a 500 in 1 secondo,
    # quindi a metà della velocità di prima.
    tween.stop()
    tween.play()

\ **Nota:** Se un Tween viene arrestato e non è associato a nessun nodo, esisterà indefinitamente finché non verrà avviato manualmente o invalidato. Se si perde un riferimento a tale Tween, è possibile recuperarlo usando :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_callback:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **tween_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Tween_method_tween_callback>`

Crea e aggiunge un :ref:`CallbackTweener<class_CallbackTweener>`. Questo metodo può essere usato per chiamare un metodo arbitrario in qualsiasi oggetto. Usa :ref:`Callable.bind()<class_Callable_method_bind>` per associare argomenti aggiuntivi per la chiamata.

\ **Esempio:** Oggetto che continua a sparare ogni 1 secondo:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **Esempio:** Convertire uno sprite in rosso e poi in blu, con un ritardo di 2 secondi:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_callback($Sprite.set_modulate.bind(Color.RED)).set_delay(2)
    tween.tween_callback($Sprite.set_modulate.bind(Color.BLUE)).set_delay(2)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    Sprite2D sprite = GetNode<Sprite2D>("Sprite");
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Red)).SetDelay(2.0f);
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Blue)).SetDelay(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_interval:

.. rst-class:: classref-method

:ref:`IntervalTweener<class_IntervalTweener>` **tween_interval**\ (\ time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_interval>`

Crea e aggiunge un :ref:`IntervalTweener<class_IntervalTweener>`. Questo metodo può essere usato per creare ritardi nell'animazione tween, come alternativa all'utilizzo del ritardo in altri :ref:`Tweener<class_Tweener>`, o quando non c'è animazione (nel qual caso il **Tween** funge da timer). ``time`` è la durata dell'intervallo, in secondi.

\ **Esempio:** Creazione di un intervallo nell'esecuzione del codice:


.. tabs::

 .. code-tab:: gdscript

    # ... un po' di codice
    await create_tween().tween_interval(2).finished
    # ... altro codice

 .. code-tab:: csharp

    // ... un po' di codice
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... altro codice



\ **Esempio:** Creazione di un oggetto che si muove avanti e indietro e salta ogni pochi secondi:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_loops()
    tween.tween_property($Sprite, "position:x", 200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)
    tween.tween_property($Sprite, "position:x", -200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)

 .. code-tab:: csharp

    Tween tween = CreateTween().SetLoops();
    tween.TweenProperty(GetNode("Sprite"), "position:x", 200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);
    tween.TweenProperty(GetNode("Sprite"), "position:x", -200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_method:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **tween_method**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_method>`

Crea e aggiunge un :ref:`MethodTweener<class_MethodTweener>`. Questo metodo è simile a una combinazione di :ref:`tween_callback()<class_Tween_method_tween_callback>` e :ref:`tween_property()<class_Tween_method_tween_property>`. Chiama un metodo nel tempo con un valore interpolato fornito come argomento. Il valore è interpolato tra ``from`` e ``to`` nel tempo specificato da ``duration``, in secondi. Usa :ref:`Callable.bind()<class_Callable_method_bind>` per associare ulteriori argomenti per la chiamata. Puoi usare :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` e :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` per modificare l'allentamento e la transizione del valore o :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` per ritardare l'interpolazione.

\ **Esempio:** Fare in modo che un oggetto 3D guardi da un punto a un altro punto:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1) # Il metodo look_at() accetta il vettore UP come secondo argomento.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Usa le lambda per associare ulteriori argomenti per la chiamata.



\ **Esempio:** Impostazione del testo di una :ref:`Label<class_Label>`, attraverso un metodo intermedio e dopo un ritardo:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var tween = create_tween()
        tween.tween_method(set_label_text, 0, 10, 1).set_delay(1.0)

    func set_label_text(value: int):
        $Label.text = "Counting " + str(value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        base._Ready();

        Tween tween = CreateTween();
        tween.TweenMethod(Callable.From<int>(SetLabelText), 0.0f, 10.0f, 1.0f).SetDelay(1.0f);
    }

    private void SetLabelText(int value)
    {
        GetNode<Label>("Label").Text = $"Counting {value}";
    }



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_property:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **tween_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_property>`

Crea e aggiunge un :ref:`PropertyTweener<class_PropertyTweener>`. Questo metodo interpola una proprietà con nome ``property`` di un ``object`` tra un valore iniziale e ``final_val`` in un intervallo di tempo pari a ``duration``, in secondi. Il valore iniziale predefinito è il valore della proprietà al momento in cui inizia l'interpolazione del :ref:`PropertyTweener<class_PropertyTweener>`.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



sposterà lo sprite in posizione (100, 200) e poi in (200, 300). Se usi :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` o :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`, la posizione di partenza sarà invece sovrascritta dal valore specificato. Consulta gli altri metodi in :ref:`PropertyTweener<class_PropertyTweener>` per vedere come il tweening può essere ulteriormente modificato.

\ **Nota:** Puoi trovare il nome corretto della proprietà passando il mouse sulla proprietà nell'Ispettore. Puoi anche fornire i componenti di una proprietà direttamente usando ``"property:component"`` (ad esempio ``position:x``), dove si applicherebbe solo a quel particolare componente.

\ **Esempio:** Spostare un oggetto due volte dalla stessa posizione, con diversi tipi di transizione:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().from_current().set_trans(Tween.TRANS_EXPO)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().FromCurrent().SetTrans(Tween.TransitionType.Expo);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_subtween:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **tween_subtween**\ (\ subtween\: :ref:`Tween<class_Tween>`\ ) :ref:`🔗<class_Tween_method_tween_subtween>`

Crea e accoda un :ref:`SubtweenTweener<class_SubtweenTweener>`. Questo metodo può essere utilizzato per annidare ``subtween`` all'interno di questo **Tween**, consentendo la creazione di sequenze più complesse e componibili.

::

    # Il subtween ruoterà l'oggetto.
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # Il tween padre eseguirà il subtween come uno dei suoi passaggi.
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

\ **Nota:** I metodi :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>` e :ref:`set_loops()<class_Tween_method_set_loops>` possono causare il blocco del **Tween** padre nel passaggio del subtween; vedi la documentazione per tali metodi per maggiori informazioni.

\ **Nota:** Le modalità di pausa e di elaborazione impostate da :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` e :ref:`set_process_mode()<class_Tween_method_set_process_mode>` su ``subtween`` verranno sovrascritte dalle impostazioni del **Tween** padre.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
