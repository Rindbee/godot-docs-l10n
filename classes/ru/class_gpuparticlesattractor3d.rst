:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

Абстрактный базовый класс для аттракторов трехмерных частиц.

.. rst-class:: classref-introduction-group

Описание
----------------

Аттракторы частиц можно использовать для притяжения частиц к началу аттрактора или для их отталкивания от начала аттрактора.

Аттракторы частиц работают в реальном времени и могут перемещаться, вращаться и масштабироваться во время игры. В отличие от форм столкновений, также поддерживается неравномерное масштабирование аттракторов.

Аттракторы можно временно отключить, скрыв их или установив их :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` на ``0.0``.

\ **Примечание:** Аттракторы частиц влияют только на :ref:`GPUParticles3D<class_GPUParticles3D>`, а не на :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`attenuation<class_GPUParticlesAttractor3D_property_attenuation>`       | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`     | :ref:`cull_mask<class_GPUParticlesAttractor3D_property_cull_mask>`           | ``4294967295`` |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` | ``0.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`strength<class_GPUParticlesAttractor3D_property_strength>`             | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

Затухание аттрактора частиц. Более высокие значения приводят к более плавному отталкиванию частиц по мере их приближения к началу координат аттрактора. Нулевые или отрицательные значения приведут к тому, что частицы будут отталкиваться очень быстро, как только коснутся краев аттрактора.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Слои рендеринга частиц (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`), на которые будет влиять аттрактор. По умолчанию все частицы подвержены влиянию аттрактора.

После соответствующей настройки узлов частиц можно снять отметку с определенных слоев, чтобы предотвратить влияние аттракторов на определенные частицы. Например, это можно использовать, если вы используете аттрактор как часть эффекта заклинания, но не хотите, чтобы аттрактор влиял на несвязанные погодные частицы в той же позиции.

Притяжение частиц также можно отключить на основе материала процесса, установив :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>` на узле :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

Регулирует направленность аттрактора. При ``0.0`` аттрактор вообще не направлен: он будет притягивать частицы к своему центру. При ``1.0`` аттрактор полностью направлен: частицы всегда будут подталкиваться к локальному -Z (или +Z, если :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` отрицательна).

\ **Примечание:** Если :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` больше ``0.0``, направление, в котором подталкиваются частицы, можно изменить, вращая узел **GPUParticlesAttractor3D**.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Регулирует силу аттрактора. Если :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` отрицательна, частицы будут отталкиваться в противоположном направлении. Частицы будут отталкиваться *от* начала аттрактора, если :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` равен ``0.0``, или к локальному +Z, если :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` больше ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
