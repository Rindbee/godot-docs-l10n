:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A synchronization mechanism used to control access to a shared resource by :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A synchronization semaphore that can be used to synchronize multiple :ref:`Thread<class_Thread>`\ s. Initialized to zero on creation. For a binary version, see :ref:`Mutex<class_Mutex>`.

\ **Warning:** Semaphores must be used carefully to avoid deadlocks.

\ **Warning:** To guarantee that the operating system is able to perform proper cleanup (no crashes, no deadlocks), these conditions must be met:

- When a **Semaphore**'s reference count reaches zero and it is therefore destroyed, no threads must be waiting on it.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not be waiting on any semaphore.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando múltiples hilos <../tutorials/performance/using_multiple_threads>`

- :doc:`APIs thread safe <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`post<class_Semaphore_method_post>`\ (\ count\: :ref:`int<class_int>` = 1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_wait<class_Semaphore_method_try_wait>`\ (\ )                            |
   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`wait<class_Semaphore_method_wait>`\ (\ )                                    |
   +-------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Semaphore_method_post:

.. rst-class:: classref-method

|void| **post**\ (\ count\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_Semaphore_method_post>`

Lowers the **Semaphore**, allowing one thread in, or more if ``count`` is specified.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

Like :ref:`wait()<class_Semaphore_method_wait>`, but won't block, so if the value is zero, fails immediately and returns ``false``. If non-zero, it returns ``true`` to report success.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

Waits for the **Semaphore**, if its value is zero, blocks until non-zero.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
