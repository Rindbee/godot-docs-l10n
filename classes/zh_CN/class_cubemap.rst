:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Cubemap.xml.

.. _class_Cubemap:

Cubemap
=======

**继承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表立方体面的六个正方形纹理。通常用作天空盒。

.. rst-class:: classref-introduction-group

描述
----

A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see :ref:`ReflectionProbe<class_ReflectionProbe>`). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.

This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of **Cubemap** resources.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:

- `2×3 cubemap template (default layout option) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **Note:** Godot doesn't support using cubemaps in a :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`. To use a cubemap as a skybox, convert the default :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` to a :ref:`ShaderMaterial<class_ShaderMaterial>` using the **Convert to ShaderMaterial** resource dropdown option, then replace its code with the following:

.. code:: text

    shader_type sky;
    
    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;
    
    void sky() {
        // If importing a cubemap from another engine, you may need to flip one of the `EYEDIR` components below
        // by replacing it with `-EYEDIR`.
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

After replacing the shader code and saving, specify the imported Cubemap resource in the Shader Parameters section of the ShaderMaterial in the inspector.

Alternatively, you can use `this tool <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ to convert a cubemap to an equirectangular sky map and use :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` as usual.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Cubemap_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Cubemap_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Cubemap_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderCubemap<class_PlaceholderCubemap>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
