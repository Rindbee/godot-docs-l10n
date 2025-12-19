:github_url: hide

.. _class_Mutex:

Mutex
=====

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Для синхронізації кількох :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

A synchronization mutex (mutual exclusion). This is used to synchronize multiple :ref:`Thread<class_Thread>`\ s, and is equivalent to a binary :ref:`Semaphore<class_Semaphore>`. It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання кількох потоків <../tutorials/performance/using_multiple_threads>`

- :doc:`Нитка-безпечні API <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Locks this **Mutex**, блоки до тих пір, поки він не розблокував поточний власник.

\ **Примітка:** Ця функція повертається без блокування, якщо нитка вже має право власності на грязь.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Перемикаючи це **Mutex**, але не блокує. ``true`` на успіх, ``false`` інакше.

\ **Примітка:** Ця функція повертає ``true``, якщо нитка вже має право власності на мутекс.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Unlocks this **Mutex**, leaving it to other threads.

\ **Note:** If a thread called :ref:`lock()<class_Mutex_method_lock>` or :ref:`try_lock()<class_Mutex_method_try_lock>` multiple times while already having ownership of the mutex, it must also call :ref:`unlock()<class_Mutex_method_unlock>` the same number of times in order to unlock it correctly.

\ **Warning:** Calling :ref:`unlock()<class_Mutex_method_unlock>` more times than :ref:`lock()<class_Mutex_method_lock>` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
