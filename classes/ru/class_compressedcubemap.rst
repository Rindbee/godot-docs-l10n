:github_url: hide

.. _class_CompressedCubemap:

CompressedCubemap
=================

**Наследует:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Опционально сжатая :ref:`Cubemap<class_Cubemap>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Кубическая карта, загруженная из файла ``.ccube``. Этот формат файла является внутренним для Godot; он создается путем импорта других форматов изображений с помощью системы импорта. **CompressedCubemap** может использовать один из 4 методов сжатия:

-Lossless (WebP или PNG, несжатый на GPU)

- Lossy (WebP, несжатый на GPU)

- VRAM Compressed (сжато на GPU)

- VRAM Uncompressed (несжато на GPU)

-Basis Universal (сжато на GPU. Меньшие размеры файлов, чем VRAM Compressed, но сжимается медленнее и качество ниже, чем VRAM Compressed)

Только **VRAM Compressed** на самом деле уменьшает использование памяти на GPU. Методы сжатия **Lossless** и **Lossy** уменьшат требуемое хранилище на диске, но они не уменьшат использование памяти на GPU, поскольку текстура отправляется на GPU в несжатом виде.

Использование **VRAM Compressed** также сокращает время загрузки, поскольку текстуры, сжатые VRAM, загружаются быстрее по сравнению с текстурами, использующими сжатие без потерь или с потерями. Сжатие VRAM может вызывать заметные артефакты и предназначено для использования в 3D-рендеринге, а не в 2D.

Общее описание кубических карт см. в разделе :ref:`Cubemap<class_Cubemap>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
