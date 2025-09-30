:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/BoneAttachment3D.xml.

.. _class_BoneAttachment3D:

BoneAttachment3D
================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол, який динамічно копіює або замінює тривимірне перетворення кістки в її батьківському :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей вузол вибирає кістку в :ref:`Skeleton3D<class_Skeleton3D>` і приєднується до неї. Це означає, що вузол **BoneAttachment3D** динамічно копіюватиме або замінюватиме 3D-перетворення вибраної кістки.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone_idx<class_BoneAttachment3D_property_bone_idx>`                           | ``-1``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_BoneAttachment3D_property_bone_name>`                         | ``""``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                     | :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>`         |                                                                               |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`override_pose<class_BoneAttachment3D_property_override_pose>`                 | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_external_skeleton<class_BoneAttachment3D_property_use_external_skeleton>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_BoneAttachment3D_method_get_skeleton>`\ (\ )             |
   +-------------------------------------+-----------------------------------------------------------------------------------+
   | |void|                              | :ref:`on_skeleton_update<class_BoneAttachment3D_method_on_skeleton_update>`\ (\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_BoneAttachment3D_property_bone_idx:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_idx** = ``-1`` :ref:`🔗<class_BoneAttachment3D_property_bone_idx>`

.. rst-class:: classref-property-setget

- |void| **set_bone_idx**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_idx**\ (\ )

Покажчик прикріпленої кістки.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_BoneAttachment3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Назва прикріпленої кістки.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_external_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **external_skeleton** :ref:`🔗<class_BoneAttachment3D_property_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_external_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_external_skeleton**\ (\ )

:ref:`NodePath<class_NodePath>` до зовнішнього вузла :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_override_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_pose** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_override_pose>`

.. rst-class:: classref-property-setget

- |void| **set_override_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_override_pose**\ (\ )

Чи вузол **BoneAttachment3D** замінить положення кістки, до якої він прикріплений. Якщо встановлено значення ``true``, вузол **BoneAttachment3D** може змінювати положення кістки. Якщо встановлено значення ``false``, вузол **BoneAttachment3D** завжди буде встановлений на перетворення кістки.

\ **Примітка:** Це перевизначення виконується переривчасто в процесі оновлення скелета, використовуючи сигнали через старий дизайн. Це може спричинити небажану поведінку, якщо використовувати його одночасно з :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_use_external_skeleton:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_external_skeleton** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_use_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_use_external_skeleton**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_external_skeleton**\ (\ )

Чи вузол **BoneAttachment3D** використовуватиме зовнішній вузол :ref:`Skeleton3D<class_Skeleton3D>`, а не намагатиметься використати свій батьківський вузол як :ref:`Skeleton3D<class_Skeleton3D>`. Якщо встановлено значення ``true``, вузол **BoneAttachment3D** використовуватиме зовнішній вузол :ref:`Skeleton3D<class_Skeleton3D>`, встановлений у :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_BoneAttachment3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_get_skeleton>`

Повертає батьківський або зовнішній вузол :ref:`Skeleton3D<class_Skeleton3D>`, якщо він існує, інакше повертає ``null``.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_method_on_skeleton_update:

.. rst-class:: classref-method

|void| **on_skeleton_update**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_on_skeleton_update>`

Функція, яка викликається автоматично під час оновлення :ref:`Skeleton3D<class_Skeleton3D>`. У цій функції вузол **BoneAttachment3D** оновлює свою позицію, щоб він був правильно прив’язаний, коли *не* налаштовано на перевизначення пози кістки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
