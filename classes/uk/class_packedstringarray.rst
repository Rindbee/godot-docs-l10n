:github_url: hide

.. _class_PackedStringArray:

PackedStringArray
=================

Пакетний масив :ref:`String<class_String>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Масив, спеціально розроблений для зберігання рядків типу :ref:`String<class_String>`. Щільно упаковує дані, що економить пам'ять для масивів великого розміру.

Якщо ви хочете об'єднати рядки в масиві, використовуйте метод :ref:`String.join()<class_String_method_join>`.

::

    var string_array = PackedStringArray(["hello", "world"])
    var string = " ".join(string_array)
    print(string) # "hello world"

\ **Відмінності між упакованими масивами, типізованими масивами та нетипізованими масивами:** Упаковані масиви, як правило, швидше перебираються та модифікуються порівняно з типізованим масивом того ж типу (наприклад, **PackedStringArray** проти ``Array[String]``). Крім того, упаковані масиви споживають менше пам'яті. Недоліком є те, що упаковані масиви менш гнучкі, оскільки вони не пропонують стільки зручних методів, як :ref:`Array.map()<class_Array_method_map>`. Типізовані масиви, у свою чергу, швидше перебираються та модифікуються, ніж нетипізовані масиви.

\ **Примітка:** Упаковані масиви завжди передаються за посиланням. Щоб отримати копію масиву, яку можна модифікувати незалежно від оригінального масиву, використовуйте :ref:`duplicate()<class_PackedStringArray_method_duplicate>`. Це *не* стосується вбудованих властивостей та методів. У цих випадках повернутий упакований масив є копією, і його зміна *не* вплине на оригінальне значення. Щоб оновити вбудовану властивість цього типу, змініть повернутий масив, а потім знову призначте його властивості.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація тестування операційної системи <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ )                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`Array<class_Array>`\ )                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`append<class_PackedStringArray_method_append>`\ (\ value\: :ref:`String<class_String>`\ )                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`append_array<class_PackedStringArray_method_append_array>`\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ )          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`bsearch<class_PackedStringArray_method_bsearch>`\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_PackedStringArray_method_clear>`\ (\ )                                                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`count<class_PackedStringArray_method_count>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`duplicate<class_PackedStringArray_method_duplicate>`\ (\ )                                                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`erase<class_PackedStringArray_method_erase>`\ (\ value\: :ref:`String<class_String>`\ )                                              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`fill<class_PackedStringArray_method_fill>`\ (\ value\: :ref:`String<class_String>`\ )                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`find<class_PackedStringArray_method_find>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const|      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get<class_PackedStringArray_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has<class_PackedStringArray_method_has>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`insert<class_PackedStringArray_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_empty<class_PackedStringArray_method_is_empty>`\ (\ ) |const|                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`push_back<class_PackedStringArray_method_push_back>`\ (\ value\: :ref:`String<class_String>`\ )                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_at<class_PackedStringArray_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`resize<class_PackedStringArray_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reverse<class_PackedStringArray_method_reverse>`\ (\ )                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`rfind<class_PackedStringArray_method_rfind>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const|   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set<class_PackedStringArray_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`size<class_PackedStringArray_method_size>`\ (\ ) |const|                                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`slice<class_PackedStringArray_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`sort<class_PackedStringArray_method_sort>`\ (\ )                                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`to_byte_array<class_PackedStringArray_method_to_byte_array>`\ (\ ) |const|                                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator !=<class_PackedStringArray_operator_neq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`operator +<class_PackedStringArray_operator_sum_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator ==<class_PackedStringArray_operator_eq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`operator []<class_PackedStringArray_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_PackedStringArray_constructor_PackedStringArray:

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ ) :ref:`🔗<class_PackedStringArray_constructor_PackedStringArray>`

Будуємо порожній **PackedStringArray**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Constructs a **PackedStringArray** як копія даної **PackedStringArray**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`Array<class_Array>`\ )

Будуємо новий **PackedStringArray**. Додатково ви можете пройти в загальній :ref:`Array<class_Array>`, яка буде перетворена.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedStringArray_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_append>`

Додає елемент у кінець масиву (псевдонім :ref:`push_back()<class_PackedStringArray_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_method_append_array>`

Додаток **PackedStringArray** в кінці цього масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_PackedStringArray_method_bsearch>`

Знаходить індекс існуючого значення (або індекс вставки, який підтримує порядок сортування, якщо значення ще не присутнє в масиві) за допомогою бінарного пошуку. За бажанням можна передати специфікатор ``before``. Якщо ``false``, індекс, що повертається, йде після всіх існуючих записів значення в масиві.

\ **Примітка:** Виклик :ref:`bsearch()<class_PackedStringArray_method_bsearch>` на невідсортованому масиві призводить до неочікуваної поведінки.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedStringArray_method_clear>`

Очищає масив. Еквівалентно використанню :ref:`resize()<class_PackedStringArray_method_resize>` з розміром ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_count>`

