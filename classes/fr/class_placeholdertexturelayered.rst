:github_url: hide

.. _class_PlaceholderTextureLayered:

PlaceholderTextureLayered
=========================

**Hérite de :** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`PlaceholderCubemap<class_PlaceholderCubemap>`, :ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`, :ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`

Placeholder class for a 2-dimensional texture array.

.. rst-class:: classref-introduction-group

Description
-----------

This class is used when loading a project that uses a :ref:`TextureLayered<class_TextureLayered>` subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).

\ **Note:** This is not intended to be used as an actual texture for rendering. It is not guaranteed to work like one in shaders or materials (for example when calculating UV).

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`           | :ref:`layers<class_PlaceholderTextureLayered_property_layers>` | ``1``              |
   +---------------------------------+----------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_PlaceholderTextureLayered_property_size>`     | ``Vector2i(1, 1)`` |
   +---------------------------------+----------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PlaceholderTextureLayered_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_PlaceholderTextureLayered_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layers**\ (\ )

The number of layers in the texture array.

.. rst-class:: classref-item-separator

----

.. _class_PlaceholderTextureLayered_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(1, 1)`` :ref:`🔗<class_PlaceholderTextureLayered_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

The size of each texture layer (in pixels).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
