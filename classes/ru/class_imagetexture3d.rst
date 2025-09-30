:github_url: hide

.. _class_ImageTexture3D:

ImageTexture3D
==============

**Наследует:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура с 3 измерениями.

.. rst-class:: classref-introduction-group

Описание
----------------

**ImageTexture3D** — это трехмерная :ref:`ImageTexture<class_ImageTexture>`, которая имеет ширину, высоту и глубину. См. также :ref:`ImageTextureLayered<class_ImageTextureLayered>`.

3D-текстуры обычно используются для хранения карт плотности для :ref:`FogMaterial<class_FogMaterial>`, LUT-таблиц цветовой коррекции для :ref:`Environment<class_Environment>`, векторных полей для :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>` и карт столкновений для :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`. 3D-текстуры также можно использовать в пользовательских шейдерах.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create<class_ImageTexture3D_method_create>`\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update<class_ImageTexture3D_method_update>`\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ )                                                                                                                                                                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ImageTexture3D_method_create:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create**\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_create>`

Создает **ImageTexture3D** с указанными ``format``, ``width``, ``height`` и ``depth``. Если ``use_mipmaps`` равен ``true``, генерирует mip-карты для **ImageTexture3D**.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture3D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_update>`

Заменяет существующие данные текстуры слоями, указанными в ``data``. Размер ``data`` должен соответствовать параметрам, которые использовались для :ref:`create()<class_ImageTexture3D_method_create>`. Другими словами, размер текстуры или ее формат нельзя изменить, вызвав :ref:`update()<class_ImageTexture3D_method_update>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
