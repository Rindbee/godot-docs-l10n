:github_url: hide

.. _class_GLTFTextureSampler:

GLTFTextureSampler
==================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой сэмплер текстуры glTF

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет сэмплер текстуры, как определено базовой спецификацией glTF. Сэмплеры текстуры в glTF указывают, как сэмплировать данные из базового изображения текстуры при рендеринге текстуры на объекте.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`mag_filter<class_GLTFTextureSampler_property_mag_filter>` | ``9729``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`min_filter<class_GLTFTextureSampler_property_min_filter>` | ``9987``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_s<class_GLTFTextureSampler_property_wrap_s>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_t<class_GLTFTextureSampler_property_wrap_t>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFTextureSampler_property_mag_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **mag_filter** = ``9729`` :ref:`🔗<class_GLTFTextureSampler_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mag_filter**\ (\ )

Фильтр увеличения текстуры, используемый, когда текстура на экране выглядит больше, чем исходное изображение.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_min_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_filter** = ``9987`` :ref:`🔗<class_GLTFTextureSampler_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_filter**\ (\ )

Фильтр уменьшения текстуры, используемый, когда текстура на экране выглядит меньше исходного изображения.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_s:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_s** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_s>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_s**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_s**\ (\ )

Режим обертывания, используемый для координат текстуры по оси S (горизонтальной).

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_t:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_t** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_t>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_t**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_t**\ (\ )

Режим обертывания, используемый для координат текстуры по оси T (вертикальной).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
