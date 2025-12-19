:github_url: hide

.. _class_NavigationServer3DManager:

NavigationServer3DManager
=========================

**Наследует:** :ref:`Object<class_Object>`

A singleton for managing :ref:`NavigationServer3D<class_NavigationServer3D>` implementations.

.. rst-class:: classref-introduction-group

Описание
----------------

**NavigationServer3DManager** is the API for registering :ref:`NavigationServer3D<class_NavigationServer3D>` implementations and setting the default implementation.

\ **Note:** It is not possible to switch servers at runtime. This class is only used on startup at the server initialization level.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_NavigationServer3DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_NavigationServer3DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationServer3DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_register_server>`

Registers a :ref:`NavigationServer3D<class_NavigationServer3D>` implementation by passing a ``name`` and a :ref:`Callable<class_Callable>` that returns a :ref:`NavigationServer3D<class_NavigationServer3D>` object.

.. rst-class:: classref-item-separator

----

.. _class_NavigationServer3DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_set_default_server>`

Sets the default :ref:`NavigationServer3D<class_NavigationServer3D>` implementation to the one identified by ``name``, if ``priority`` is greater than the priority of the current default implementation.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
