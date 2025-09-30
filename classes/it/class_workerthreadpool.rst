:github_url: hide

.. _class_WorkerThreadPool:

WorkerThreadPool
================

**Eredita:** :ref:`Object<class_Object>`

Un singleton che alloca alcuni :ref:`Thread<class_Thread>` all'avvio, usato per scaricare delle attività a questi thread.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il singleton **WorkerThreadPool** assegna un insieme di :ref:`Thread<class_Thread>` (chiamati thread di lavoro) all'avvio del progetto e fornisce metodi per scaricare attività a essi. Questo può essere utilizzato per multithreading semplice senza dover creare i :ref:`Thread<class_Thread>`.

Le attività mantengono il :ref:`Callable<class_Callable>` da eseguire dai thread. **WorkerThreadPool** può essere utilizzato per creare attività regolari, che saranno presi da un singolo thread di lavoro, o attività di gruppo, che possono essere distribuiti tra più thread di lavoro. Le attività di gruppo eseguono più volte il :ref:`Callable<class_Callable>`, il che le rende utili per iterare su molti elementi, come nemici in un'arena.

Ecco un esempio su come scaricare una funzione costosa ai thread di lavoro:


.. tabs::

 .. code-tab:: gdscript

    var enemies = [] # Un array da riempire con nemici.

    func process_enemy_ai(enemy_index):
        var processed_enemy = enemies[enemy_index]
        # Logica costosa...

    func _process(delta):
        var task_id = WorkerThreadPool.add_group_task(process_enemy_ai, enemies.size())
        # Altro codice...
        WorkerThreadPool.wait_for_group_task_completion(task_id)
        # Altro codice che dipende sull'AI del nemico è già in elaborazione.

 .. code-tab:: csharp

    private List<Node> _enemies = new List<Node>(); // Una lista da riempire con nemici.

    private void ProcessEnemyAI(int enemyIndex)
    {
        Node processedEnemy = _enemies[enemyIndex];
        // Logica costosa qui.
    }

    public override void _Process(double delta)
    {
        long taskId = WorkerThreadPool.AddGroupTask(Callable.From<int>(ProcessEnemyAI), _enemies.Count);
        // Altro codice...
        WorkerThreadPool.WaitForGroupTaskCompletion(taskId);
        // Altro codice che dipende sull'AI del nemico è già in elaborazione.
    }



Il codice di sopra assume che il numero di elementi nell'array ``enemies`` rimanga costante durante la parte di multithread.

\ **Nota:** Utilizzare questo singleton potrebbe influenzare negativamente le prestazioni se il compito che viene distribuito tra i thread non è computazionalmente costoso.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di più thread <../tutorials/performance/using_multiple_threads>`

- :doc:`Le API thread-safe <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_group_task<class_WorkerThreadPool_method_add_group_task>`\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_task<class_WorkerThreadPool_method_add_task>`\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ )                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_group_id<class_WorkerThreadPool_method_get_caller_group_id>`\ (\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_task_id<class_WorkerThreadPool_method_get_caller_task_id>`\ (\ ) |const|                                                                                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_group_processed_element_count<class_WorkerThreadPool_method_get_group_processed_element_count>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_group_task_completed<class_WorkerThreadPool_method_is_group_task_completed>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_task_completed<class_WorkerThreadPool_method_is_task_completed>`\ (\ task_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`wait_for_group_task_completion<class_WorkerThreadPool_method_wait_for_group_task_completion>`\ (\ group_id\: :ref:`int<class_int>`\ )                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait_for_task_completion<class_WorkerThreadPool_method_wait_for_task_completion>`\ (\ task_id\: :ref:`int<class_int>`\ )                                                                                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WorkerThreadPool_method_add_group_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_group_task**\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_group_task>`

Aggiunge ``action`` come attività di gruppo da eseguire dai thread di lavoro. Il :ref:`Callable<class_Callable>` verrà chiamato un certo numero di volte in base a ``elements``, con il primo thread che lo chiama con il valore ``0`` come parametro e ogni esecuzione consecutiva incrementa questo valore di 1 fino a raggiungere ``elemento - 1``.

Il numero di thread a cui viene distribuita l'attività è definito da ``tasks_needed``, dove il valore predefinito ``-1`` significa che viene distribuito a tutti i thread di lavoro. ``high_priority`` determina se l'attività ha una priorità alta o bassa (predefinita). Facoltativamente, puoi fornire una descrizione (``description``) per facilitare il debug.

Restituisce un ID attività di gruppo che può essere utilizzato da altri metodi.

\ **Attenzione:** È necessario attendere il completamento di ogni attività attraverso :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` o :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` a un certo punto in modo che eventuali risorse allocate all'interno dell'attività possano essere ripulite.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_add_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_task**\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_task>`

