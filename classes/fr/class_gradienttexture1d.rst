:github_url: hide

.. _class_GradientTexture1D:

GradientTexture1D
=================

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une texture 1D qui utilise des couleurs obtenues à partir d'un :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une texture 1D qui obtient ses couleurs d'un :ref:`Gradient<class_Gradient>` pour remplir les données de la texture. La texture est remplie en échantillonnant le gradient pour chaque pixel. Par conséquent, la texture ne représente pas nécessairement une copie exacte du gradient, car il peut manquer quelques couleurs s'il n'y a pas assez de pixels. Voir aussi :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`CurveTexture<class_CurveTexture>` et :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`gradient<class_GradientTexture1D_property_gradient>` |                                                                                        |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_hdr<class_GradientTexture1D_property_use_hdr>`   | ``false``                                                                              |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_GradientTexture1D_property_width>`       | ``256``                                                                                |
   +---------------------------------+------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GradientTexture1D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture1D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

Le :ref:`Gradient<class_Gradient>` utilisé pour remplir la texture.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture1D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Si ``true``, la texture générée aura une gamme dynamique élevée (le format sera :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Cela permet aux effets de lueur de fonctionner si :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` est ``true``. Si ``false``, la texture générée utilisera une plage dynamique basse ; les couleurs trop lumineuses seront bornées (le format sera :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture1D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_GradientTexture1D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Le nombre d'échantillons de couleur qui seront obtenus à partir du :ref:`Gradient<class_Gradient>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
