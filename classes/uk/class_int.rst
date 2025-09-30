:github_url: hide

.. _class_int:

int
===

Вбудований тип для цілих чисел.

.. rst-class:: classref-introduction-group

Опис
--------

64-розрядний цілочисельний тип зі знаком. Це означає, що він може приймати значення від ``-2^63`` до ``2^63 - 1``, тобто від ``-9223372036854775808`` до ``9223372036854775807``. Коли він перевищує ці межі, він обертається. 

\ **int**\ s можна автоматично перетворити на :ref:`float<class_float>`\ s, коли це необхідно, наприклад, коли вони передаються як аргументи у функціях. :ref:`float<class_float>` буде максимально близьким до початкового цілого числа. 

Подібним чином :ref:`float<class_float>`\ s можна автоматично перетворити на **int**\ s. Це скоротить :ref:`float<class_float>`, відкидаючи все, що стоїть після числа з плаваючою комою. 

\ **Примітка.** У логічному контексті **int** матиме значення ``false``, якщо він дорівнює ``0``, і ``true`` в іншому випадку. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var x: int = 1 # x дорівнює 1 
    x = 4,2 # x дорівнює 4, тому що 4,2 скорочується 
    var max_int = 9223372036854775807 # Найбільше значення, яке може зберігати int 
    max_int += 1 # max_int дорівнює -9223372036854775808, тому що він обертається навколо  

 .. code-tab:: csharp
 
    int x = 1; // x дорівнює 1 
    х = (ціл.)4,2; // x дорівнює 4, тому що 4.2 скорочується 
    // Нижче ми використовуємо long, тому що int GDScript є 64-бітним, тоді як int C# є 32-бітним. 
    long maxLong = 9223372036854775807; // Найбільше значення, яке може зберігати long 
    maxLong++; // maxLong тепер дорівнює -9223372036854775808, тому що він обертався. 

    // Альтернативно з 32-розрядним типом int C#, який має менше максимальне значення. 
    int maxInt = 2147483647; // Найбільше значення, яке може зберігати int 
    maxInt++; // maxInt тепер -2147483648, тому що він обертався  

 

Ви можете використовувати літерал ``0b`` для двійкового представлення, літерал ``0x`` для шістнадцяткового представлення та символ ``_`` для розділення довгих чисел і покращення читабельності. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var x = 0b1001 # x дорівнює 9 
    var y = 0xF5 # y дорівнює 245 
    var z = 10_000_000 # z дорівнює 10000000  

 .. code-tab:: csharp
 
    int x = 0b1001; // х дорівнює 9 
    int y = 0xF5; // y дорівнює 245 
    int z = 10_000_000; // z дорівнює 10000000  



.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ )                                     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +-----------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator %<class_int_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator &<class_int_operator_bwand_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_int_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_int_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_int_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`     | :ref:`operator *<class_int_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_int_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`     | :ref:`operator *<class_int_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_int_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>`     | :ref:`operator *<class_int_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_int_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator *<class_int_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_int_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator **<class_int_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_int_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator +<class_int_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_int_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator -<class_int_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_int_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator /<class_int_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator \<\<<class_int_operator_bwsl_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator >><class_int_operator_bwsr_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ^<class_int_operator_bwxor_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary+<class_int_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary-<class_int_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator |<class_int_operator_bwor_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ~<class_int_operator_bwnot>`\ (\ )                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_int_constructor_int:

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ ) :ref:`🔗<class_int_constructor_int>`

Створює **int** зі значенням ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`int<class_int>`\ )

Constructs the **int** як копія даної **int**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`String<class_String>`\ )

Constructs a new **int** from the :ref:`String<class_String>`, наступні ж правила, як :ref:`String.to_int()<class_String_method_to_int>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`bool<class_bool>`\ )

Створює нове значення **int** з значення :ref:`bool<class_bool>`. ``true`` перетворюється на ``1``, а ``false`` перетворюється на ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`float<class_float>`\ )

Створює нове значення **int** з числа з плаваючою комою. Це скоротить значення :ref:`float<class_float>`, відкинувши все після числа з плаваючою комою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_int_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_neq_float>`

Повернення ``true`` якщо **int** не еквівалент :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_neq_int>`

Повертаємо ``true``, якщо **int**\ s не дорівнює.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mod_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mod_int>`

Повертає залишок після ділення двох **int**. Використовує скорочене ділення, яке повертає від’ємне число, якщо дивіденд від’ємний. Якщо це небажано, спробуйте використати :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`. 

::
 
    print(6 % 2) # Виводить 0 
    print(11 % 4) # Друкує 3 
    print(-5 % 3) # Виводить -2 

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwand_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator &**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwand_int>`

Виконує порозрядну операцію ``І``. 

::
 
    print(0b1100 & 0b1010) # Виводить 8 (двійковий 1000)  

Це корисно для отримання двійкових прапорів зі змінної. 

::
 
    змінні прапори = 0b101 
    # Перевірте, чи ввімкнено перший або другий біт. 
    якщо прапори & 0b011: 
        do_stuff() # Цей рядок буде виконано. 

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_int_operator_mul_Color>`

