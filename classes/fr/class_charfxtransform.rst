:github_url: hide

.. _class_CharFXTransform:

CharFXTransform
===============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contrôle le rendu d'un caractère individuel dans un :ref:`RichTextEffect<class_RichTextEffect>`.

.. rst-class:: classref-introduction-group

Description
-----------

En réglant les diverses propriétés de cet objet, il est possible de contrôler le rendu de caractères individuels dans un :ref:`RichTextEffect<class_RichTextEffect>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`BBCode dans RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`color<class_CharFXTransform_property_color>`                   | ``Color(0, 0, 0, 1)``             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`elapsed_time<class_CharFXTransform_property_elapsed_time>`     | ``0.0``                           |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`env<class_CharFXTransform_property_env>`                       | ``{}``                            |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`font<class_CharFXTransform_property_font>`                     | ``RID()``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_count<class_CharFXTransform_property_glyph_count>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_flags<class_CharFXTransform_property_glyph_flags>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_index<class_CharFXTransform_property_glyph_index>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CharFXTransform_property_offset>`                 | ``Vector2(0, 0)``                 |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`outline<class_CharFXTransform_property_outline>`               | ``false``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2i<class_Vector2i>`       | :ref:`range<class_CharFXTransform_property_range>`                   | ``Vector2i(0, 0)``                |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`relative_index<class_CharFXTransform_property_relative_index>` | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CharFXTransform_property_transform>`           | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CharFXTransform_property_visible>`               | ``true``                          |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CharFXTransform_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CharFXTransform_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La couleur utilisée pour afficher le caractère.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_elapsed_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **elapsed_time** = ``0.0`` :ref:`🔗<class_CharFXTransform_property_elapsed_time>`

.. rst-class:: classref-property-setget

- |void| **set_elapsed_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_elapsed_time**\ (\ )

Le temps écoulé depuis que le :ref:`RichTextLabel<class_RichTextLabel>` ait été ajouté à l'arborescence de scène (en secondes). Le temps s’arrête lorsque le :ref:`RichTextLabel<class_RichTextLabel>` est en pause (voir :ref:`Node.process_mode<class_Node_property_process_mode>`). Réinitialisé lorsque le texte du :ref:`RichTextLabel<class_RichTextLabel>` est modifié.

\ **Note :** Le temps continue de s'écouler même lorsque le :ref:`RichTextLabel<class_RichTextLabel>` est caché.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_env:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **env** = ``{}`` :ref:`🔗<class_CharFXTransform_property_env>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_environment**\ (\ )

Contient les arguments passés à la balise BBCode d'ouverture. Par défaut, les arguments sont des chaînes de caractères ; si leur contenu correspond à un type tel que :ref:`bool<class_bool>`, :ref:`int<class_int>` ou :ref:`float<class_float>`, ils sont automatiquement convertis. Les codes couleur de la forme ``#rrvvbb`` ou ``#rvb`` sont convertis en une couleur (:ref:`Color<class_Color>`) opaque. Les arguments ne doivent pas contenir d'espaces, même s'ils sont entre guillemets. Si il y en a, les guillemets seront également présents dans la chaîne de caractères finale.

Par exemple, la balise BBCode d'ouverture ``[exemple foo=bonjour bar=true baz=42 color=#ffffff]`` va correspondre au dictionnaire (:ref:`Dictionary<class_Dictionary>`) suivant :

::

    {"foo": "bonjour", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_font:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **font** = ``RID()`` :ref:`🔗<class_CharFXTransform_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_font**\ (\ )

RID du :ref:`TextServer<class_TextServer>` de la police de caractère utilisée pour rendre le glyphe, cette valeur peut être utilisée avec les méthodes de ``TextServer.font_*`` pour récupérer les informations de police de caractère.

\ **Remarque :** Lecture seule. Définir cette propriété n'affectera pas le dessin.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_count** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_count>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_count**\ (\ )

Number of glyphs in the grapheme cluster. This value is set in the first glyph of a cluster.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_flags** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_flags>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_flags**\ (\ )

Options des glyphes. Voir :ref:`GraphemeFlag<enum_TextServer_GraphemeFlag>` pour plus d'informations.

\ **Remarque :** Lecture seule. Définir cette propriété n'affectera pas le dessin.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_index>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_index**\ (\ )

Index de glyphes spécifiques à :ref:`font<class_CharFXTransform_property_font>`. Si vous souhaitez remplacer ce glyphe, utilisez :ref:`TextServer.font_get_glyph_index()<class_TextServer_method_font_get_glyph_index>` avec :ref:`font<class_CharFXTransform_property_font>` pour recevoir un nouvel index de glyphe pour un caractère unique.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CharFXTransform_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage dans la position avec laquelle le caractère va être affiché (en pixels).

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_outline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **outline** = ``false`` :ref:`🔗<class_CharFXTransform_property_outline>`

.. rst-class:: classref-property-setget

- |void| **set_outline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_outline**\ (\ )

If ``true``, FX transform is called for outline drawing.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_range:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **range** = ``Vector2i(0, 0)`` :ref:`🔗<class_CharFXTransform_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_range**\ (\ )

Absolute character range in the string, corresponding to the glyph.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_relative_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **relative_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_relative_index>`

.. rst-class:: classref-property-setget

- |void| **set_relative_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_relative_index**\ (\ )

Le décalage de caractère du glyphe, relatif au bloc personnalisé :ref:`RichTextEffect<class_RichTextEffect>` actuel.

\ **Note :** En lecture seule. Définir cette propriété n'affectera pas le dessin.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CharFXTransform_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La transformation actuelle du glyphe actuel. Elle peut être redéfinie (par exemple, en dirigeant la position et la rotation à partir d'une courbe). Vous pouvez également modifier la valeur existante pour appliquer des transformations par dessus d'autres effets.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CharFXTransform_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visibility**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si ``true``, le caractère sera affiché. Si ``false``, le caractère sera caché. Les caractères autour des caractères cachés seront réorganisés pour prendre leur place. Si ce n'est pas ce qui est voulu, réglez leur couleur (:ref:`color<class_CharFXTransform_property_color>`) sur ``Color(1, 1, 1, 0)`` à la place.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
