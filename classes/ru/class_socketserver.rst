:github_url: hide

.. _class_SocketServer:

SocketServer
============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`TCPServer<class_TCPServer>`, :ref:`UDSServer<class_UDSServer>`

An abstract class for servers based on sockets.

.. rst-class:: classref-introduction-group

Описание
----------------

A socket server.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_connection_available<class_SocketServer_method_is_connection_available>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_listening<class_SocketServer_method_is_listening>`\ (\ ) |const|                       |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`stop<class_SocketServer_method_stop>`\ (\ )                                               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerSocket<class_StreamPeerSocket>` | :ref:`take_socket_connection<class_SocketServer_method_take_socket_connection>`\ (\ )           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SocketServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_connection_available>`

Возвращает ``true``, если соединение доступно для принятия.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_listening>`

Возвращает ``true``, если сервер в данный момент прослушивает соединения.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SocketServer_method_stop>`

Перестает слушать.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_take_socket_connection:

.. rst-class:: classref-method

:ref:`StreamPeerSocket<class_StreamPeerSocket>` **take_socket_connection**\ (\ ) :ref:`🔗<class_SocketServer_method_take_socket_connection>`

If a connection is available, returns a StreamPeerSocket with the connection.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
