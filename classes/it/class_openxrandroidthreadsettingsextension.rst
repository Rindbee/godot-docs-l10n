:github_url: hide

.. _class_OpenXRAndroidThreadSettingsExtension:

OpenXRAndroidThreadSettingsExtension
====================================

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Wraps the `XR_KHR_android_thread_settings <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_KHR_android_thread_settings>`__ extension.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

For XR to be comfortable, it is important for applications to deliver frames quickly and consistently. In order to make sure the important application threads get their full share of time, these threads must be identified to the system, which will adjust their scheduling priority accordingly.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`set_application_thread_type<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRAndroidThreadSettingsExtension_ThreadType:

.. rst-class:: classref-enumeration

enum **ThreadType**: :ref:`🔗<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_MAIN** = ``0``

Hints to the XR runtime that the thread is doing time critical CPU tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_WORKER** = ``1``

Hints to the XR runtime that the thread is doing background CPU tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_MAIN** = ``2``

Hints to the XR runtime that the thread is doing time critical graphics device tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_WORKER** = ``3``

Hints to the XR runtime that the thread is doing background graphics device tasks.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_application_thread_type**\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`

Sets the thread type of the given thread, so that the XR runtime can adjust its scheduling priority accordingly.

\ ``thread_id`` refers to the OS thread id (ie from ``gettid()``). When ``thread_id`` is ``0``, it will set the thread type of the current thread.

\ **NOTE:** The id returned by :ref:`Thread.get_id()<class_Thread_method_get_id>` is incompatible with ``thread_id``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