Повертає кількість повторень елемента в масиві.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **duplicate**\ (\ ) :ref:`🔗<class_PackedStringArray_method_duplicate>`

Створює копію масиву і повертає його.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_erase>`

Видаляє перше входження значення з масиву та повертає ``true``. Якщо значення не існує в масиві, нічого не відбувається, і повертається ``false``. Щоб видалити елемент за індексом, використовуйте метод :ref:`remove_at()<class_PackedStringArray_method_remove_at>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_fill>`

Присвоює задане значення всім елементам масиву. Зазвичай це можна використовувати разом з :ref:`resize()<class_PackedStringArray_method_resize>` для створення масиву заданого розміру та ініціалізованих елементів.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedStringArray_method_find>`

Шукає в масиві значення і повертає його індекс або ``-1``, якщо таке не знайдено. За бажанням можна передати початковий індекс пошуку.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_get:

.. rst-class:: classref-method

:ref:`String<class_String>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_get>`

Повертає :ref:`String<class_String>` за заданим ``index`` у масиві. Повертає порожній рядок та виводить помилку, якщо доступ виходить за межі дозволеного значення. Від'ємні індекси не підтримуються; вони завжди вважатимуть значення таким, що виходить за межі дозволеного значення, та повертатимуть порожній рядок.

Це схоже на використання оператора ``[]`` (``array[index]``), за винятком того, що оператор підтримує від'ємні індекси та викликає переривання налагоджувача, якщо виконується доступ за межі дозволеного значення.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_has>`

Повертає ``true``, якщо масив містить ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_insert>`

Вставте новий елемент на даній позиції в масиві. Посада повинна бути дійсна, або в кінці масиву (``idx == розмір()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_is_empty>`

Повертає ``true``, якщо масив порожній.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_push_back>`

Додаток елемента рядка в кінці масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_remove_at>`

Видаляє елемент з масиву за індексом.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_resize>`

Встановлює розмір масиву. Якщо масив збільшується, резервує елементи в кінці масиву. Якщо масив скорочується, обрізає масив до нового розміру. Виклик методу :ref:`resize()<class_PackedStringArray_method_resize>` один раз і призначення нових значень відбувається швидше, ніж додавання нових елементів по одному.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або одну з наступних констант :ref:`Error<enum_@GlobalScope_Error>`, якщо цей метод не працює: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, якщо розмір від'ємний, або :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, якщо розподіл пам'яті не вдається. Використовуйте метод :ref:`size()<class_PackedStringArray_method_size>`, щоб знайти фактичний розмір масиву після зміни розміру.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedStringArray_method_reverse>`

Змінює порядок елементів у масиві на протилежний.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedStringArray_method_rfind>`

Здійснює пошук у масиві у зворотному порядку. За бажанням можна передати початковий індекс пошуку. Якщо він від'ємний, то початковий індекс береться відносно кінця масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_set>`

Змінює :ref:`String<class_String>` в даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_size>`

Повертає кількість елементів у масиві.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_slice:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedStringArray_method_slice>`

Повертає розріз **PackedStringArray**, з ``start`` (включно) до ``end`` (виключно), як новий **PackedStringArray**.

Абсолютне значення ``start`` і ``end`` буде зафіксовано до розміру масиву, тому значення за замовчуванням для ``end`` робить кінець розрізу кінцем масиву за замовчуванням (тобто ``arr.slice(1)`` є скороченим записом для ``arr.slice(1, arr.size())``).

Якщо ж ``start`` або ``end`` є негативними, вони будуть відносно кінця масиву (тобто ``arr.slice(0, -2)`` є скороченим записом для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedStringArray_method_sort>`

Сорти елементів масиву в порядку закріплення.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_to_byte_array>`

Повертає :ref:`PackedByteArray<class_PackedByteArray>` з кожним рядком, закодованим як UTF-8. Рядки завершуються ``null``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_PackedStringArray_operator_neq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_neq_PackedStringArray>`

Повертає ``true``, якщо вміст масивів відрізняється.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_sum_PackedStringArray:

.. rst-class:: classref-operator

:ref:`PackedStringArray<class_PackedStringArray>` **operator +**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_sum_PackedStringArray>`

Повертає новий **PackedStringArray** з вмістом ``right`` додано в кінці цього масиву. Для кращої роботи розглянемо використання :ref:`append_array()<class_PackedStringArray_method_append_array>` замість.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_eq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_eq_PackedStringArray>`

Повертає ``true``, якщо вміст обох масивів однаковий, тобто вони мають всі рівні :ref:`String<class_String>` у відповідних індексах.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_idx_int:

.. rst-class:: classref-operator

:ref:`String<class_String>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_operator_idx_int>`

Повертаємо :ref:`String<class_String>` в індексі ``index``. Негативні індекси можуть використовуватися для доступу до елементів з кінця. Використання індексу з меж масиву призведе до помилки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
