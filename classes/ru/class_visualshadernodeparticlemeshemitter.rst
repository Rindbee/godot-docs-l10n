:github_url: hide

.. _class_VisualShaderNodeParticleMeshEmitter:

VisualShaderNodeParticleMeshEmitter
===================================

**Наследует:** :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел визуального шейдера, который создает частицы, испускаемые в форме, определяемой :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, который заставляет частицы испускаться в форме назначенной :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`. Он будет испускаться из поверхностей сетки, либо всех, либо только из указанной.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`Mesh<class_Mesh>` | :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`                         |          |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`surface_index<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`       | ``0``    |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeParticleMeshEmitter_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>`, определяющая форму излучения.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_surface_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **surface_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`

.. rst-class:: classref-property-setget

- |void| **set_surface_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_surface_index**\ (\ )

Индекс поверхности, испускающей частицы. :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` должен быть ``false``, чтобы это вступило в силу.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_all_surfaces** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>`

.. rst-class:: classref-property-setget

- |void| **set_use_all_surfaces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_use_all_surfaces**\ (\ )

Если ``true``, частицы будут испускаться со всех поверхностей сетки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
