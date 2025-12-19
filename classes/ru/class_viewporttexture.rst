:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет содержимое :ref:`Viewport<class_Viewport>` в виде динамической текстуры.

.. rst-class:: classref-introduction-group

Описание
----------------

A **ViewportTexture** provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic :ref:`Texture2D<class_Texture2D>`. This can be used to combine the rendering of :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` and :ref:`Node3D<class_Node3D>` nodes. For example, you can use this texture to display a 3D scene inside a :ref:`TextureRect<class_TextureRect>`, or a 2D overlay in a :ref:`Sprite3D<class_Sprite3D>`.

To get a **ViewportTexture** in code, use the :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` method on the target viewport.

\ **Note:** A **ViewportTexture** is always local to its scene (see :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). If the scene root is not ready, it may return incorrect data (see :ref:`Node.ready<class_Node_signal_ready>`).

\ **Note:** Instantiating scenes containing a high-resolution **ViewportTexture** may cause noticeable stutter.

\ **Note:** When using a :ref:`Viewport<class_Viewport>` with :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` set to ``true``, the returned texture will be an HDR image that uses linear encoding. This may look darker than normal when displayed directly on screen. To convert to nonlinear sRGB encoding, you can do the following:

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **Note:** Some nodes such as :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>`, and :ref:`PointLight2D<class_PointLight2D>` do not support using **ViewportTexture** directly. To use texture data from a **ViewportTexture** in these nodes, you need to create an :ref:`ImageTexture<class_ImageTexture>` by calling :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` on the **ViewportTexture** and passing the result to :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. This conversion is a slow operation, so it should not be performed every frame.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация графического интерфейса пользователя в 3D-окне просмотра <https://godotengine.org/asset-library/asset/2807>`__

- `Демонстрация 3D в 2D-виде <https://godotengine.org/asset-library/asset/2804>`__

- `Демонстрация 2D в 3D-виде <https://godotengine.org/asset-library/asset/2803>`__

- `Демонстрация масштабирования 3D-разрешения <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

Путь к узлу :ref:`Viewport<class_Viewport>` для отображения. Это относительно локального корня сцены (см. :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **не** к узлам, которые используют эту текстуру.

\ **Примечание:** В редакторе этот путь автоматически обновляется, когда целевой viewport или один из его предков переименовывается или перемещается. Во время выполнения этот путь может не обновляться автоматически, если корень сцены не может быть найден.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
