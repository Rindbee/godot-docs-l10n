:github_url: hide

.. _class_AESContext:

AESContext
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Надає доступ до шифрування/дешифрування необроблених даних AES.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас містить контекстну інформацію, необхідну для операцій шифрування та дешифрування за допомогою AES (Advanced Encryption Standard). Підтримуються режими AES-ECB і AES-CBC.

::

    [gdscript]
    extends Node

    var aes = AESContext.new()

    func _ready():
         var key = "Мій секретний ключ!!!" # Ключ має мати 16 або 32 байти.
         var data = "Мій секретний текст!!" # Розмір даних має бути кратним 16 байтам, за потреби застосувати доповнення.
         # Шифрувати ECB
         aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8_buffer())
         var encrypted = aes.update(data.to_utf8_buffer())
         aes.finish()
         # Розшифруйте ECB
         aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8_buffer())
         var decrypted = aes.update(encrypted)
         aes.finish()
         # Перевірте ECB
         assert(decrypted == data.to_utf8_buffer())

         var iv = "Мій секрет iv!!!!" # IV має мати рівно 16 байт.
         # Шифруйте CBC
         aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
         зашифровано = aes.update(data.to_utf8_buffer())
         aes.finish()
         # Розшифруйте CBC
         aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
         розшифровано = aes.update(зашифровано)
         aes.finish()
         # Перевірити CBC
         assert(decrypted == data.to_utf8_buffer())
    [/gdscript]
    [csharp]
    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
     {
         private AesContext _aes = новий AesContext();

         public override void _Ready()
         {
             string key = "Мій секретний ключ!!!"; // Ключ має мати 16 або 32 байти.
             string data = "Мій секретний текст!!"; // Розмір даних має бути кратним 16 байтам, за потреби застосувати доповнення.
             // Шифрувати ECB
             _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer());
             byte[] encrypted = _aes.Update(data.ToUtf8Buffer());
             _aes.Finish();
             // Розшифрувати ECB
             _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer());
             byte[] decrypted = _aes.Update(encrypted);
             _aes.Finish();
             // Перевірити ECB
             Debug.Assert(decrypted == data.ToUtf8Buffer());

             string iv = "Мій секрет iv!!!!"; // IV має мати рівно 16 байт.
             // Шифрувати CBC
             _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
             зашифровано = _aes.Update(data.ToUtf8Buffer());
             _aes.Finish();
             // Розшифрувати CBC
             _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
             розшифровано = _aes.Update(зашифровано);
             _aes.Finish();
             // Перевірити CBC
             Debug.Assert(decrypted == data.ToUtf8Buffer());
         }
     }
    [/csharp][/codeblocks]

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`finish<class_AESContext_method_finish>`\ (\ )                                                                                                                                                                      |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_iv_state<class_AESContext_method_get_iv_state>`\ (\ )                                                                                                                                                          |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_AESContext_method_start>`\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`update<class_AESContext_method_update>`\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AESContext_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AESContext_Mode>`

.. _class_AESContext_constant_MODE_ECB_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_ENCRYPT** = ``0``

Режим шифрування електронної кодової книги AES.

.. _class_AESContext_constant_MODE_ECB_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_DECRYPT** = ``1``

Режим розшифрування електронної кодової книги AES.

.. _class_AESContext_constant_MODE_CBC_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_ENCRYPT** = ``2``

AES cipher block chaining encryption mode.

.. _class_AESContext_constant_MODE_CBC_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_DECRYPT** = ``3``

AES cipher block chaining decryption mode.

.. _class_AESContext_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_MAX** = ``4``

Максимальне значення для переліку режимів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AESContext_method_finish:

.. rst-class:: classref-method

|void| **finish**\ (\ ) :ref:`🔗<class_AESContext_method_finish>`

Закрийте цей контекст AES, щоб його можна було запустити знову. Див. розділ :ref:`start()<class_AESContext_method_start>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_get_iv_state:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_iv_state**\ (\ ) :ref:`🔗<class_AESContext_method_get_iv_state>`

Отримати поточний стан IV для цього контексту (IV оновлюється при виклику :ref:`update()<class_AESContext_method_update>`). Зазвичай ця функція не потрібна.

\ **Примітка:** Ця функція має сенс лише тоді, коли контекст запущено з :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` або :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_AESContext_method_start>`

Запустити контекст AES у заданому ``mode``. Завжди потрібно вказувати ``key`` довжиною 16 або 32 байти, тоді як ``iv`` (вектор ініціалізації) довжиною рівною 16 байтам потрібен лише тоді, коли ``mode`` має значення :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` або :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_update:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **update**\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_AESContext_method_update>`

Запускає потрібну операцію для цього контексту AES. Поверне :ref:`PackedByteArray<class_PackedByteArray>`, що містить результат шифрування (або дешифрування) даного ``src``. Дивіться :ref:`start()<class_AESContext_method_start>` для режиму роботи.

\ ** Примітка:** Розмір ``src`` повинен бути кратним 16. При необхідності наберіть трохи пробілів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
