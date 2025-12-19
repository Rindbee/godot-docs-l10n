:github_url: hide

.. _class_Timer:

Timer
=====

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un timer per il conto alla rovescia.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **Timer** node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its :ref:`wait_time<class_Timer_property_wait_time>`, it will emit the :ref:`timeout<class_Timer_signal_timeout>` signal.

After a timer enters the scene tree, it can be manually started with :ref:`start()<class_Timer_method_start>`. A timer node is also started automatically if :ref:`autostart<class_Timer_property_autostart>` is ``true``.

Without requiring much code, a timer node can be added and configured in the editor. The :ref:`timeout<class_Timer_signal_timeout>` signal it emits can also be connected through the Signals dock in the editor:

::

    func _on_timer_timeout():
        print("Time to attack!")

\ **Note:** To create a one-shot timer without instantiating a node, use :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Note:** Timers are affected by :ref:`Engine.time_scale<class_Engine_property_time_scale>` unless :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` is ``true``. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Emesso quando il timer raggiunge la fine.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Aggiorna il timer a ogni frame di processo di fisica (vedi :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Aggiorna il timer a ogni frame di processo (renderizzato) (vedi :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

Se ``true``, il timer si avvierà immediatamente quando entra nell'albero di scena.

\ **Nota:** Dopo che il timer entra nell'albero, questa proprietà viene automaticamente impostata su ``false``.

\ **Nota:** Questa proprietà non fa nulla quando il timer è in esecuzione nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

Se ``true``, il timer ignorerà :ref:`Engine.time_scale<class_Engine_property_time_scale>` e si aggiornerà con il tempo realmente trascorso.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

Se ``true``, il timer si fermerà dopo aver raggiunto la fine. Altrimenti, come impostazione predefinita, il timer si riavvierà automaticamente.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Se ``true``, il timer è in pausa. Un timer in pausa non elabora finché questa proprietà non viene reimpostata su ``false``, anche quando viene chiamato :ref:`start()<class_Timer_method_start>`. Vedi anche :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Specifica quando il timer è aggiornato durante il ciclo principale.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

Il tempo rimanente del timer in secondi. È sempre ``0`` se il timer è fermo.

\ **Nota:** Questa proprietà è di sola lettura e non può essere modificata. Si basa su :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

Il tempo richiesto per allo scadere del timer, in secondi. Questa proprietà può anche essere impostata ogni volta che viene chiamato :ref:`start()<class_Timer_method_start>`.

\ **Nota:** I timer possono elaborare solo una volta per frame di fisica o di processo (a seconda del :ref:`process_callback<class_Timer_property_process_callback>`). Un framerate instabile può causare la fine incoerente del timer, il che è particolarmente evidente se il tempo di attesa è inferiore a circa ``0.05`` secondi. Per timer molto brevi, si consiglia di scrivere il proprio codice invece di utilizzare un nodo **Timer**. I timer sono inoltre influenzati da :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Restituisce ``true`` se il timer è fermato o non è iniziato.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Avvia il timer, o reimposta il timer se è già stato avviato. Fallisce se il timer non è all'interno dell'albero di scene. Se ``time_sec`` è maggiore di ``0``, questo valore viene usato per :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Nota:** Questo metodo non riprende un timer in pausa. Vedi :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Arresta il timer. Vedi anche :ref:`paused<class_Timer_property_paused>`. A differenza di :ref:`start()<class_Timer_method_start>`, è possibile chiamare questa funzione in sicurezza anche se il timer non si trova nell'albero di scene.

\ **Nota:** Chiamare :ref:`stop()<class_Timer_method_stop>` non emette il segnale :ref:`timeout<class_Timer_signal_timeout>`, poiché il timer non è considerato scaduto. Se ciò si desidera, utilizzare ``$Timer.timeout.emit()`` dopo aver chiamato :ref:`stop()<class_Timer_method_stop>` per emettere manualmente il segnale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
