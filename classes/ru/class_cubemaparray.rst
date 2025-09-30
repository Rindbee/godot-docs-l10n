:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**Наследует:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Массивы :ref:`Cubemap<class_Cubemap>`-ы, хранящихся вместе и имеющих одну ссылку.

.. rst-class:: classref-introduction-group

Описание
----------------

Массивы **CubemapArray** состоят из массива :ref:`Cubemap<class_Cubemap>`. Как и :ref:`Cubemap<class_Cubemap>`, они состоят из нескольких текстур, количество которых должно быть кратно 6 (по одной на каждую грань куба).

Основное преимущество массивов **CubemapArray** заключается в том, что к ним можно получить доступ из кода шейдера, используя одну ссылку на текстуру. Другими словами, вы можете передать несколько :ref:`Cubemap<class_Cubemap>` в шейдер, используя один массив **CubemapArray**. Массивы :ref:`Cubemap<class_Cubemap>` размещаются в соседних областях кэша на графическом процессоре, что делает массивы **CubemapArray** наиболее эффективным способом хранения нескольких :ref:`Cubemap<class_Cubemap>`.

Godo использует массивы **CubemapArray** для многих внутренних эффектов, включая :ref:`Sky<class_Sky>`, если параметру :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` присвоено значение ``true``.

Чтобы создать такой файл текстуры самостоятельно, повторно импортируйте файлы изображений с помощью предустановок импорта редактора Godot. Чтобы создать CubemapArray из кода, используйте :ref:`mageTextureLayered.create_from_images()<class_mageTextureLayered_method_create_from_images>` для экземпляра класса CubemapArray.

Ожидаемый порядок изображений: X+, X-, Y+, Y-, Z+, Z- (в системе координат Godot, таким образом, Y+ означает «вверх», а Z- — «вперёд»). Вы можете использовать один из следующих шаблонов в качестве основы:

- `2×3 cubemap template (default layout option) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `Шаблон кубической карты 3×2 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `Шаблон кубической карты 1×6 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `Шаблон кубической карты 6×1 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

При использовании вертикального импорта по умолчанию (первый слой сверху) несколько слоёв накладываются друг на друга. В качестве альтернативы, в параметрах импорта можно выбрать горизонтальное расположение (первый слой слева).

\ **Примечание:** **CubemapArray** не поддерживается в модуле Compatibility Reender из-за ограничений графического API.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

Создает версию-заполнитель этого ресурса (:ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
