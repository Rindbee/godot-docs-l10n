:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует коллекцию текстур из изображения PNG в оптимизированный :ref:`AtlasTexture<class_AtlasTexture>` для 2D-рендеринга.

.. rst-class:: classref-introduction-group

Описание
----------------

Это импортирует коллекцию текстур из изображения PNG в :ref:`AtlasTexture<class_AtlasTexture>` или 2D :ref:`ArrayMesh<class_ArrayMesh>`. Это можно использовать для экономии памяти при импорте 2D-анимаций из spritesheets. Текстурные атласы поддерживаются только в 2D-рендеринге, а не в 3D. См. также :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` и :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

\ **Примечание:** **ResourceImporterTextureAtlas** не обрабатывает импорт :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, который создается с помощью редактора :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

Путь к листу спрайтов атласа. Этот путь *должен* быть установлен на действительный путь к PNG-изображению. В противном случае атлас не будет импортирован.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

Если ``true``, то пустые области удаляются из атласа. Это влияет только на окончательное позиционирование спрайта, а не на хранение. См. также :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`.

\ **Примечание:** Действует только если :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` — **Region**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Region:** Импортирует атлас в ресурс :ref:`AtlasTexture<class_AtlasTexture>`, который визуализируется как прямоугольник. Это быстро визуализируется, но прозрачные области все равно должны визуализироваться, если их невозможно эффективно обрезать с помощью :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`. Это может снизить производительность при визуализации больших спрайтов на экране.

\ **Mesh:** Импортирует атлас как ресурс :ref:`ArrayMesh<class_ArrayMesh>`, сохраняя исходное растровое изображение видимым (но визуализируя его как многоугольник). Это можно использовать для снижения скорости заполнения при визуализации больших прозрачных спрайтов за счет более медленной визуализации, если в спрайте мало или совсем нет прозрачных областей.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

Если ``true``, обрезает область, чтобы исключить полностью прозрачные пиксели, используя прямоугольник обрезки (который никогда не поворачивается). Это можно использовать для экономии памяти. См. также :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`.

\ **Примечание:** Действует только если :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` равно **Region**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
