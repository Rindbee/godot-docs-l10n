:github_url: hide

.. _class_TextMesh:

TextMesh
========

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Згенеруйте :ref:`PrimitiveMesh<class_PrimitiveMesh>` з тексту.

.. rst-class:: classref-introduction-group

Опис
--------

Згенерувати :ref:`PrimitiveMesh<class_PrimitiveMesh>` з тексту.

TextMesh можна згенерувати лише за використання динамічних шрифтів з векторними гліфовими контурами. Растрові шрифти (включаючи растрові дані в контейнерах TrueType/OpenType, такі як кольорові шрифти емодзі) не підтримуються.

UV-макет розташовано у вигляді 4 горизонтальних смуг, зверху вниз: 40% висоти для передньої грані, 40% для задньої грані, 10% для зовнішніх країв та 10% для внутрішніх країв.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`3D текст <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_TextMesh_property_autowrap_mode>`                                                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`curve_step<class_TextMesh_property_curve_step>`                                                       | ``0.5``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`depth<class_TextMesh_property_depth>`                                                                 | ``0.05``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_TextMesh_property_font>`                                                                   |                   |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_TextMesh_property_font_size>`                                                         | ``16``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_TextMesh_property_horizontal_alignment>`                                   | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextMesh_property_justification_flags>`                                     | ``163``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_TextMesh_property_language>`                                                           | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextMesh_property_line_spacing>`                                                   | ``0.0``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_TextMesh_property_offset>`                                                               | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_TextMesh_property_pixel_size>`                                                       | ``0.01``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_TextMesh_property_structured_text_bidi_override>`                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_TextMesh_property_structured_text_bidi_override_options>` | ``[]``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_TextMesh_property_text>`                                                                   | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_TextMesh_property_text_direction>`                                               | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_TextMesh_property_uppercase>`                                                         | ``false``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_TextMesh_property_vertical_alignment>`                                       | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextMesh_property_width>`                                                                 | ``500.0``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TextMesh_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_TextMesh_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Якщо встановлено значення, відмінне від :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, текст обтікається всередині прямокутника, що обмежує вузол. Якщо змінити розмір вузла, його висота автоматично зміниться, щоб відобразити весь текст.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_curve_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **curve_step** = ``0.5`` :ref:`🔗<class_TextMesh_property_curve_step>`

.. rst-class:: classref-property-setget

- |void| **set_curve_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_curve_step**\ (\ )

Step (in pixels) used to approximate Bézier curves. Lower values result in smoother curves, but is slower to generate and render. Consider adjusting this according to the font size and the typical viewing distance.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``0.05`` :ref:`🔗<class_TextMesh_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Глибина сітки, якщо встановити на ``0.0`` генерується тільки лицьова поверхня, а УФ-верстка змінюється для використання повної текстури для лицьового обличчя тільки.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TextMesh_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

Налаштування шрифту, що використовується для відображення тексту.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_TextMesh_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Font size of the **TextMesh**'s text. This property works in tandem with :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Higher values will result in a more detailed font, regardless of :ref:`curve_step<class_TextMesh_property_curve_step>` and :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Consider keeping this value below 63 (inclusive) for good performance, and adjust :ref:`pixel_size<class_TextMesh_property_pixel_size>` as needed to enlarge text.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts. To change the text's size in real-time efficiently, change the node's :ref:`Node3D.scale<class_Node3D_property_scale>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Керує горизонтальним вирівнюванням тексту. Підтримує вирівнювання по лівому краю, по центру, по правому краю та заповнення (також відоме як вирівнювання по ширині).

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextMesh_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Правила вирівнювання заповнення рядків.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_TextMesh_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextMesh_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Додатковий вертикальний інтервал між рядками (у пікселях), інтервал додається до рядкового спуску. Це значення може бути негативним.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextMesh_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

The text drawing offset (in pixels).

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation. To change the text's position in real-time efficiently, change the node's :ref:`Node3D.position<class_Node3D_property_position>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_TextMesh_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

The size of one pixel's width on the text to scale it in 3D. This property works in tandem with :ref:`font_size<class_TextMesh_property_font_size>`.

\ **Note:** Changing this property will regenerate the mesh, which is a slow operation, especially with large font sizes and long texts. To change the text's size in real-time efficiently, change the node's :ref:`Node3D.scale<class_Node3D_property_scale>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Настроювання алгоритму BiDi для структурованого тексту.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Налаштуйте додаткові параметри для перенади BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_TextMesh_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст для створення сітки.

\ **Примітка:** Оскільки це :ref:`Resource<class_Resource>`, він не відповідає правилам :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>`. Якщо потрібно вимкнути переклад, це слід зробити вручну за допомогою методу :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_TextMesh_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

Основний напрямок написання тексту.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_TextMesh_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Якщо ``true``, всі текстові дисплеї як UPPERCASE.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Керує вертикальним вирівнюванням тексту. Підтримує вирівнювання по верху, по центру та знизу.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_TextMesh_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина тексту (в пікселях), що використовується для вирівнювання заповнення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
