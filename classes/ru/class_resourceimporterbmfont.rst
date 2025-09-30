:github_url: hide

.. _class_ResourceImporterBMFont:

ResourceImporterBMFont
======================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует растровый шрифт в формате BMFont (``.fnt``).

.. rst-class:: classref-introduction-group

Описание
----------------

Формат BMFont — это формат, созданный программой `BMFont <https://www.angelcode.com/products/bmfont/>`__. Существует также множество программ, совместимых с BMFont, например `BMGlyph <https://www.bmglyph.com/>`__.

По сравнению с :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, **ResourceImporterBMFont** поддерживает растровые шрифты с различной шириной/высотой глифов.

См. также :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Растровые шрифты - Использование шрифтов <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`compress<class_ResourceImporterBMFont_property_compress>`         | ``true`` |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`Array<class_Array>` | :ref:`fallbacks<class_ResourceImporterBMFont_property_fallbacks>`       | ``[]``   |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`scaling_mode<class_ResourceImporterBMFont_property_scaling_mode>` | ``2``    |
   +---------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterBMFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterBMFont_property_compress>`

Если ``true``, используется сжатие без потерь для результирующего шрифта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterBMFont_property_fallbacks>`

Список резервных шрифтов для использования, если глиф не найден в этом растровом шрифте. Шрифты в начале массива пробуются первыми.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterBMFont_property_scaling_mode>`

Режим масштабирования шрифта.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
