:github_url: hide

.. _class_Script:

Script
======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`CSharpScript<class_CSharpScript>`, :ref:`GDScript<class_GDScript>`, :ref:`ScriptExtension<class_ScriptExtension>`

Класс, хранящийся как ресурс.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, хранящийся как ресурс. Скрипт расширяет функциональность всех объектов, которые его инстанцируют.

Это базовый класс для всех скриптов, и его не следует использовать напрямую. Попытка создать новый скрипт с этим классом приведет к ошибке.

Метод ``new`` подкласса скрипта создает новый экземпляр. :ref:`Object.set_script()<class_Object_method_set_script>` расширяет существующий объект, если класс этого объекта соответствует одному из базовых классов скрипта.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации по написанию скриптов <../tutorials/scripting/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`source_code<class_Script_property_source_code>` |
   +-----------------------------+-------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_Script_method_can_instantiate>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`get_base_script<class_Script_method_get_base_script>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_global_name<class_Script_method_get_global_name>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_instance_base_type<class_Script_method_get_instance_base_type>`\ (\ ) |const|                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_property_default_value<class_Script_method_get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_rpc_config<class_Script_method_get_rpc_config>`\ (\ ) |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_script_constant_map<class_Script_method_get_script_constant_map>`\ (\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_method_list<class_Script_method_get_script_method_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_property_list<class_Script_method_get_script_property_list>`\ (\ )                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_signal_list<class_Script_method_get_script_signal_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_signal<class_Script_method_has_script_signal>`\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_source_code<class_Script_method_has_source_code>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`instance_has<class_Script_method_instance_has>`\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const|                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_abstract<class_Script_method_is_abstract>`\ (\ ) |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_tool<class_Script_method_is_tool>`\ (\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`reload<class_Script_method_reload>`\ (\ keep_state\: :ref:`bool<class_bool>` = false\ )                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Script_property_source_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_code** :ref:`🔗<class_Script_property_source_code>`

.. rst-class:: classref-property-setget

- |void| **set_source_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_source_code**\ (\ )

Исходный код скрипта или пустая строка, если исходный код недоступен. Если установлено, реализация класса не перезагружается автоматически.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Script_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_Script_method_can_instantiate>`

Возвращает ``true``, если скрипт может быть создан.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_base_script**\ (\ ) |const| :ref:`🔗<class_Script_method_get_base_script>`

Возвращает скрипт, напрямую унаследованный данным скриптом.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_global_name**\ (\ ) |const| :ref:`🔗<class_Script_method_get_global_name>`

Возвращает имя класса, связанного со скриптом, если оно есть. В противном случае возвращает пустую строку.

Чтобы дать скрипту глобальное имя, можно использовать ключевое слово ``class_name`` в GDScript и атрибут ``[GlobalClass]`` в C#.


.. tabs::

 .. code-tab:: gdscript

    class_name MyNode
    extends Node

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MyNode : Node
    {
    }



.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_instance_base_type**\ (\ ) |const| :ref:`🔗<class_Script_method_get_instance_base_type>`

Возвращает базовый тип скрипта.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Script_method_get_property_default_value>`

Возвращает значение по умолчанию указанного свойства.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_rpc_config**\ (\ ) |const| :ref:`🔗<class_Script_method_get_rpc_config>`

Возвращает :ref:`Dictionary<class_Dictionary>`, сопоставляющий имена методов с их конфигурацией RPC, определенной этим скриптом.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_constant_map:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_script_constant_map**\ (\ ) :ref:`🔗<class_Script_method_get_script_constant_map>`

Возвращает словарь, содержащий имена констант и их значения.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_method_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_method_list>`

Возвращает список методов в этом **Script**.

\ **Примечание:** Словари, возвращаемые этим методом, отформатированы так же, как и возвращаемые :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_property_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_property_list>`

Возвращает список свойств в этом **Script**.

\ **Примечание:** Словари, возвращаемые этим методом, отформатированы так же, как и возвращаемые :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_signal_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_signal_list>`

Возвращает список пользовательских сигналов, определенных в этом **Script**.

\ **Примечание:** Словари, возвращаемые этим методом, отформатированы так же, как и возвращаемые :ref:`Object.get_signal_list()<class_Object_method_get_signal_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_signal**\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_signal>`

Возвращает ``true``, если скрипт или базовый класс определяет сигнал с указанным именем.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_source_code**\ (\ ) |const| :ref:`🔗<class_Script_method_has_source_code>`

Возвращает ``true``, если скрипт содержит непустой исходный код.

\ **Примечание:** Если у скрипта нет исходного кода, это не означает, что он недействителен или непригоден для использования. Например, :ref:`GDScript<class_GDScript>`, который был экспортирован с помощью бинарной токенизации, не имеет исходного кода, но все равно ведет себя так, как ожидалось, и может быть инстанцирован. Это можно проверить с помощью :ref:`can_instantiate()<class_Script_method_can_instantiate>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **instance_has**\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_Script_method_instance_has>`

Возвращает ``true``, если ``base_object`` является экземпляром этого скрипта.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_abstract**\ (\ ) |const| :ref:`🔗<class_Script_method_is_abstract>`

Возвращает ``true``, если скрипт является абстрактным. Абстрактный скрипт не имеет конструктора и не может быть создан.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tool**\ (\ ) |const| :ref:`🔗<class_Script_method_is_tool>`

Возвращает ``true``, если скрипт является скриптом инструмента. Скрипт инструмента может быть запущен в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload**\ (\ keep_state\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Script_method_reload>`

Перезагружает реализацию класса скрипта. Возвращает код ошибки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
