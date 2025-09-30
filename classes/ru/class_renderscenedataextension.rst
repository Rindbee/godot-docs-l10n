:github_url: hide

.. _class_RenderSceneDataExtension:

RenderSceneDataExtension
========================

**Наследует:** :ref:`RenderSceneData<class_RenderSceneData>` **<** :ref:`Object<class_Object>`

Этот класс позволяет реализовать RenderSceneData в GDExtension.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс позволяет реализовать RenderSceneData в GDExtension.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_cam_projection<class_RenderSceneDataExtension_private_method__get_cam_projection>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`_get_cam_transform<class_RenderSceneDataExtension_private_method__get_cam_transform>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`_get_uniform_buffer<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_view_count<class_RenderSceneDataExtension_private_method__get_view_count>`\ (\ ) |virtual| |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`_get_view_eye_offset<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_view_projection<class_RenderSceneDataExtension_private_method__get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RenderSceneDataExtension_private_method__get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_cam_projection**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_projection>`

Реализуйте это в GDExtension, чтобы вернуть камеру :ref:`Projection<class_Projection>`.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_cam_transform**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_transform>`

Реализуйте это в GDExtension, чтобы вернуть камеру :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_uniform_buffer**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`

Реализуйте это в GDExtension, чтобы вернуть :ref:`RID<class_RID>` однородного буфера, содержащего данные сцены, как UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_view_count**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_count>`

Реализуйте это в GDExtension, чтобы вернуть количество просмотров.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`

Реализуйте это в GDExtension, чтобы вернуть смещение глаза для заданного ``view``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_projection>`

Реализуйте это в GDExtension, чтобы вернуть представление :ref:`Projection<class_Projection>` для заданного ``view``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
