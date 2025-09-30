:github_url: hide

.. _class_GLTFTexture:

GLTFTexture
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFTexture представляет текстуру в файле glTF.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`sampler<class_GLTFTexture_property_sampler>`     | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`src_image<class_GLTFTexture_property_src_image>` | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFTexture_property_sampler:

.. rst-class:: classref-property

:ref:`int<class_int>` **sampler** = ``-1`` :ref:`🔗<class_GLTFTexture_property_sampler>`

.. rst-class:: classref-property-setget

- |void| **set_sampler**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sampler**\ (\ )

ID сэмплера текстуры, который будет использоваться при сэмплировании изображения. Если -1, то используется сэмплер текстуры по умолчанию (линейная фильтрация и повторное обертывание по обеим осям).

.. rst-class:: classref-item-separator

----

.. _class_GLTFTexture_property_src_image:

.. rst-class:: classref-property

:ref:`int<class_int>` **src_image** = ``-1`` :ref:`🔗<class_GLTFTexture_property_src_image>`

.. rst-class:: classref-property-setget

- |void| **set_src_image**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_src_image**\ (\ )

Индекс изображения, связанного с этой текстурой, см. :ref:`GLTFState.get_images()<class_GLTFState_method_get_images>`. Если -1, то этой текстуре не назначено изображение.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
