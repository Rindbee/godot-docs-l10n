:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Callable.xml.

.. _class_Callable:

Callable
========

代表一个方法或一个独立函数的内置类型。

.. rst-class:: classref-introduction-group

描述
----

**Callable** is a built-in :ref:`Variant<class_Variant>` type that represents a function. It can either be a method within an :ref:`Object<class_Object>` instance, or a custom callable used for different purposes (see :ref:`is_custom<class_Callable_method_is_custom>`). Like all :ref:`Variant<class_Variant>` types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.


.. tabs::

 .. code-tab:: gdscript

    func print_args(arg1, arg2, arg3 = ""):
        prints(arg1, arg2, arg3)
    
    func test():
        var callable = Callable(self, "print_args")
        callable.call("hello", "world")  # Prints "hello world ".
        callable.call(Vector2.UP, 42, callable)  # Prints "(0.0, -1.0) 42 Node(node.gd)::print_args"
        callable.call("invalid")  # Invalid call, should have at least 2 arguments.

 .. code-tab:: csharp

    // Default parameter values are not supported.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }
    
    public void Test()
    {
        // Invalid calls fail silently.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Default parameter values are not supported, should have 3 arguments.
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // Invalid call, should have 3 arguments.
    }



In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an :ref:`Object<class_Object>` instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling :ref:`get_method<class_Callable_method_get_method>`.

::

    func _init():
        var my_lambda = func (message):
            print(message)
    
        # Prints "Hello everyone!"
        my_lambda.call("Hello everyone!")
    
        # Prints "Attack!", when the button_pressed signal is emitted.
        button_pressed.connect(func(): print("Attack!"))

In GDScript, you can access methods and global functions as **Callable**\ s:

::

    tween.tween_callback(node.queue_free)  # Object methods.
    tween.tween_callback(array.clear)  # Methods of built-in types.
    tween.tween_callback(print.bind("Test"))  # Global functions.

\ **Note:** :ref:`Dictionary<class_Dictionary>` does not support the above due to ambiguity with keys.

