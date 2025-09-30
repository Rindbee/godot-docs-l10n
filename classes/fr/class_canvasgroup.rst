:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fusionne plusieurs nœuds 2D en une seule opération de dessin.

.. rst-class:: classref-introduction-group

Description
-----------

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

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

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

Définit la taille d'une marge utilisée pour élargir le rectangle dessinable de ce **CanvasGroup**. La taille du **CanvasGroup** est déterminée en faisant correspondre un rectangle autour de ses enfants puis en élargissant ce rectangle par :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. Cela augmente à la fois la taille du backbuffer utilisée et la zone couverte par le **CanvasGroup**, ce qui peut réduire les performances. Cela devrait être maintenu aussi petit que possible et ne devrait être élargi que si une taille accrue est nécessaire (p. ex. pour des effets de shaders personnalisés).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

Si ``true``, calcule les mipmaps pour le backbuffer avant de dessiner le **CanvasGroup** afin que les mipmaps puissent être utilisées dans un :ref:`ShaderMaterial<class_ShaderMaterial>` personnalisé attaché au **CanvasGroup**. Générer des mipmaps a un coût sur les performances, cela ne devrait donc pas être activé sauf si nécessaire.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
