:github_url: hide

.. _class_Mutex:

Mutex
=====

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Двоичный :ref:`Semaphore<class_Semaphore>` для синхронизации нескольких :ref:`Thread<class_Thread>`-ов.

.. rst-class:: classref-introduction-group

Описание
----------------

A synchronization mutex (mutual exclusion). This is used to synchronize multiple :ref:`Thread<class_Thread>`\ s, and is equivalent to a binary :ref:`Semaphore<class_Semaphore>`. It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование многопоточности <../tutorials/performance/using_multiple_threads>`

- :doc:`Потокобезопасные API <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Блокирует этот **Mutex**, блокирует до тех пор, пока он не будет разблокирован текущим владельцем.

\ **Примечание:** Эта функция возвращает без блокировки, если поток уже владеет мьютексом.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Пытается заблокировать этот **Mutex**, но не блокирует. Возвращает ``true`` в случае успеха, ``false`` в противном случае.

\ **Примечание:** Эта функция возвращает ``true``, если поток уже владеет Mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Unlocks this **Mutex**, leaving it to other threads.

\ **Note:** If a thread called :ref:`lock()<class_Mutex_method_lock>` or :ref:`try_lock()<class_Mutex_method_try_lock>` multiple times while already having ownership of the mutex, it must also call :ref:`unlock()<class_Mutex_method_unlock>` the same number of times in order to unlock it correctly.

\ **Warning:** Calling :ref:`unlock()<class_Mutex_method_unlock>` more times than :ref:`lock()<class_Mutex_method_lock>` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
