:github_url: hide

.. _class_StreamPeerSocket:

StreamPeerSocket
================

**Наследует:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerUDS<class_StreamPeerUDS>`

Abstract base class for interacting with socket streams.

.. rst-class:: classref-introduction-group

Описание
----------------

StreamPeerSocket is an abstract base class that defines common behavior for socket-based streams.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`disconnect_from_host<class_StreamPeerSocket_method_disconnect_from_host>`\ (\ ) |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerSocket_Status>` | :ref:`get_status<class_StreamPeerSocket_method_get_status>`\ (\ ) |const|             |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`poll<class_StreamPeerSocket_method_poll>`\ (\ )                                 |
   +---------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_StreamPeerSocket_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerSocket_Status>`

.. _class_StreamPeerSocket_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_NONE** = ``0``

The initial status of the **StreamPeerSocket**. This is also the status after disconnecting.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTING** = ``1``

A status representing a **StreamPeerSocket** that is connecting to a host.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTED** = ``2``

A status representing a **StreamPeerSocket** that is connected to a host.

.. _class_StreamPeerSocket_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_ERROR** = ``3``

A status representing a **StreamPeerSocket** in error state.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StreamPeerSocket_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_disconnect_from_host>`

Отключение от хоста.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerSocket_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerSocket_method_get_status>`

Возвращает статус соединения.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_poll>`

Polls the socket, updating its state. See :ref:`get_status()<class_StreamPeerSocket_method_get_status>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
