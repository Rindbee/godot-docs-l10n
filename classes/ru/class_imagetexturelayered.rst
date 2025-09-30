:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**Наследует:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

Базовый класс для типов текстур, которые содержат данные нескольких :ref:`ImageTexture<class_ImageTexture>`. Каждое изображение имеет одинаковый размер и формат.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` и :ref:`CubemapArray<class_CubemapArray>`. Не может использоваться напрямую, но содержит все функции, необходимые для доступа к производным типам ресурсов. См. также :ref:`Texture3D<class_Texture3D>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

Создает **ImageTextureLayered** из массива :ref:`Image<class_Image>`. См. :ref:`Image.create()<class_Image_method_create>` для ожидаемого формата данных. Первое изображение определяет ширину, высоту, формат изображения и настройку mipmapping. Другие изображения *должны* иметь ту же ширину, высоту, формат изображения и настройку mipmapping.

Каждое :ref:`Image<class_Image>` представляет один ``layer``.

::

    # Заполните массив изображений разными цветами.
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # Создайте и сохраните массив 2D-текстур. Массив изображений должен содержать не менее 1 изображения.
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # Создайте и сохраните кубическую карту. Массив изображений должен содержать ровно 6 изображений.
    # Изображения кубической карты указаны в следующем порядке: X+, X-, Y+, Y-, Z+, Z-
    # (в системе координат Годо Y+ — «вверх», а Z- — «вперед»).
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # Создайте и сохраните массив кубических карт. Массив изображений должен иметь число изображений, кратное 6.
    # Изображения каждой кубической карты указываются в следующем порядке: X+, X-, Y+, Y-, Z+, Z-
    # (в системе координат Годо Y+ — «вверх», а Z- — «вперед»).
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

Заменяет существующие данные :ref:`Image<class_Image>` в указанном ``layer`` этим новым изображением.

Указанное :ref:`Image<class_Image>` должно иметь ту же ширину, высоту, формат изображения и флаг MIP-отображения, что и остальные указанные изображения.

Если формат изображения не поддерживается, он будет распакован и преобразован в аналогичный и поддерживаемый :ref:`Format<enum_Image_Format>`.

Обновление происходит немедленно: оно синхронизируется с рисованием.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
