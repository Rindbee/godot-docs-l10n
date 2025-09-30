:github_url: hide

.. _class_SkeletonModification2DJiggle:

SkeletonModification2DJiggle
============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модификация, которая покачивает узлы :ref:`Bone2D<class_Bone2D>` по мере их движения к цели.

.. rst-class:: classref-introduction-group

Описание
----------------

Эта модификация перемещает ряд костей, обычно называемых цепочкой костей, к цели. Что делает эту модификацию особенной, так это то, что она вычисляет скорость и ускорение для каждой кости в цепочке костей и запускает очень легкий физический расчет с использованием введенных значений. Это позволяет костям пролетать мимо цели и «покачиваться» вокруг. Ее можно настроить так, чтобы она действовала больше как пружина или покачивалась вокруг, как ткань.

Эта модификация полезна для добавления дополнительного движения таким вещам, как волосы, края одежды и многое другое. Она имеет несколько настроек, которые позволяют контролировать, как сустав движется при движении цели.

\ **Примечание:** Модификатор Jiggle имеет ``jiggle_joints``, которые являются объектами данных, которые содержат данные для каждого сустава в цепочке Jiggle. Это отличается от узлов :ref:`Bone2D<class_Bone2D>`! Соединения Jiggle содержат данные, необходимые для каждого :ref:`Bone2D<class_Bone2D>` в цепочке костей, используемых модификацией Jiggle.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`damping<class_SkeletonModification2DJiggle_property_damping>`                                   | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`                                   | ``Vector2(0, 6)`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`           | :ref:`jiggle_data_chain_length<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>` | ``0``             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`mass<class_SkeletonModification2DJiggle_property_mass>`                                         | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`stiffness<class_SkeletonModification2DJiggle_property_stiffness>`                               | ``3.0``           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DJiggle_property_target_nodepath>`                   | ``NodePath("")``  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_gravity<class_SkeletonModification2DJiggle_property_use_gravity>`                           | ``false``         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_collision_mask<class_SkeletonModification2DJiggle_method_get_collision_mask>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                          |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_override<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_use_colliders<class_SkeletonModification2DJiggle_method_get_use_colliders>`\ (\ ) |const|                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_collision_mask<class_SkeletonModification2DJiggle_method_set_collision_mask>`\ (\ collision_mask\: :ref:`int<class_int>`\ )                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ )                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ )               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ )                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_override<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ )                  |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )             |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ )         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_use_colliders<class_SkeletonModification2DJiggle_method_set_use_colliders>`\ (\ use_colliders\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonModification2DJiggle_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

Величина демпфирования по умолчанию, применяемая к сочленениям Jiggle, если они не переопределены. Более высокие значения приводят к применению большего количества вычисленной скорости.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity** = ``Vector2(0, 6)`` :ref:`🔗<class_SkeletonModification2DJiggle_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity**\ (\ )

Значение силы тяжести по умолчанию, применяемое к сочленениям Jiggle, если они не переопределены.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_jiggle_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **jiggle_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_jiggle_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_jiggle_data_chain_length**\ (\ )

Количество шарнирных соединений в модификации Jiggle.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Значение массы по умолчанию, назначенное для сочленений Jiggle, если они не переопределены. Более высокие значения приводят к более быстрым движениям и большему перескоку.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``3.0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

Значение жесткости по умолчанию, назначенное для Jiggle joints, если они не переопределены. Более высокие значения действуют скорее как пружины, быстро перемещаясь в правильное положение.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DJiggle_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

NodePath к узлу, который является целью для модификации Jiggle. Это узел, к которому цепь Jiggle будет пытаться повернуть цепочку костей.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_use_gravity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_gravity** = ``false`` :ref:`🔗<class_SkeletonModification2DJiggle_property_use_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_use_gravity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_gravity**\ (\ )

Следует ли применять вектор гравитации :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>` к шарнирам Jiggle, предполагая, что они не переопределяют настройки по умолчанию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonModification2DJiggle_method_get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_mask**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_collision_mask>`

Возвращает маску столкновений, используемую модификатором Jiggle, когда столкновения включены.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`

Возвращает узел :ref:`Bone2D<class_Bone2D>`, назначенный для сустава Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`

Возвращает индекс узла :ref:`Bone2D<class_Bone2D>`, назначенного для сустава Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`

Возвращает величину демпфирования сочленения Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`

Возвращает :ref:`Vector2<class_Vector2>`, представляющий величину силы тяжести, которая влияет на сочленение Jiggle в точке ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`

Возвращает массу покачивающегося сочленения в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`

Возвращает логическое значение, указывающее, переопределяет ли соединение в ``joint_idx`` данные соединения Jiggle по умолчанию, определенные в модификации.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`

Возвращает жесткость шарнирного соединения Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`

Возвращает логическое значение, указывающее, использует ли сочленение с параметром ``joint_idx`` силу тяжести или нет.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_use_colliders:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_colliders**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_use_colliders>`

Возвращает, учитывает ли модификатор, покачивания физические коллайдеров при решении.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_collision_mask:

.. rst-class:: classref-method

|void| **set_collision_mask**\ (\ collision_mask\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_collision_mask>`

Устанавливает маску столкновений, которую модификатор Jiggle будет использовать при реагировании на коллайдеры, если модификатор Jiggle настроен на учет коллайдеров.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`

Устанавливает узел :ref:`Bone2D<class_Bone2D>`, назначенный для сустава Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`

Устанавливает индекс кости, ``bone_idx``, для Jiggle joint в ``joint_idx``. Когда это возможно, это также обновит ``bone2d_node`` для Jiggle joint на основе данных, предоставленных связанным скелетом.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping:

.. rst-class:: classref-method

|void| **set_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`

Устанавливает величину демпфирования сочленения Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`

Устанавливает вектор силы тяжести сочленения Jiggle на ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass:

.. rst-class:: classref-method

|void| **set_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`

Устанавливает массу шарнира Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_override:

.. rst-class:: classref-method

|void| **set_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`

Устанавливает, должен ли Jiggle joint в ``joint_idx`` переопределять настройки Jiggle joint по умолчанию. Установка этого значения в ``true`` заставит joint использовать собственные настройки, а не настройки по умолчанию, прикрепленные к модификации.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness:

.. rst-class:: classref-method

|void| **set_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`

Устанавливает жесткость шарнира Jiggle в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`

Устанавливает, будет ли сочленение Jiggle в ``joint_idx`` использовать гравитацию.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_use_colliders:

.. rst-class:: classref-method

|void| **set_use_colliders**\ (\ use_colliders\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_use_colliders>`

Если ``true``, модификатор Jiggle будет учитывать коллайдеры, не давая им входить в эти объекты столкновения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
