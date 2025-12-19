:github_url: hide

.. _class_Mutex:

Mutex
=====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`Semaphore<class_Semaphore>` binario per la sincronizzazione di più :ref:`Thread<class_Thread>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A synchronization mutex (mutual exclusion). This is used to synchronize multiple :ref:`Thread<class_Thread>`\ s, and is equivalent to a binary :ref:`Semaphore<class_Semaphore>`. It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

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

   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`lock<class_Mutex_method_lock>`\ (\ )         |
   +-------------------------+----------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_lock<class_Mutex_method_try_lock>`\ (\ ) |
   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`unlock<class_Mutex_method_unlock>`\ (\ )     |
   +-------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Blocca questo **Mutex**, blocca finché non viene sbloccato dal proprietario attuale.

\ **Nota:** Questa funzione restituisce senza bloccare se il thread ha già il possesso del mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Tenta di bloccare questo **Mutex**, ma non blocca. Restituisce ``true`` in caso di successo, altrimenti ``false``.

\ **Nota:** Questa funzione restituisce ``true`` se il thread ha già il possesso del mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Unlocks this **Mutex**, leaving it to other threads.

\ **Note:** If a thread called :ref:`lock()<class_Mutex_method_lock>` or :ref:`try_lock()<class_Mutex_method_try_lock>` multiple times while already having ownership of the mutex, it must also call :ref:`unlock()<class_Mutex_method_unlock>` the same number of times in order to unlock it correctly.

\ **Warning:** Calling :ref:`unlock()<class_Mutex_method_unlock>` more times than :ref:`lock()<class_Mutex_method_lock>` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
