:github_url: hide

.. _class_TextureRect:

TextureRect
===========

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления, отображающий текстуру.

.. rst-class:: classref-introduction-group

Описание
----------------

Control, отображающий текстуру (например, иконку в графическом интерфейсе). Размещение текстуры контролируется свойством :ref:`stretch_mode<class_TextureRect_property_stretch_mode>`. Текстура может масштабироваться, повторяться (тайлиться) или оставаться в центре ограничивающего прямоугольника.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`ExpandMode<enum_TextureRect_ExpandMode>`   | :ref:`expand_mode<class_TextureRect_property_expand_mode>`   | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_h<class_TextureRect_property_flip_h>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_v<class_TextureRect_property_flip_v>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`     | mouse_filter                                                 | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`StretchMode<enum_TextureRect_StretchMode>` | :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`texture<class_TextureRect_property_texture>`           |                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_TextureRect_ExpandMode:

.. rst-class:: classref-enumeration

enum **ExpandMode**: :ref:`🔗<enum_TextureRect_ExpandMode>`

.. _class_TextureRect_constant_EXPAND_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_KEEP_SIZE** = ``0``

Минимальный размер будет равен размеру текстуры, т.е. **TextureRect** не может быть меньше текстуры.

.. _class_TextureRect_constant_EXPAND_IGNORE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_IGNORE_SIZE** = ``1``

Размер текстуры не будет учитываться при расчете минимального размера, поэтому **TextureRect** можно уменьшить до размера, превышающего размер текстуры.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH** = ``2``

Высота текстуры будет проигнорирована. Минимальная ширина будет равна текущей высоте. Полезно для горизонтальных макетов, например, внутри :ref:`HBoxContainer<class_HBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH_PROPORTIONAL** = ``3``

То же, что и :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, но сохраняет пропорции текстуры.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT** = ``4``

Ширина текстуры будет проигнорирована. Минимальная высота будет равна текущей ширине. Полезно для вертикальных макетов, например, внутри :ref:`VBoxContainer<class_VBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT_PROPORTIONAL** = ``5``

То же, что и :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, но сохраняет пропорции текстуры.

.. rst-class:: classref-item-separator

----

.. _enum_TextureRect_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureRect_StretchMode>`

.. _class_TextureRect_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_SCALE** = ``0``

Масштабируйте так, чтобы он соответствовал ограничивающему прямоугольнику узла.

.. _class_TextureRect_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_TILE** = ``1``

Размещает в виде плиток, внутри ограничивающего прямоугольника узла.

.. _class_TextureRect_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP** = ``2``

Текстура сохраняет свой исходный размер и располагается в верхнем левом углу ограничивающего прямоугольника.

.. _class_TextureRect_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

Текстура сохраняет свой исходный размер и остается в центре ограничивающего прямоугольника узла.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Масштабируйте текстуру так, чтобы она вписывалась в ограничивающий прямоугольник узла, но сохраняйте пропорции текстуры.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Масштабируйте текстуру так, чтобы она вписывалась в ограничивающий прямоугольник узла, отцентрируйте ее и сохраните пропорции.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Масштабируйте текстуру так, чтобы короткая сторона соответствовала ограничивающему прямоугольнику. Другая сторона обрезалась до границ узла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextureRect_property_expand_mode:

.. rst-class:: classref-property

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **expand_mode** = ``0`` :ref:`🔗<class_TextureRect_property_expand_mode>`

.. rst-class:: classref-property-setget

- |void| **set_expand_mode**\ (\ value\: :ref:`ExpandMode<enum_TextureRect_ExpandMode>`\ )
- :ref:`ExpandMode<enum_TextureRect_ExpandMode>` **get_expand_mode**\ (\ )

**Экспериментальное:** Using :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, :ref:`EXPAND_FIT_WIDTH_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL>`, :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, or :ref:`EXPAND_FIT_HEIGHT_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL>` may result in unstable behavior in some :ref:`Container<class_Container>` controls. This behavior may be re-evaluated and changed in the future.

Определяет, как определяется минимальный размер на основе размера текстуры.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureRect_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Если ``true``, текстура отражена по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureRect_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Если ``true``, текстура отражена по вертикали.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureRect_StretchMode>` **stretch_mode** = ``0`` :ref:`🔗<class_TextureRect_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureRect_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureRect_StretchMode>` **get_stretch_mode**\ (\ )

Управляет поведением текстуры при изменении размера ограничивающего прямоугольника узла.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TextureRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Ресурс узла :ref:`Texture2D<class_Texture2D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
