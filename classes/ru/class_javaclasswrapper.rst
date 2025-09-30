:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Наследует:** :ref:`Object<class_Object>`

Предоставляет доступ к собственному интерфейсу Java.

.. rst-class:: classref-introduction-group

Описание
----------------

Синглтон JavaClassWrapper предоставляет способ для приложения Godot отправлять и получать данные через `Java Native Interface <https://developer.android.com/training/articles/perf-jni>`__ (JNI).

\ **Примечание:** Этот синглтон доступен только в сборках Android.

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **Предупреждение:** При вызове методов Java обязательно проверьте :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>`, чтобы проверить, не выдал ли метод исключение.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Интеграция с API Android <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

Возвращает исключение Java из последнего вызова Java класса. Если исключения не было, то вернет ``null``.

\ **Примечание:** Этот метод работает только на Android. На любой другой платформе этот метод всегда вернет ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Оборачивает класс, определённый в Java, и возвращает его как тип :ref:`JavaClass<class_JavaClass>` :ref:`Object<class_Object>`, с которым Godot может взаимодействовать.

При обёртке внутренних (вложенных) классов используйте ``$`` вместо ``.`` для их разделения. Например, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` оборачивает класс **WindowManager.LayoutParams**.

\ **Примечание:** Чтобы вызвать конструктор, вызовите метод с тем же именем, что и у класса. Например:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Примечание:** Этот метод работает только на Android. На всех остальных платформах он ничего не делает и возвращает пустой :ref:`JavaClass<class_JavaClass>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
