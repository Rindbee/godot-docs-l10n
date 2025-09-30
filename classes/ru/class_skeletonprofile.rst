:github_url: hide

.. _class_SkeletonProfile:

SkeletonProfile
===============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`

Базовый класс для профиля виртуального скелета, используемого в качестве цели для перенацеливания.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот ресурс используется в :ref:`EditorScenePostImport<class_EditorScenePostImport>`. Некоторые параметры ссылаются на кости в :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`Skin<class_Skin>`, :ref:`Animation<class_Animation>`, а некоторые другие узлы переписываются на основе параметров **SkeletonProfile**.

\ **Примечание:** Эти параметры необходимо устанавливать только при создании пользовательского профиля. В :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` они определены внутренне как значения, доступные только для чтения.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Ретаргетинг 3D-скелетов <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`bone_size<class_SkeletonProfile_property_bone_size>`             | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`group_size<class_SkeletonProfile_property_group_size>`           | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`root_bone<class_SkeletonProfile_property_root_bone>`             | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`scale_base_bone<class_SkeletonProfile_property_scale_base_bone>` | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`find_bone<class_SkeletonProfile_method_find_bone>`\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_name<class_SkeletonProfile_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_parent<class_SkeletonProfile_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_tail<class_SkeletonProfile_method_get_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group<class_SkeletonProfile_method_get_group>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group_name<class_SkeletonProfile_method_get_group_name>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_handle_offset<class_SkeletonProfile_method_get_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                    | :ref:`get_reference_pose<class_SkeletonProfile_method_get_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TailDirection<enum_SkeletonProfile_TailDirection>` | :ref:`get_tail_direction<class_SkeletonProfile_method_get_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                        | :ref:`get_texture<class_SkeletonProfile_method_get_texture>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_required<class_SkeletonProfile_method_is_required>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_name<class_SkeletonProfile_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_parent<class_SkeletonProfile_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_tail<class_SkeletonProfile_method_set_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group<class_SkeletonProfile_method_set_group>`\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ )                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group_name<class_SkeletonProfile_method_set_group_name>`\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ )                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_handle_offset<class_SkeletonProfile_method_set_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_reference_pose<class_SkeletonProfile_method_set_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ )                         |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_required<class_SkeletonProfile_method_set_required>`\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ )                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_tail_direction<class_SkeletonProfile_method_set_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_texture<class_SkeletonProfile_method_set_texture>`\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                            |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_SkeletonProfile_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_SkeletonProfile_signal_profile_updated>`

Этот сигнал выдается при изменении значения в профиле. Он используется для обновления имени ключа в :ref:`BoneMap<class_BoneMap>` и перерисовки редактора :ref:`BoneMap<class_BoneMap>`.

\ **Примечание:** Этот сигнал не подключен напрямую к редактору для упрощения ссылки, вместо этого он передается редактору через :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SkeletonProfile_TailDirection:

.. rst-class:: classref-enumeration

enum **TailDirection**: :ref:`🔗<enum_SkeletonProfile_TailDirection>`

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_AVERAGE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_AVERAGE_CHILDREN** = ``0``

Направление к средним координатам костных детей.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_SPECIFIC_CHILD:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_SPECIFIC_CHILD** = ``1``

Направление к координатам указанного ребенка кости.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_END** = ``2``

Направление не рассчитано.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonProfile_property_bone_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_bone_size>`

.. rst-class:: classref-property-setget

- |void| **set_bone_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_size**\ (\ )

Количество костей в редакторе :ref:`BoneMap<class_BoneMap>` раздела перенацеливания. Например, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` имеет 56 костей.

Размер элементов в :ref:`BoneMap<class_BoneMap>` обновляется при изменении этого свойства в назначенном ему **SkeletonProfile**.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_group_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **group_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_group_size>`

.. rst-class:: classref-property-setget

- |void| **set_group_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_group_size**\ (\ )

