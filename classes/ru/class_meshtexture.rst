:github_url: hide

.. _class_MeshTexture:

MeshTexture
===========

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Простая текстура, которая использует сетку для отрисовки.

.. rst-class:: classref-introduction-group

Описание
----------------

Простая текстура, которая использует сетку для рисования самой себя. Она ограничена, поскольку флаги не могут быть изменены, а рисование областей не поддерживается.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`base_texture<class_MeshTexture_property_base_texture>` |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`image_size<class_MeshTexture_property_image_size>`     | ``Vector2(0, 0)``                                                                      |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshTexture_property_mesh>`                 |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MeshTexture_property_base_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **base_texture** :ref:`🔗<class_MeshTexture_property_base_texture>`

.. rst-class:: classref-property-setget

- |void| **set_base_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_base_texture**\ (\ )

Устанавливает базовую текстуру, которую сетка будет использовать для отрисовки.

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_image_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **image_size** = ``Vector2(0, 0)`` :ref:`🔗<class_MeshTexture_property_image_size>`

.. rst-class:: classref-property-setget

- |void| **set_image_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_image_size**\ (\ )

Устанавливает размер изображения, необходимый для справки.

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshTexture_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

Устанавливает сетку, используемую для рисования. Это должна быть сетка с использованием 2D вершин.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
