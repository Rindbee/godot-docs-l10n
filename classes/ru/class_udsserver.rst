:github_url: hide

.. _class_UDSServer:

UDSServer
=========

**Наследует:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A Unix Domain Socket (UDS) server.

.. rst-class:: classref-introduction-group

Описание
----------------

A Unix Domain Socket (UDS) server. Listens to connections on a socket path and returns a :ref:`StreamPeerUDS<class_StreamPeerUDS>` when it gets an incoming connection. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** Unix Domain Sockets are only available on Unix-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDSServer_method_listen>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerUDS<class_StreamPeerUDS>` | :ref:`take_connection<class_UDSServer_method_take_connection>`\ (\ )                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_UDSServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_UDSServer_method_listen>`

Listens on the socket at ``path``. The socket file will be created at the specified path.

\ **Note:** The socket file must not already exist at the specified path. You may need to remove any existing socket file before calling this method.

.. rst-class:: classref-item-separator

----

.. _class_UDSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerUDS<class_StreamPeerUDS>` **take_connection**\ (\ ) :ref:`🔗<class_UDSServer_method_take_connection>`

If a connection is available, returns a StreamPeerUDS with the connection.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
