:github_url: hide

.. _class_Tweener:

Tweener
=======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CallbackTweener<class_CallbackTweener>`, :ref:`IntervalTweener<class_IntervalTweener>`, :ref:`MethodTweener<class_MethodTweener>`, :ref:`PropertyTweener<class_PropertyTweener>`, :ref:`SubtweenTweener<class_SubtweenTweener>`

Classe astratta per tutti i Tweener utilizzati da :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I tweener sono oggetti che eseguono un'attività di animazione specifica, ad esempio interpolare una proprietà o chiamare un metodo in un determinato momento. Un **Tweener** non può essere creato manualmente, è necessario usare un metodo dedicato da :ref:`Tween<class_Tween>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Tweener_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tweener_signal_finished>`

Emesso quando il **Tweener** ha appena terminato la sua interpolazione o è diventato invalido (ad esempio a causa di un oggetto liberato).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
