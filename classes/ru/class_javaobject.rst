:github_url: hide

.. _class_JavaObject:

JavaObject
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет объект из Java Native Interface.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет объект из Java Native Interface. Он может быть возвращен из методов Java, вызываемых в :ref:`JavaClass<class_JavaClass>` или других **JavaObject**. См. пример в :ref:`JavaClassWrapper<class_JavaClassWrapper>`.

\ **Примечание:** Этот класс работает только на Android. На любой другой платформе этот класс ничего не делает.

\ **Примечание:** Этот класс не следует путать с :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>` | :ref:`get_java_class<class_JavaObject_method_get_java_class>`\ (\ ) |const|                                                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`has_java_method<class_JavaObject_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_JavaObject_method_get_java_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_class**\ (\ ) |const| :ref:`🔗<class_JavaObject_method_get_java_class>`

Возвращает :ref:`JavaClass<class_JavaClass>`, экземпляром которого является данный объект.

.. rst-class:: classref-item-separator

----

.. _class_JavaObject_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaObject_method_has_java_method>`

Returns ``true`` if the given ``method`` name exists in the object's Java methods.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
