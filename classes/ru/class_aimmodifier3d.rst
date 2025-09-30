:github_url: hide

.. _class_AimModifier3D:

AimModifier3D
=============

**Наследует:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**AimModifier3D** вращает кость, чтобы она смотрела на опорную кость.

.. rst-class:: classref-introduction-group

Описание
----------------

Это упрощённая версия :ref:`LookAtModifier3D<class_LookAtModifier3D>`, которая допускает только кость к референсу без дополнительных настроек, таких как ограничение угла или заданной по времени интерполяции.

Эта функция упрощена, но взамен она имплементирована с сглаженным трекингом без euler, смотреть :ref:`set_use_euler()<class_AimModifier3D_method_set_use_euler>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_AimModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` | :ref:`get_forward_axis<class_AimModifier3D_method_get_forward_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                    | :ref:`get_primary_rotation_axis<class_AimModifier3D_method_get_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_euler<class_AimModifier3D_method_is_using_euler>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_secondary_rotation<class_AimModifier3D_method_is_using_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_forward_axis<class_AimModifier3D_method_set_forward_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_primary_rotation_axis<class_AimModifier3D_method_set_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_euler<class_AimModifier3D_method_set_use_euler>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_secondary_rotation<class_AimModifier3D_method_set_use_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AimModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_AimModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Количество настроек в модификаторе.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AimModifier3D_method_get_forward_axis:

.. rst-class:: classref-method

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_forward_axis>`

Возвращает переднюю ось кости.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_get_primary_rotation_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_primary_rotation_axis>`

Возвращает ось первого вращения. Включено только если :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_euler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_euler**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_euler>`

Возвращает ``true``, если обеспечивает вращение с использованием Эйлера.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_secondary_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_secondary_rotation>`

Возвращает ``true``, если обеспечивает вращение по двум осям. Это работает только если :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_forward_axis:

.. rst-class:: classref-method

|void| **set_forward_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_forward_axis>`

Устанавливает переднюю ось кости.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_primary_rotation_axis:

.. rst-class:: classref-method

|void| **set_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_primary_rotation_axis>`

Устанавливает ось первого вращения. Работает только если :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_euler:

.. rst-class:: classref-method

|void| **set_use_euler**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_euler>`

Если задан ``enabled`` к ``true``, то предоставляется вращение без использования euler.

Если задан ``enabled`` к ``false``, то предоставляется вращение с использованием пути, заданного передним осевым вектором и вектором, направленным к референсу.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_secondary_rotation:

.. rst-class:: classref-method

|void| **set_use_secondary_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_secondary_rotation>`

Если задан ``enabled`` к ``true``, то предоставляется вращение по двум осям. Включено только если :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` задан ``true``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
