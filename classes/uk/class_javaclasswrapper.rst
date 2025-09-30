:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Успадковує:** :ref:`Object<class_Object>`

Забезпечує доступ до Java рідного інтерфейсу.

.. rst-class:: classref-introduction-group

Опис
--------

Синглтон JavaClassWrapper надає програмі Godot спосіб надсилати й отримувати дані через `власний інтерфейс Java <https://developer.android.com/training/articles/perf-jni>`__ (JNI). 

\ **Примітка.** Цей синглтон доступний лише в збірках Android. 

::
 
    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime") 
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter") 

    var datetime = LocalDateTime.now() 
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss") 

    print(datetime.format(formatter))  

\ **Попередження:** Викликаючи методи Java, обов’язково перевірте :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>`, щоб перевірити, чи метод викликав виняток.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Інтеграція з API Android <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`get_exception<class_JavaClassWrapper_method_get_exception>`\ (\ )                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`   | :ref:`wrap<class_JavaClassWrapper_method_wrap>`\ (\ name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

Повертає виняток Java з останнього виклику в клас Java. Якщо не було винятку, він поверне ``null``. 

\ **Примітка.** Цей спосіб працює лише на Android. На будь-якій іншій платформі цей метод завжди повертатиме ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Огортає клас, визначений у Java, та повертає його як тип :ref:`JavaClass<class_JavaClass>` :ref:`Object<class_Object>`, з яким може взаємодіяти Godot.

Під час обгортання внутрішніх (вкладених) класів використовуйте ``$`` замість ``.`` для їх розділення. Наприклад, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` обгортає клас **WindowManager.LayoutParams**.

\ **Примітка:** Щоб викликати конструктор, викличте метод з тим самим ім'ям, що й клас. Наприклад:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Примітка:** Цей метод працює лише на Android. На всіх інших платформах цей метод нічого не робить і повертає порожній :ref:`JavaClass<class_JavaClass>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
