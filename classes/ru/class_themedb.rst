:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**Наследует:** :ref:`Object<class_Object>`

Синглтон, предоставляющий доступ к статической информации о ресурсах :ref:`Theme<class_Theme>`, используемых движком и вашим проектом.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот синглтон обеспечивает доступ к статической информации о ресурсах :ref:`Theme<class_Theme>`, используемых движком и вашими проектами. Вы можете получить тему движка по умолчанию, а также настроенную тему вашего проекта.

\ **ThemeDB** также содержит резервные значения для свойств темы.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`         | :ref:`fallback_base_scale<class_ThemeDB_property_fallback_base_scale>` | ``1.0`` |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Font<class_Font>`           | :ref:`fallback_font<class_ThemeDB_property_fallback_font>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`             | :ref:`fallback_font_size<class_ThemeDB_property_fallback_font_size>`   | ``16``  |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`fallback_icon<class_ThemeDB_property_fallback_icon>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`fallback_stylebox<class_ThemeDB_property_fallback_stylebox>`     |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_default_theme<class_ThemeDB_method_get_default_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_project_theme<class_ThemeDB_method_get_project_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

Выдается, когда одно из резервных значений было изменено. Используйте его для обновления внешнего вида элементов управления, которые могут полагаться на резервные элементы темы.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

Резервный базовый масштабный коэффициент каждого узла :ref:`Control<class_Control>` и ресурса :ref:`Theme<class_Theme>`. Используется, когда для элемента управления недоступно другое значение.

См. также :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

Резервный шрифт каждого узла :ref:`Control<class_Control>` и ресурса :ref:`Theme<class_Theme>`. Используется, когда для элемента управления недоступно другое значение.

См. также :ref:`Theme.default_font<class_Theme_property_default_font>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

Резервный размер шрифта каждого узла :ref:`Control<class_Control>` и ресурса :ref:`Theme<class_Theme>`. Используется, когда для элемента управления недоступно другое значение.

См. также :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

Значок (иконка) резервного копирования каждого узла :ref:`Control<class_Control>` и ресурса :ref:`Theme<class_Theme>`. Используется, когда для элемента управления недоступно другое значение.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

Резервный stylebox каждого узла :ref:`Control<class_Control>` и ресурса :ref:`Theme<class_Theme>`. Используется, когда для элемента управления недоступно другое значение.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

Возвращает ссылку на :ref:`Theme<class_Theme>` по умолчанию движка . Этот ресурс темы отвечает за внешний вид узлов :ref:`Control<class_Control>` «из коробки» и не может быть переопределен.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

Возвращает ссылку на пользовательский :ref:`Theme<class_Theme>` проекта. Эти ресурсы темы позволяют переопределить тему движка по умолчанию для каждого узла управления в проекте.

Чтобы задать тему проекта, см. :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
