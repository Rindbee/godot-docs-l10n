:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**Hereda:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An array of :ref:`Cubemap<class_Cubemap>`\ s, stored together and with a single reference.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CubemapArray**\ s are made of an array of :ref:`Cubemap<class_Cubemap>`\ s. Like :ref:`Cubemap<class_Cubemap>`\ s, they are made of multiple textures, the amount of which must be divisible by 6 (one for each face of the cube).

The primary benefit of **CubemapArray**\ s is that they can be accessed in shader code using a single texture reference. In other words, you can pass multiple :ref:`Cubemap<class_Cubemap>`\ s into a shader using a single **CubemapArray**. :ref:`Cubemap<class_Cubemap>`\ s are allocated in adjacent cache regions on the GPU, which makes **CubemapArray**\ s the most efficient way to store multiple :ref:`Cubemap<class_Cubemap>`\ s.

Godot uses **CubemapArray**\ s internally for many effects, including the :ref:`Sky<class_Sky>` if you set :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` to ``true``.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a CubemapArray from code, use :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` on an instance of the CubemapArray class.

The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:

- `2×3 cubemap template (default layout option) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

Multiple layers are stacked on top of each other when using the default vertical import option (with the first layer at the top). Alternatively, you can choose a horizontal layout in the import options (with the first layer at the left).

\ **Note:** **CubemapArray** is not supported in the Compatibility renderer due to graphics API limitations.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

Creates a placeholder version of this resource (:ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