::

    var dictionary = {"hello": "world"}
    
    # This will not work, `clear` is treated as a key.
    tween.tween_callback(dictionary.clear)
    
    # This will work.
    tween.tween_callback(Callable.create(dictionary, "clear"))

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ )                                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ from\: :ref:`Callable<class_Callable>`\ )                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bind<class_Callable_method_bind>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bindv<class_Callable_method_bindv>`\ (\ arguments\: :ref:`Array<class_Array>`\ )                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`call<class_Callable_method_call>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`call_deferred<class_Callable_method_call_deferred>`\ (\ ...\ ) |vararg| |const|                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`callv<class_Callable_method_callv>`\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const|                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`create<class_Callable_method_create>`\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_argument_count<class_Callable_method_get_argument_count>`\ (\ ) |const|                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>`\ (\ ) |const|                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>`\ (\ ) |const|                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_method<class_Callable_method_get_method>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Callable_method_get_object>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Callable_method_get_object_id>`\ (\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>`\ (\ ) |const|                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Callable_method_hash>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_custom<class_Callable_method_is_custom>`\ (\ ) |const|                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Callable_method_is_null>`\ (\ ) |const|                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_standard<class_Callable_method_is_standard>`\ (\ ) |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_valid<class_Callable_method_is_valid>`\ (\ ) |const|                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc<class_Callable_method_rpc>`\ (\ ...\ ) |vararg| |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc_id<class_Callable_method_rpc_id>`\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const|                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`unbind<class_Callable_method_unbind>`\ (\ argcount\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Callable_operator_neq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Callable_operator_eq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

构造空的 **Callable**\ ，没有绑定对象和方法。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

构造给定 **Callable** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

创建新的 **Callable**\ ，使用指定对象 ``object`` 中名为 ``method`` 的方法。

\ **注意：**\ 对于内置 :ref:`Variant<class_Variant>` 类型的方法，请改用 :ref:`create<class_Callable_method_create>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

返回该 **Callable** 的副本，绑定其中的一个或多个参数。调用时，被绑定的参数在提供给 :ref:`call<class_Callable_method_call>` 的参数\ *之后*\ 传递。另见 :ref:`unbind<class_Callable_method_unbind>`\ 。

\ **注意：**\ 这个方法与其他类似方法链式调用时，参数列表的修改顺序是从右至左的。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

返回该 **Callable** 的副本，绑定其中的一个或多个参数，参数从数组中读取。调用时，被绑定的参数在提供给 :ref:`call<class_Callable_method_call>` 的参数\ *之后*\ 传递。另见 :ref:`unbind<class_Callable_method_unbind>`\ 。

\ **注意：**\ 这个方法与其他类似方法链式调用时，参数列表的修改顺序是从右至左的。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

调用该 **Callable** 所代表的方法。可以传递参数，必须与该方法的签名相匹配。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

使用延迟模式调用该 **Callable** 所代表的方法，即在当前帧的末尾调用。可以传递参数，必须与该方法的签名相匹配。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **注意：**\ 延迟调用会在空闲时间处理。空闲时间主要发生在进程和物理帧的末尾。延迟调用将在其中一直运行，直到没有调用剩余为止，这意味着你可以从其他延迟调用中使用延迟调用，并且它们仍将在当前空闲时间周期中运行。这同样意味着你不应从延迟调用的方法（或从其调用的方法）中延迟调用其自身，因为这会导致无限递归，就像你直接调用该方法一样。

另见 :ref:`Object.call_deferred<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

调用该 **Callable** 所代表的方法。与 :ref:`call<class_Callable_method_call>` 不同，这个方法需要所有参数都放在 ``arguments`` :ref:`Array<class_Array>` 之中。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

为指定的 ``variant`` 中名为 ``method`` 的方法创建一个新的 **Callable**\ 。为了表示内置 :ref:`Variant<class_Variant>` 类型的方法，使用自定义可调用函数（请参阅 :ref:`is_custom<class_Callable_method_is_custom>`\ ）。如果 ``variant`` 是 :ref:`Object<class_Object>`\ ，则将改为创建一个标准的可调用对象。

\ **注意：**\ 该方法对于 :ref:`Dictionary<class_Dictionary>` 类型始终是必需的，因为属性语法被用于访问其条目。当事先未知 ``variant`` 的类型时（对于多态），你也可以使用该方法。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

返回该 **Callable** 应接受的所有参数的数量，包括可选参数。也就是说，结果中会\ *减去*\ 使用 :ref:`bind<class_Callable_method_bind>` 绑定的参数、\ *加上*\ 使用 :ref:`unbind<class_Callable_method_unbind>` 解除绑定的参数。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Returns the array of arguments bound via successive :ref:`bind<class_Callable_method_bind>` or :ref:`unbind<class_Callable_method_unbind>` calls. These arguments will be added *after* the arguments passed to the call, from which :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>` arguments on the right have been previously excluded.

::

    func get_effective_arguments(callable, call_args):
        assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
        var result = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
        result.append_array(callable.get_bound_arguments())
        return result

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments_count>`

Returns the total amount of arguments bound via successive :ref:`bind<class_Callable_method_bind>` or :ref:`unbind<class_Callable_method_unbind>` calls. This is the same as the size of the array returned by :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>`. See :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>` for details.

\ **Note:** The :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>` and :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>` methods can both return positive values.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

返回该 **Callable** 所代表的方法的名称。如果该可调用体是 GDScript lambda 函数，则返回该函数的名称或 ``"<anonymous lambda>"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

返回该 **Callable** 所调用的对象。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

返回该 **Callable** 中对象的 ID（见 :ref:`Object.get_instance_id<class_Object_method_get_instance_id>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

Returns the total amount of arguments unbound via successive :ref:`bind<class_Callable_method_bind>` or :ref:`unbind<class_Callable_method_unbind>` calls. See :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>` for details.

\ **Note:** The :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>` and :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>` methods can both return positive values.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

返回该 **Callable** 对象的 32 位哈希值。

\ **注意：**\ 内容相同的 **Callable** 哈希值始终相同。反之则不然，返回的哈希值相同\ *并不*\ 意味着可调用体相等，因为不同的可调用体可能由于哈希冲突而具有相同的哈希值。引擎在 :ref:`hash<class_Callable_method_hash>` 中使用 32 位哈希算法。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

如果该 **Callable** 是自定义可调用对象，则返回 ``true``\ 。使用自定义可调用对象：

- 用于绑定/解除绑定参数（参见 :ref:`bind<class_Callable_method_bind>` 和 :ref:`unbind<class_Callable_method_unbind>`\ ）；

- 用于表示内置 :ref:`Variant<class_Variant>` 类型的方法（参见 :ref:`create<class_Callable_method_create>`\ ）；

- 用于在 GDScript 中表示全局、lambda 和 RPC 函数；

- 用于核心、GDExtension 和 C# 中的其他目的。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Returns ``true`` if this **Callable** has no target to call the method on. Equivalent to ``callable == Callable()``.

\ **Note:** This is *not* the same as ``not is_valid()`` and using ``not is_null()`` will *not* guarantee that this callable can be called. Use :ref:`is_valid<class_Callable_method_is_valid>` instead.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

如果该 **Callable** 为标准可调用体，则返回 ``true``\ 。这个方法与 :ref:`is_custom<class_Callable_method_is_custom>` 相对。如果该可调用体为 lambda 函数，则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

如果该可调用体的对象存在，且分配了有效的方法名，或者为自定义可调用体，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

在所有已连接的对等体上执行 RPC（Remote Procedure Call，远程过程调用）。用于多人游戏，一般不可用，除非所调用的函数有 *RPC* 标记（使用 :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` 或 :ref:`Node.rpc_config<class_Node_method_rpc_config>`\ ）。在不支持的方法上调用该方法会导致出错。见 :ref:`Node.rpc<class_Node_method_rpc>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

在指定的对等体 ID（请参阅多人游戏文档）上执行 RPC（Remote Procedure Call，远程过程调用）。用于多人游戏，一般不可用，除非所调用的函数有 *RPC* 标记（使用 :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` 或 :ref:`Node.rpc_config<class_Node_method_rpc_config>`\ ）。在不支持的方法上调用该方法会导致出错。见 :ref:`Node.rpc_id<class_Node_method_rpc_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

返回这个 **Callable** 的副本，解绑了一些参数。换句话说，调用新的可调用体时，用户提供的最后几个参数会被忽略，忽略几个由 ``argcount`` 决定。剩余的参数会被传递给该可调用体。这样传入的参数就能够比原本可调用体所能处理的参数要多，例如带有固定数量参数的信号。另见 :ref:`bind<class_Callable_method_bind>`\ 。

\ **注意：**\ 这个方法与其他类似方法链式调用时，参数列表的修改顺序是从右至左的。

::

    func _ready():
        foo.unbind(1).call(1, 2) # 调用 foo(1).
        foo.bind(3, 4).unbind(1).call(1, 2) # 调用 foo(1, 3, 4)，注意改动的不是 bind 中的参数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

如果两个 **Callable** 调用的目标不同，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

如果两个 **Callable** 调用的自定义目标相同，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
