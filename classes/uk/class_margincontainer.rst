:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MarginContainer.xml.

.. _class_MarginContainer:

MarginContainer
===============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, який зберігає запас навколо своїх контрольних систем.

.. rst-class:: classref-introduction-group

Опис
--------

**MarginContainer** додає регульоване поле з кожного боку дочірніх елементів керування. Поля додаються навколо всіх дітей, а не навколо кожного окремо. Щоб керувати полями **MarginContainer**, використовуйте властивості теми ``margin_*``, наведені нижче. 

\ **Примітка:** Розміри полів є заміною теми, а не звичайними властивостями. Це приклад того, як змінити їх у коді: 


.. tabs:: 

 .. code-tab:: gdscript
 
    # Цей зразок коду передбачає, що поточний сценарій розширює MarginContainer. 
    var margin_value = 100 
    add_theme_constant_override("margin_top", margin_value) 
    add_theme_constant_override("margin_left", margin_value) 
    add_theme_constant_override("margin_bottom", margin_value) 
    add_theme_constant_override("margin_right", margin_value)  

 .. code-tab:: csharp
 
    // Цей зразок коду передбачає, що поточний сценарій розширює MarginContainer. 
    int marginValue = 100; 
    AddThemeConstantOverride("margin_top", marginValue); 
    AddThemeConstantOverride("margin_left", marginValue); 
    AddThemeConstantOverride("margin_bottom", marginValue); 
    AddThemeConstantOverride("margin_right", marginValue);  



.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_bottom<class_MarginContainer_theme_constant_margin_bottom>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_left<class_MarginContainer_theme_constant_margin_left>`     | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_right<class_MarginContainer_theme_constant_margin_right>`   | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_top<class_MarginContainer_theme_constant_margin_top>`       | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_MarginContainer_theme_constant_margin_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_bottom** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_bottom>`

Вимкнено до внутрішніх прямих дітей контейнера за цією кількістю пікселів знизу.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_left** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_left>`

Вимкніть до внутрішніх прямих дітей контейнера за цією кількістю пікселів зліва.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_right** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_right>`

Вимкніть до внутрішніх прямих дітей контейнера за цією кількістю пікселів з правого боку.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_top** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_top>`

Вимкнено до внутрішніх прямих дітей контейнера за цією кількістю пікселів з вершини.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
