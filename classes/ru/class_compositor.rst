:github_url: hide

.. _class_Compositor:

Compositor
==========

**Экспериментальное:** More customization of the rendering pipeline will be added in the future.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сохраняет атрибуты, используемые для настройки способа визуализации области просмотра.

.. rst-class:: classref-introduction-group

Описание
----------------

Ресурс композитора хранит атрибуты, используемые для настройки способа визуализации :ref:`Viewport<class_Viewport>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Композитор <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] | :ref:`compositor_effects<class_Compositor_property_compositor_effects>` | ``[]`` |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Compositor_property_compositor_effects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **compositor_effects** = ``[]`` :ref:`🔗<class_Compositor_property_compositor_effects>`

.. rst-class:: classref-property-setget

- |void| **set_compositor_effects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **get_compositor_effects**\ (\ )

Пользовательские :ref:`CompositorEffect<class_CompositorEffect>`-ы, которые применяются во время рендеринга видовых экранов с использованием этого композитора.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
