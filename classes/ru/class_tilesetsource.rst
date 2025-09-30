:github_url: hide

.. _class_TileSetSource:

TileSetSource
=============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`

Предоставляет набор плиток для ресурса :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет набор тайлов для ресурса :ref:`TileSet<class_TileSet>`.

Тайлы в источнике индексируются двумя идентификаторами: координат (типа Vector2i) и альтернативного тайла (типа int), названными в соответствии с их использованием в классе :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

В зависимости от типа источника TileSet, эти идентификаторы могут иметь ограничения на свои значения, поэтому базовый класс **TileSetSource** предоставляет только геттеры для них.

Вы можете перебирать все тайлы, предоставляемые TileSetSource, сначала перебирая идентификаторы координат с помощью :ref:`get_tiles_count()<class_TileSetSource_method_get_tiles_count>` и :ref:`get_tile_id()<class_TileSetSource_method_get_tile_id>`, а затем альтернативные идентификаторы с помощью :ref:`get_alternative_tiles_count()<class_TileSetSource_method_get_alternative_tiles_count>` и :ref:`get_alternative_tile_id()<class_TileSetSource_method_get_alternative_tile_id>`.

\ **Предупреждение:** **TileSetSource** можно добавить только в один TileSet одновременно. Вызов :ref:`TileSet.add_source()<class_TileSet_method_add_source>` для второго TileSet удалит источник из первого.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tile_id<class_TileSetSource_method_get_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const|      |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tiles_count<class_TileSetSource_method_get_alternative_tiles_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_tile_id<class_TileSetSource_method_get_tile_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tiles_count<class_TileSetSource_method_get_tiles_count>`\ (\ ) |const|                                                                                                     |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alternative_tile<class_TileSetSource_method_has_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_tile<class_TileSetSource_method_has_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                   |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TileSetSource_method_get_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tile_id>`

Возвращает альтернативный идентификатор для тайла с идентификатором координат ``atlas_coords`` по индексу ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_alternative_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tiles_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tiles_count>`

Возвращает количество альтернативных тайлов для идентификатора координат ``atlas_coords``.

Для :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` всегда возвращается не менее 1, так как базоваый тайл с идентификатором 0 всегда является частью списка альтернатив.

Возвращает -1, если тайла по заданным координатами нет.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tile_id:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tile_id>`

Возвращает идентификатор координат тайла с индексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tiles_count**\ (\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tiles_count>`

Возвращает количество тайлов, определенных в этом источнике атласа (не включая альтернативные тайлы).

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_alternative_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_alternative_tile>`

Возвращает, имеет ли базовый тайл по координатам ``atlas_coords`` альтернативу с идентификатором ``alternative_tile``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_tile>`

Возвращает, есть ли в этом атласе тайл с идентификатором координат ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
