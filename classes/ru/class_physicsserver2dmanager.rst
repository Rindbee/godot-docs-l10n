:github_url: hide

.. _class_PhysicsServer2DManager:

PhysicsServer2DManager
======================

**Наследует:** :ref:`Object<class_Object>`

Синглтон для управления реализациями :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**PhysicsServer2DManager** — это API для регистрации реализаций :ref:`PhysicsServer2D<class_PhysicsServer2D>` и для установки реализации по умолчанию.

\ **Примечание:** Невозможно переключать физические серверы во время выполнения. Этот класс используется только при запуске на уровне инициализации сервера, самим Godot и, возможно, GDExtensions.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_PhysicsServer2DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_PhysicsServer2DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsServer2DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_PhysicsServer2DManager_method_register_server>`

Зарегистрируйте реализацию :ref:`PhysicsServer2D<class_PhysicsServer2D>`, передав ``name`` и :ref:`Callable<class_Callable>`, который возвращает объект :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer2DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PhysicsServer2DManager_method_set_default_server>`

Установите реализацию :ref:`PhysicsServer2D<class_PhysicsServer2D>` по умолчанию на ту, которая определена ``name``, если ``priority`` больше приоритета текущей реализации по умолчанию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
