:github_url: hide

.. _class_Sprite3D:

Sprite3D
========

**Наследует:** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел 2D-спрайта в 3D-мире.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел, отображающий 2D-текстуру в 3D-среде. Отображаемая текстура может быть областью из более крупной текстуры атласа или кадром из анимации спрайт-листа. См. также :ref:`SpriteBase3D<class_SpriteBase3D>`, где определены такие свойства, как режим билборда.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite3D_property_frame>`                   | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite3D_property_frame_coords>`     | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite3D_property_hframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite3D_property_region_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite3D_property_region_rect>`       | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite3D_property_texture>`               |                       |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite3D_property_vframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Sprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_frame_changed>`

Выдается при изменении :ref:`frame<class_Sprite3D_property_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_texture_changed>`

Выдается при изменении :ref:`texture<class_Sprite3D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Sprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Текущий кадр для отображения из таблицы спрайтов. :ref:`hframes<class_Sprite3D_property_hframes>` или :ref:`vframes<class_Sprite3D_property_vframes>` должны быть больше 1. Это свойство автоматически корректируется, когда :ref:`hframes<class_Sprite3D_property_hframes>` или :ref:`vframes<class_Sprite3D_property_vframes>` изменяются, чтобы продолжать указывать на тот же визуальный кадр (тот же столбец и строку). Если это невозможно, это значение сбрасывается до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite3D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Координаты кадра для отображения из таблицы спрайтов. Это псевдоним для свойства :ref:`frame<class_Sprite3D_property_frame>`. :ref:`hframes<class_Sprite3D_property_hframes>` или :ref:`vframes<class_Sprite3D_property_vframes>` должны быть больше 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite3D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

Количество столбцов в таблице спрайтов. При изменении этого свойства :ref:`frame<class_Sprite3D_property_frame>` корректируется так, чтобы сохранялась та же визуальная рамка (та же строка и столбец). Если это невозможно, :ref:`frame<class_Sprite3D_property_frame>` сбрасывается до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite3D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

Если ``true``, спрайт будет использовать :ref:`region_rect<class_Sprite3D_property_region_rect>` и отображать только указанную часть своей текстуры.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite3D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Область текстуры атласа для отображения. :ref:`region_enabled<class_Sprite3D_property_region_enabled>` должен быть ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` объект для рисования. Если используется :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`, это будет переопределено. Информация о размере по-прежнему используется.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite3D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

Количество строк в таблице спрайтов. При изменении этого свойства :ref:`frame<class_Sprite3D_property_frame>` корректируется так, чтобы сохранялась та же визуальная рамка (та же строка и столбец). Если это невозможно, :ref:`frame<class_Sprite3D_property_frame>` сбрасывается до ``0``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