Количество групп костей в редакторе :ref:`BoneMap<class_BoneMap>` раздела перенацеливания. Например, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` имеет 4 группы.

Это свойство существует для разделения списка костей на несколько разделов в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Имя кости, которая будет использоваться как корневая кость в :ref:`AnimationTree<class_AnimationTree>`. Это должна быть кость родителя бедер, которая существует в начале координат мира.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_scale_base_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **scale_base_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_scale_base_bone>`

.. rst-class:: classref-property-setget

- |void| **set_scale_base_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_scale_base_bone**\ (\ )

Имя кости, которое будет использовать высоту модели как коэффициент для нормализации. Например, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` определяет ее как ``Hips``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonProfile_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_find_bone>`

Возвращает индекс кости, имя которого совпадает с ``bone_name``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_name>`

Возвращает имя кости в ``bone_idx``, которое будет ключевым именем в :ref:`BoneMap<class_BoneMap>`.

В процессе перенацеливания возвращаемое имя кости является именем кости целевого скелета.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_parent>`

Возвращает имя кости, которая является родителем кости в ``bone_idx``. Результат пустой, если у кости нет родителя.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_tail:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_tail>`

Возвращает имя кости, которая является хвостом кости по адресу ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group>`

Возвращает группу кости по параметру ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group_name**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group_name>`

Возвращает имя группы в ``group_idx``, которая будет группой рисования в редакторе :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_handle_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_handle_offset>`

Возвращает смещение кости в ``bone_idx``, которое будет позицией кнопки в редакторе :ref:`BoneMap<class_BoneMap>`.

Это смещение с началом в левом верхнем углу квадрата.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_reference_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_reference_pose>`

Возвращает преобразование опорной позы для кости ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_tail_direction:

.. rst-class:: classref-method

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **get_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_tail_direction>`

Возвращает направление хвоста кости в ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_texture>`

Возвращает текстуру группы в ``group_idx``, которая будет фоновым изображением группы рисования в редакторе :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_is_required:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_required**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_is_required>`

Возвращает, требуется ли кость в ``bone_idx`` для перенацеливания.

Это значение используется редактором карты костей. Если этот метод возвращает ``true`` и кость не назначена, цвет ручки будет красным в редакторе карты костей.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_name>`

Устанавливает имя кости в ``bone_idx``, которое будет ключевым именем в :ref:`BoneMap<class_BoneMap>`.

В процессе перенацеливания имя кости настройки — это имя кости целевого скелета.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_parent>`

Устанавливает кость с именем ``bone_parent`` как родительскую для кости с ``bone_idx``. Если передана пустая строка, то у кости нет родителя.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_tail:

.. rst-class:: classref-method

|void| **set_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_tail>`

Устанавливает кость с именем ``bone_tail`` в качестве хвоста кости с координатами ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group>`

Устанавливает группу кости в ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group_name:

.. rst-class:: classref-method

|void| **set_group_name**\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group_name>`

Задает имя группы в ``group_idx``, которая будет группой рисования в редакторе :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_handle_offset:

.. rst-class:: classref-method

|void| **set_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_handle_offset>`

Устанавливает смещение кости в ``bone_idx``, которое будет позицией кнопки в редакторе :ref:`BoneMap<class_BoneMap>`.

Это смещение с началом в левом верхнем углу квадрата.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_reference_pose:

.. rst-class:: classref-method

|void| **set_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_reference_pose>`

Устанавливает преобразование опорной позы для кости ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_required:

.. rst-class:: classref-method

|void| **set_required**\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_required>`

Устанавливает требуемый статус для кости ``bone_idx`` на ``required``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_tail_direction:

.. rst-class:: classref-method

|void| **set_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_tail_direction>`

Устанавливает направление хвоста кости в ``bone_idx``.

\ **Примечание:** Это только указывает метод расчета. Фактические требуемые координаты должны храниться во внешнем скелете, поэтому сам расчет должен выполняться извне.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_texture>`

Устанавливает текстуру группы в ``group_idx``, которая будет фоновым изображением группы рисования в редакторе :ref:`BoneMap<class_BoneMap>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
