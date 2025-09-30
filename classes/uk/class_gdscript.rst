:github_url: hide

.. _class_GDScript:

GDScript
========

**Успадковує:** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Скрипт, що реалізується мовою програмування GDScript.

.. rst-class:: classref-introduction-group

Опис
--------

Скрипт, реалізований мовою програмування GDScript, збережений з розширенням ``.gd``. Скрипт розширює функціональність усіх об'єктів, які його створює.

Calling :ref:`new()<class_GDScript_method_new>` creates a new instance of the script. :ref:`Object.set_script()<class_Object_method_set_script>` розширює існуючий об'єкт, якщо клас цього об'єкта відповідає одному з базових класів скрипта.

Якщо ви шукаєте вбудовані функції GDScript, дивіться :ref:`@GDScript<class_@GDScript>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації GDScript <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

Повертає новий екземпляр сценарію.

::

    var MyClass = load("myclass.gd")
    var instance = MyClass.new()
    print(instance.get_script() == MyClass) # Виводить true

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
