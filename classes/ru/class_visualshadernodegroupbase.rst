:github_url: hide

.. _class_VisualShaderNodeGroupBase:

VisualShaderNodeGroupBase
=========================

**Наследует:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`

Базовый класс для семейства узлов с переменным числом входных и выходных портов в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

В настоящее время не имеет прямого применения, вместо этого используйте производные классы.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_input_port<class_VisualShaderNodeGroupBase_method_add_input_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_output_port<class_VisualShaderNodeGroupBase_method_add_output_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_input_ports<class_VisualShaderNodeGroupBase_method_clear_input_ports>`\ (\ )                                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_output_ports<class_VisualShaderNodeGroupBase_method_clear_output_ports>`\ (\ )                                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_input_port_id<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ (\ ) |const|                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_output_port_id<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ (\ ) |const|                                                                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_input_port_count<class_VisualShaderNodeGroupBase_method_get_input_port_count>`\ (\ ) |const|                                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_inputs<class_VisualShaderNodeGroupBase_method_get_inputs>`\ (\ ) |const|                                                                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_output_port_count<class_VisualShaderNodeGroupBase_method_get_output_port_count>`\ (\ ) |const|                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_outputs<class_VisualShaderNodeGroupBase_method_get_outputs>`\ (\ ) |const|                                                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_input_port<class_VisualShaderNodeGroupBase_method_has_input_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_output_port<class_VisualShaderNodeGroupBase_method_has_output_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_port_name<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_input_port<class_VisualShaderNodeGroupBase_method_remove_input_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_output_port<class_VisualShaderNodeGroupBase_method_remove_output_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_name<class_VisualShaderNodeGroupBase_method_set_input_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_type<class_VisualShaderNodeGroupBase_method_set_input_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_inputs<class_VisualShaderNodeGroupBase_method_set_inputs>`\ (\ inputs\: :ref:`String<class_String>`\ )                                                                   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_name<class_VisualShaderNodeGroupBase_method_set_output_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_type<class_VisualShaderNodeGroupBase_method_set_output_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_outputs<class_VisualShaderNodeGroupBase_method_set_outputs>`\ (\ outputs\: :ref:`String<class_String>`\ )                                                                |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShaderNodeGroupBase_method_add_input_port:

.. rst-class:: classref-method

|void| **add_input_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_input_port>`

Добавляет входной порт с указанным ``type`` (см. :ref:`PortType<enum_VisualShaderNode_PortType>`) и ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_add_output_port:

.. rst-class:: classref-method

|void| **add_output_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_output_port>`

Добавляет выходной порт с указанным ``type`` (см. :ref:`PortType<enum_VisualShaderNode_PortType>`) и ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_input_ports:

.. rst-class:: classref-method

|void| **clear_input_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_input_ports>`

Удаляет все ранее указанные входные порты.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_output_ports:

.. rst-class:: classref-method

|void| **clear_output_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_output_ports>`

Удаляет все ранее указанные выходные порты.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_input_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_input_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`

Возвращает свободный идентификатор входного порта, который можно использовать в :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_output_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_output_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`

Возвращает идентификатор свободного выходного порта, который можно использовать в :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_input_port_count>`

Возвращает количество используемых входных портов. Альтернатива для :ref:`get_free_input_port_id()<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_inputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_inputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_inputs>`

Возвращает :ref:`String<class_String>` описание входных портов в виде списка, разделенного двоеточиями, в формате ``id,type,name;`` (см. :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_output_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_output_port_count>`

Возвращает количество используемых выходных портов. Альтернатива для :ref:`get_free_output_port_id()<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_outputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_outputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_outputs>`

Возвращает :ref:`String<class_String>` описание выходных портов в виде списка, разделенного двоеточиями, в формате ``id,type,name;`` (см. :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_input_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_input_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_input_port>`

Возвращает ``true``, если указанный входной порт существует.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_output_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_output_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_output_port>`

Возвращает ``true``, если указанный входной порт существует.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_is_valid_port_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_port_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`

Возвращает ``true``, если указанное имя порта не переопределяет существующее имя порта и является допустимым в шейдере.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_input_port:

.. rst-class:: classref-method

|void| **remove_input_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_input_port>`

Удаляет указанный входной порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_output_port:

.. rst-class:: classref-method

|void| **remove_output_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_output_port>`

Удаляет указанный выходной порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_name:

.. rst-class:: classref-method

|void| **set_input_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_name>`

Переименовывает указанный входной порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_type:

.. rst-class:: classref-method

|void| **set_input_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_type>`

Устанавливает тип указанного входного порта (см. :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_inputs:

.. rst-class:: classref-method

|void| **set_inputs**\ (\ inputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_inputs>`

Определяет все входные порты с помощью :ref:`String<class_String>`, отформатированного как список, разделенный двоеточиями: ``id,type,name;`` (см. :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_name:

.. rst-class:: classref-method

|void| **set_output_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_name>`

Переименовывает указанный выходной порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_type:

.. rst-class:: classref-method

|void| **set_output_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_type>`

Устанавливает тип указанного выходного порта (см. :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_outputs:

.. rst-class:: classref-method

|void| **set_outputs**\ (\ outputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_outputs>`

Определяет все выходные порты с помощью :ref:`String<class_String>`, отформатированной как список, разделенный двоеточиями: ``id,type,name;`` (см. :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
