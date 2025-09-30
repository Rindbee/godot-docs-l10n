:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MarginContainer.xml.

.. _class_MarginContainer:

MarginContainer
===============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, сохраняющий отступы вокруг своих дочерних элементов управления.

.. rst-class:: classref-introduction-group

Описание
----------------

**MarginContainer** добавляет регулируемое поле с каждой стороны своих дочерних элементов управления. Поля добавляются вокруг всех дочерних элементов, а не вокруг каждого отдельного. Чтобы управлять полями **MarginContainer**, используйте свойства темы ``margin_*``, перечисленные ниже.

\ **Примечание:** Размеры полей являются переопределениями темы, а не обычными свойствами. Вот пример того, как изменить их в коде:


.. tabs::

 .. code-tab:: gdscript

    # В этом примере кода предполагается, что текущий скрипт расширяет MarginContainer.
    var margin_value = 100
    add_theme_constant_override("margin_top", margin_value)
    add_theme_constant_override("margin_left", margin_value)
    add_theme_constant_override("margin_bottom", margin_value)
    add_theme_constant_override("margin_right", margin_value)

 .. code-tab:: csharp

    // В этом примере кода предполагается, что текущий скрипт расширяет MarginContainer.
    int marginValue = 100;
    AddThemeConstantOverride("margin_top", marginValue);
    AddThemeConstantOverride("margin_left", marginValue);
    AddThemeConstantOverride("margin_bottom", marginValue);
    AddThemeConstantOverride("margin_right", marginValue);



.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

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

Описания свойств темы
------------------------------------------

.. _class_MarginContainer_theme_constant_margin_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_bottom** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_bottom>`

Смещение в сторону внутренних прямых дочерних элементов контейнера на указанное количество пикселей от нижнего края.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_left** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_left>`

Смещение в сторону внутренних прямых дочерних элементов контейнера на указанное количество пикселей слева.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_right** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_right>`

Смещается в сторону внутренних прямых дочерних элементов контейнера на указанное количество пикселей справа.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_top** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_top>`

Смещение в сторону внутренних прямых дочерних элементов контейнера на указанное количество пикселей сверху.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
