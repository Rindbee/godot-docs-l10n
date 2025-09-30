:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует SVG-файл как автоматически масштабируемую текстуру для использования в элементах пользовательского интерфейса и 2D-рендеринге.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот импортер импортирует ресурсы :ref:`DPITexture<class_DPITexture>`. См. также :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` и :ref:`ResourceImporterImage<class_ResourceImporterImage>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_ResourceImporterSVG_property_base_scale>` | ``1.0``  |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_ResourceImporterSVG_property_color_map>`   | ``{}``   |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterSVG_property_compress>`     | ``true`` |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_ResourceImporterSVG_property_saturation>` | ``1.0``  |
   +-------------------------------------+------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

Масштаб текстуры. ``1.0`` — исходный размер SVG. Более высокие значения приводят к увеличению размера изображения.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_ResourceImporterSVG_property_color_map>`

Если установлено, переназначает цвета текстуры в соответствии с картой :ref:`Color<class_Color>`-:ref:`Color<class_Color>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterSVG_property_compress>`

Если ``true``, используется сжатие без потерь для исходного SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_saturation>`

Переопределяет насыщенность текстуры.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
