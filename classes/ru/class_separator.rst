:github_url: hide

.. _class_Separator:

Separator
=========

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HSeparator<class_HSeparator>`, :ref:`VSeparator<class_VSeparator>`

Абстрактный базовый класс для разделителей.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для разделителей, используемых для разделения других элементов управления. **Separator**-ы являются чисто визуальными и обычно рисуются как :ref:`StyleBoxLine<class_StyleBoxLine>`.

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>`           | :ref:`separation<class_Separator_theme_constant_separation>` | ``0`` |
   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`separator<class_Separator_theme_style_separator>`      |       |
   +---------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_Separator_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``0`` :ref:`🔗<class_Separator_theme_constant_separation>`

Размер области, охватываемой разделителем. Фактически работает как минимальная ширина/высота.

.. rst-class:: classref-item-separator

----

.. _class_Separator_theme_style_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **separator** :ref:`🔗<class_Separator_theme_style_separator>`

Стиль для разделительной линии. Лучше всего работает с :ref:`StyleBoxLine<class_StyleBoxLine>` (не забудьте включить :ref:`StyleBoxLine.vertical<class_StyleBoxLine_property_vertical>` для :ref:`VSeparator<class_VSeparator>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
