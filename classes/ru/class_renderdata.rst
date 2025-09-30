:github_url: hide

.. _class_RenderData:

RenderData
==========

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`RenderDataExtension<class_RenderDataExtension>`, :ref:`RenderDataRD<class_RenderDataRD>`

Абстрактный объект данных рендеринга, содержит данные кадра, относящиеся к рендерингу одного кадра области просмотра.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный объект данных рендеринга, существует на протяжении рендеринга одного окна просмотра.

\ **Примечание:** Это внутренний объект сервера рендеринга, не создавайте его из скрипта.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_camera_attributes<class_RenderData_method_get_camera_attributes>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_environment<class_RenderData_method_get_environment>`\ (\ ) |const|                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`get_render_scene_buffers<class_RenderData_method_get_render_scene_buffers>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`get_render_scene_data<class_RenderData_method_get_render_scene_data>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RenderData_method_get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_attributes**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_camera_attributes>`

Возвращает :ref:`RID<class_RID>` объекта атрибутов камеры в :ref:`RenderingServer<class_RenderingServer>`, используемом для рендеринга этой области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_environment**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_environment>`

Возвращает :ref:`RID<class_RID>` объекта среды в :ref:`RenderingServer<class_RenderingServer>`, используемого для рендеринга этой области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **get_render_scene_buffers**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_buffers>`

Возвращает объект :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`, управляющий буферами сцены для рендеринга этой области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **get_render_scene_data**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_data>`

Возвращает объект :ref:`RenderSceneData<class_RenderSceneData>`, управляющий данными сцены этих кадров.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
