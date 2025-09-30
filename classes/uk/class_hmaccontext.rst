:github_url: hide

.. _class_HMACContext:

HMACContext
===========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Використовується для створення HMAC для повідомлення за допомогою ключа.

.. rst-class:: classref-introduction-group

Опис
--------

Клас HMACContext корисний для розширених випадків використання HMAC, таких як потокове передавання повідомлення, оскільки він підтримує створення повідомлення з часом, а не надає все відразу. 


.. tabs:: 

 .. code-tab:: gdscript
 
    extends Node 
    var ctx = HMACContext.new() 

    func _ready(): 
        var key = "supersecret".to_utf8_buffer() 
        var err = ctx.start(HashingContext.HASH_SHA256, ключ) 
        assert(err == OK) 
        var msg1 = "це ".to_utf8_buffer() 
        var msg2 = "super-duper secret".to_utf8_buffer() 
        err = ctx.update(msg1) 
        assert(err == OK) 
        err = ctx.update(msg2) 
        assert(err == OK) 
        var hmac = ctx.finish() 
        print(hmac.hex_encode())  

 .. code-tab:: csharp
 
    using Godot; 
    using System.Diagnostics; 

    public partial class MyNode : Node 
    {
        private HmacContext _ctx = new HmacContext(); 

        public override void _Ready() 
        { 
            byte[] key = "supersecret".ToUtf8Buffer(); 
            Error err = _ctx.Start(HashingContext.HashType.Sha256, key); 
            Debug.Assert(err == Error.Ok); 
            byte[] msg1 = "this is ".ToUtf8Buffer(); 
            byte[] msg2 = "super duper secret".ToUtf8Buffer(); 
            err = _ctx.Update(msg1); 
            Debug.Assert(err == Error.Ok); 
            err = _ctx.Update(msg2); 
            Debug.Assert(err == Error.Ok); 
            byte[] hmac = _ctx.Finish(); 
            GD.Print(hmac.HexEncode()); 
        } 
    } 



.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HMACContext_method_finish>`\ (\ )                                                                                                               |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HMACContext_method_start>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HMACContext_method_update>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_HMACContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HMACContext_method_finish>`

Повертає результуючий HMAC. Якщо HMAC не вдалося, повертається порожній :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_start>`

Returns the resulting HMAC. If HMAC fails, an empty :ref:`PackedByteArray<class_PackedByteArray>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_update>`

Оновлює повідомлення для HMAC. Це можна викликати кілька разів перед викликом :ref:`finish()<class_HMACContext_method_finish>`, щоб додати ``data`` до повідомлення, але не можна викликати, доки не буде викликано :ref:`start()<class_HMACContext_method_start>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
