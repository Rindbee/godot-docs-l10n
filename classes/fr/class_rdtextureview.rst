:github_url: hide

.. _class_RDTextureView:

RDTextureView
=============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture view (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Description
-----------

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format_override<class_RDTextureView_property_format_override>` | ``232`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_a<class_RDTextureView_property_swizzle_a>`             | ``6``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_b<class_RDTextureView_property_swizzle_b>`             | ``5``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_g<class_RDTextureView_property_swizzle_g>`             | ``4``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_r<class_RDTextureView_property_swizzle_r>`             | ``3``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RDTextureView_property_format_override:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format_override** = ``232`` :ref:`🔗<class_RDTextureView_property_format_override>`

.. rst-class:: classref-property-setget

- |void| **set_format_override**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format_override**\ (\ )

Optional override for the data format to return sampled values in. The corresponding :ref:`RDTextureFormat<class_RDTextureFormat>` must have had this added as a shareable format. The default value of :ref:`RenderingDevice.DATA_FORMAT_MAX<class_RenderingDevice_constant_DATA_FORMAT_MAX>` does not override the format.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_a:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_a** = ``6`` :ref:`🔗<class_RDTextureView_property_swizzle_a>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_a**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_a**\ (\ )

The channel to sample when sampling the alpha channel.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_b:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_b** = ``5`` :ref:`🔗<class_RDTextureView_property_swizzle_b>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_b**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_b**\ (\ )

The channel to sample when sampling the blue color channel.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_g:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_g** = ``4`` :ref:`🔗<class_RDTextureView_property_swizzle_g>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_g**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_g**\ (\ )

The channel to sample when sampling the green color channel.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_r:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_r** = ``3`` :ref:`🔗<class_RDTextureView_property_swizzle_r>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_r**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_r**\ (\ )

The channel to sample when sampling the red color channel.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
