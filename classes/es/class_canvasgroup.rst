:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Merges several 2D nodes into a single draw operation.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Child :ref:`CanvasItem<class_CanvasItem>` nodes of a **CanvasGroup** are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without blending (set :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` property of **CanvasGroup** to achieve this effect).

\ **Note:** The **CanvasGroup** uses a custom shader to read from the backbuffer to draw its children. Assigning a :ref:`Material<class_Material>` to the **CanvasGroup** overrides the builtin shader. To duplicate the behavior of the builtin shader in a custom :ref:`Shader<class_Shader>` use the following:

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Note:** Since **CanvasGroup** and :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` both utilize the backbuffer, children of a **CanvasGroup** who have their :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` set to anything other than :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` will not function correctly.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

Sets the size of the margin used to expand the clearing rect of this **CanvasGroup**. This expands the area of the backbuffer that will be used by the **CanvasGroup**. A smaller margin will reduce the area of the backbuffer used which can increase performance, however if :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>` is enabled, a small margin may result in mipmap errors at the edge of the **CanvasGroup**. Accordingly, this should be left as small as possible, but should be increased if artifacts appear along the edges of the canvas group.

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

Sets the size of a margin used to expand the drawable rect of this **CanvasGroup**. The size of the **CanvasGroup** is determined by fitting a rect around its children then expanding that rect by :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. This increases both the backbuffer area used and the area covered by the **CanvasGroup** both of which can reduce performance. This should be kept as small as possible and should only be expanded when an increased size is needed (e.g. for custom shader effects).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

If ``true``, calculates mipmaps for the backbuffer before drawing the **CanvasGroup** so that mipmaps can be used in a custom :ref:`ShaderMaterial<class_ShaderMaterial>` attached to the **CanvasGroup**. Generating mipmaps has a performance cost so this should not be enabled unless required.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
