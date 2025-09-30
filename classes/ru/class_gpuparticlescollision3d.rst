:github_url: hide

.. _class_GPUParticlesCollision3D:

GPUParticlesCollision3D
=======================

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`GPUParticlesCollisionBox3D<class_GPUParticlesCollisionBox3D>`, :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, :ref:`GPUParticlesCollisionSphere3D<class_GPUParticlesCollisionSphere3D>`

Абстрактный базовый класс для трехмерных форм столкновений частиц, влияющих на узлы :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Формы столкновений частиц можно использовать для остановки или отскока частиц от них.

Формы столкновений частиц работают в реальном времени и могут перемещаться, вращаться и масштабироваться во время игры. В отличие от аттракторов, неравномерное масштабирование форм столкновений *не* поддерживается.

Формы столкновений частиц можно временно отключить, скрыв их.

\ **Примечание:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` должен быть :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` или :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` в материале процесса :ref:`GPUParticles3D<class_GPUParticles3D>`, чтобы столкновение работало.

\ **Примечание:** Столкновение частиц влияет только на :ref:`GPUParticles3D<class_GPUParticles3D>`, а не на :ref:`CPUParticles3D<class_CPUParticles3D>`.

\ **Примечание:** Частицы, выталкиваемые движущимся коллайдером, не будут интерполироваться, что может привести к видимым заиканиям. Это можно устранить, установив :ref:`GPUParticles3D.fixed_fps<class_GPUParticles3D_property_fixed_fps>` на ``0`` или значение, которое соответствует или превышает целевую частоту кадров.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`cull_mask<class_GPUParticlesCollision3D_property_cull_mask>` | ``4294967295`` |
   +-----------------------+--------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GPUParticlesCollision3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollision3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Слои рендеринга частиц (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`), на которые будет влиять форма столкновения. По умолчанию все частицы, у которых :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` установлен на :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` или :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`, будут затронуты формой столкновения.

После соответствующей настройки узлов частиц можно снять отметку с определенных слоев, чтобы предотвратить воздействие коллайдеров на определенные частицы. Например, это можно использовать, если вы используете коллайдер как часть эффекта заклинания, но не хотите, чтобы коллайдер влиял на несвязанные погодные частицы в той же позиции.

Столкновение частиц также можно отключить на основе материала для каждого процесса, установив :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` на узле :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