Багатопосадки кожного компонента :ref:`Color<class_Color>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_int_operator_mul_Quaternion>`

Багатомовний компонент :ref:`Quaternion<class_Quaternion>` **int**. Ця операція не має значення самостійно, але її можна використовувати в складі більшого виразу.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_int_operator_mul_Vector2>`

Множить кожен компонент :ref:`Vector2<class_Vector2>` на **int**.

::

    print(2 * Vector2(1, 4)) # Prints (2, 8)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_int_operator_mul_Vector2i>`

Множиці кожного компонента :ref:`Vector2i<class_Vector2i>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_int_operator_mul_Vector3>`

Множиці кожного компонента :ref:`Vector3<class_Vector3>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_int_operator_mul_Vector3i>`

Множиці кожного компонента :ref:`Vector3i<class_Vector3i>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_int_operator_mul_Vector4>`

Множиці кожного компонента :ref:`Vector4<class_Vector4>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_int_operator_mul_Vector4i>`

Множиці кожного компонента :ref:`Vector4i<class_Vector4i>` **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_mul_float>`

Множиці :ref:`float<class_float>` **int**. Результатом є :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mul_int>`

Множить два **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_pow_float>`

Підносить **int** до степеня :ref:`float<class_float>`. Результатом буде :ref:`float<class_float>`.

::

    print(2 ** 0.5) # Prints 1.4142135623731

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_pow_int>`

Підносить лівий **int** до степеня правого **int**.

::

    print(3 ** 4) # Виводить 81

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_sum_float>`

Додає **int** та :ref:`float<class_float>`. Результатом є :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_sum_int>`

Додає два **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_dif_float>`

Відстежити :ref:`float<class_float>` з **int**. Результатом є :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_dif_int>`

Віднімає два **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_div_float>`

Розділяє **int** на :ref:`float<class_float>`. Результатом буде :ref:`float<class_float>`.

::

    print(10 / 3.0) # Prints 3.33333333333333

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_div_int>`

Розділяє два **int**. Результатом є **int**. Це скоротить :ref:`float<class_float>`, відкинувши все після коми з плаваючою комою.

::

    print(6 / 2) # Виводить 3
    print(5 / 3) # Виводить 1

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lt_float>`

``true``, якщо **int** менше :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lt_int>`

Повертаємо ``true``, якщо зліва **int** менше права **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsl_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator <<**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsl_int>`

Виконує операцію побітового зсуву вліво. Фактично те саме, що множення на ступінь 2. 

::
 
    print(0b1010 << 1) # Виводить 20 (двійковий 10100) 
    print(0b1010 << 3) # Виводить 80 (двійковий 1010000) 

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lte_float>`

Повертає ``true``, якщо **int** менше або дорівнює :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lte_int>`

Повертаємо ``true``, якщо лівий **int** менше або дорівнює праву **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_eq_float>`

Повернення ``true`` якщо **int** дорівнює :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_eq_int>`

Повертає ``true``, якщо два **int** рівні.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gt_float>`

Повертає ``true``, якщо **int** перевищує :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gt_int>`

Повертаємо ``true``, якщо зліва **int** перевищує право **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gte_float>`

Повертає ``true``, якщо **int** перевищує або дорівнює :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gte_int>`

Повертаємо ``true``, якщо зліва **int** перевищує або дорівнює праву **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsr_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator >>**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsr_int>`

Виконує операцію порозрядного зсуву вправо. Фактично те саме, що ділення на ступінь 2.

::

    print(0b1010 >> 1) # Виводить 5 (двійковий 101)
    print(0b1010 >> 2) # Виводить 2 (двійковий 10)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwxor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ^**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwxor_int>`

Виконує побітову операцію ``XOR``.

::

    print(0b1100 ^ 0b1010) # Виводить 6 (двійковий 110)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unplus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary+**\ (\ ) :ref:`🔗<class_int_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unminus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary-**\ (\ ) :ref:`🔗<class_int_operator_unminus>`

Повертаємо необрізане значення **int**. Якщо позитивне, то виходить число негативно. Якщо негативно, то виходить число позитивним. Якщо нуль, нічого не робить.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator |**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwor_int>`

Виконує порозрядну операцію ``АБО``. 

::
 
    print(0b1100 | 0b1010) # Виводить 14 (двійковий 1110)  

Це корисно для збереження двійкових позначок у змінній. 

::
 
    змінні прапори = 0 
    flags |= 0b101 # Увімкнути перший і третій біти. 

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwnot:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ~**\ (\ ) :ref:`🔗<class_int_operator_bwnot>`

Виконує побітову операцію ``NOT`` над **int**. Завдяки доповненню `2 <https://en.wikipedia.org/wiki/Two%27s_complement>`__ воно фактично дорівнює ``-(int + 1)``. 

::
 
    print(~4) # Виводить -5 
    print(~(-7)) # Виводить 6 

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
