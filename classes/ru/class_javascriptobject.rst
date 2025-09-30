:github_url: hide

.. _class_JavaScriptObject:

JavaScriptObject
================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс-оболочка для веб-объектов JavaScript.

.. rst-class:: classref-introduction-group

Описание
----------------

JavaScriptObject используется для взаимодействия с объектами JavaScript, полученными или созданными с помощью :ref:`JavaScriptBridge.get_interface()<class_JavaScriptBridge_method_get_interface>`, :ref:`JavaScriptBridge.create_object()<class_JavaScriptBridge_method_create_object>` или :ref:`JavaScriptBridge.create_callback()<class_JavaScriptBridge_method_create_callback>`.

::

    extends Node

    var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # This reference must be kept
    var console = JavaScriptBridge.get_interface("console")

    func _init():
        var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
        print(buf) # Prints [JavaScriptObject:OBJECT_ID]
        var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # new Uint8Array(buf)
        uint8arr[1] = 255
        prints(uint8arr[1], uint8arr.byteLength) # Prints "255 10"

        # Prints "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]" в консоли браузера.
        console.log(uint8arr)

        #Эквивалент JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
        JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

    func myCallback(args):
        # Будет вызван с параметрами, переданными в обратный вызов "forEach"
        # [0, 0, [JavaScriptObject:1173]]
        # [255, 1, [JavaScriptObject:1173]]
        # ...
        # [0, 9, [JavaScriptObject:1180]]
        print(args)

\ **Примечание:** Доступно только на веб-платформе.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