Aggiunge ``action`` come attività da eseguire tramite un thread di lavoro. ``high_priority`` determina se l'attività ha una priorità alta o bassa (predefinita). Facoltativamente, puoi fornire una descrizione (``description``) per facilitare il debug.

Restituisce un ID attività che può essere utilizzato da altri metodi.

\ **Attenzione:** È necessario attendere il completamento di ogni attività attraverso :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` o :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` a un certo punto in modo che eventuali risorse allocate all'interno dell'attività possano essere ripulite.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_group_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_group_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_group_id>`

Restituisce l'ID del gruppo di attività del thread attuale che chiama questo metodo oppure ``-1`` se non è valido o se il thread attuale non fa parte di un gruppo di attività.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_task_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_task_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_task_id>`

Restituisce l'ID attività del thread attuale che chiama questo metodo, oppure ``-1`` se l'attività è un'attività di gruppo, non valida o se il thread attuale non fa parte del pool di thread (ad esempio, il thread principale).

È possibile utilizzato da un'attività per ottenere il proprio ID attività o per determinare se il codice attuale è in esecuzione all'interno del pool di thread worker.

\ **Nota:** Le attività di gruppo hanno i propri ID, quindi questo metodo restituirà ``-1`` per le attività di gruppo.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_group_processed_element_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_processed_element_count**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_group_processed_element_count>`

Restituisce quante volte il :ref:`Callable<class_Callable>` dell'attività di gruppo con l'ID specificato è stato già eseguito dai thread di lavoro.

\ **Nota:** Se un thread ha iniziato a eseguire il :ref:`Callable<class_Callable>` ma deve ancora terminare, non sarà conteggiato.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_group_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_group_task_completed**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_group_task_completed>`

Restituisce ``true`` se l'attività di gruppo con l'ID specificato è completata.

\ **Nota:** Si dovrebbe solo chiamare questo metodo tra l'aggiunta dell'attività di gruppo e in attesa del suo completamento.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_task_completed**\ (\ task_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_task_completed>`

Restituisce ``true`` se l'attività con l'ID fornito è completata.

\ **Nota:** Si dovrebbe solo chiamare questo metodo tra l'aggiunta dell'attività e in attesa del suo completamento.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_group_task_completion:

.. rst-class:: classref-method

|void| **wait_for_group_task_completion**\ (\ group_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_group_task_completion>`

Mette in pausa il thread che richiama questo metodo finché non viene completata l'attività di gruppo con l'ID specificato.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_task_completion:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait_for_task_completion**\ (\ task_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_task_completion>`

Mette in pausa il thread che richiama questo metodo finché non viene completata l'attività con l'ID specificato.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se è stato possibile attendere l'attività correttamente.

Restituisce :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se un'attività con l'ID passato non esiste (forse perché era già stata attesa ed eliminata).

Restituisce :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` se la chiamata viene effettuata da un'altra attività in esecuzione e, a causa della pianificazione delle attività, c'è il potenziale per un deadlock (ad esempio, l'attività da attendere potrebbe essere a un livello inferiore nella pila delle chiamate e quindi non può procedere). Questa è una situazione avanzata che dovrebbe avere importanza solo quando alcune attività dipendono da altre (nell'implementazione attuale, il caso complicato è un'attività che tenta di attendere una più vecchia).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
