:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un mecanismo de sincronización utilizado para controlar el acceso a un recurso compartido por :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un semáforo de sincronización que se puede utilizar para sincronizar múltiples :ref:`Thread<class_Thread>`\ s. Inicializado a cero en la creación. Para una versión binaria, consulta :ref:`Mutex<class_Mutex>`.

\ **Advertencia:** Los semáforos deben utilizarse con cuidado para evitar interbloqueos.

\ **Advertencia:** Para garantizar que el sistema operativo pueda realizar una limpieza adecuada (sin bloqueos, sin interbloqueos), se deben cumplir estas condiciones:

- Cuando el recuento de referencias de un **Semaphore** llega a cero y, por lo tanto, se destruye, ningún hilo debe estar esperando en él.

- Cuando el recuento de referencias de un :ref:`Thread<class_Thread>` llega a cero y, por lo tanto, se destruye, no debe estar esperando en ningún semáforo.

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

Reduce el **Semaphore**, permitiendo la entrada a un hilo, o más si se especifica ``count``.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

Como :ref:`wait()<class_Semaphore_method_wait>`, pero no se bloqueará, por lo que si el valor es cero, falla inmediatamente y devuelve ``false``. Si no es cero, devuelve ``true`` para indicar éxito.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

Espera al **Semaphore**, si su valor es cero, se bloquea hasta que no sea cero.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
