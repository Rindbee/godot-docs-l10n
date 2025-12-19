:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fusionne plusieurs nœuds 2D en une seule opération de dessin.

.. rst-class:: classref-introduction-group

Description
-----------

Les nœuds enfants :ref:`CanvasItem<class_CanvasItem>` d'un **CanvasGroup** sont dessinés comme un seul object. Cela permet par exemple de dessiner des nœuds 2D enchevêtrés sans mélange (activer la propriété :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` de **CanvasGroup** pour aboutir à cet effet).

\ **Remarque :** Le **CanvasGroup** utilise un shader pour lire depuis le tampon arrière pour dessiner ses enfants. Affecter un :ref:`Material<class_Material>` au **CanvasGroup** remplacera le shader de base. Pour dupliquer le comportement du shader de base dans un :ref:`Shader<class_Shader>` personnalisé, le code suivant peut être utilisé :

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Remarque :** Vu que **CanvasGroup** et :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` utilisent tous deux le tampon arrière, les enfants d'un **CanvasGroup** qui ont leur propriété :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` définie à toute valeur exceptée :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` ne fonctionneront pas correctement.

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

Définit la taille de la marge utilisée pour élargir le rectangle d’effacement de ce **CanvasGroup**. Cela étend l'aire du tampon arrière qui sera utilisée par le **CanvasGroup**. Une marge plus basse réduira l'aire du tampon arrière utilisée qui peut améliorer la performance, cependant si :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>` est activé, une marge basse causera des erreurs de mipmap aux extrémités du **CanvasGroup**. De ce fait, la valeur doit rester aussi basse que possible, mais peut être rehaussée si des artefacts sont visibles aux extrémités du groupe.

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
