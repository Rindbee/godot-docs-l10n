:github_url: hide

.. _class_NoiseTexture3D:

NoiseTexture3D
==============

**Hérite de :** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une texture 3D remplie de bruit généré par un objet :ref:`Noise<class_Noise>`.

.. rst-class:: classref-introduction-group

Description
-----------

Utilise la bibliothèque :ref:`FastNoiseLite<class_FastNoiseLite>` ou d'autres générateurs de bruit pour remplir les données de texture à votre taille désirée.

La classe utilise des :ref:`Thread<class_Thread>`\ s pour générer les données de texture en interne, donc :ref:`Texture3D.get_data()<class_Texture3D_method_get_data>` peut renvoyer ``null`` si le processus de génération n'est pas encore terminé. Dans ce cas, vous devez attendre que la texture soit générée avant d'accéder à l'image :

::

    var texture = NoiseTexture3D.new()
    texture.noise = FastNoiseLite.new()
    await texture.changed
    var donnees = texture.get_data()

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture3D_property_color_ramp>`                     |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`depth<class_NoiseTexture3D_property_depth>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture3D_property_height>`                             | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture3D_property_invert>`                             | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture3D_property_noise>`                               |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture3D_property_normalize>`                       | ``true``  |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture3D_property_seamless>`                         | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` | ``0.1``   |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture3D_property_width>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_NoiseTexture3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Un :ref:`Gradient<class_Gradient>` qui est utilisé pour associer la luminance de chaque pixel à une valeur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

Profondeur de la texture générée (en pixels).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Hauteur de la texture générée (en pixels).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

Si ``true``, inverse la texture de bruit. Le blanc devient noir, le noir devient blanc.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture3D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

L'instance de l'objet :ref:`Noise<class_Noise>`.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture3D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

Si ``true``, l'image de bruit provenant du générateur de bruit est normalisée à la plage ``0.0`` à ``1.0``.

Retirer la normalisation peut affecter le contraste et vous permet de générer des textures de bruit raccordables non répétées.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

If ``true``, a seamless texture is requested from the :ref:`Noise<class_Noise>` resource.

\ **Note:** Seamless noise textures may take longer to generate and/or can have a lower contrast compared to non-seamless noise depending on the used :ref:`Noise<class_Noise>` resource. This is because some implementations use higher dimensions for generating seamless noise.

\ **Note:** The default :ref:`FastNoiseLite<class_FastNoiseLite>` implementation uses the fallback path for seamless generation. If using a :ref:`width<class_NoiseTexture3D_property_width>`, :ref:`height<class_NoiseTexture3D_property_height>` or :ref:`depth<class_NoiseTexture3D_property_depth>` lower than the default, you may need to increase :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` to make seamless blending more effective.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture3D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

Utilisé pour l'implémentation par défaut/de repli de la génération de textures seamless (sans coutures). Il détermine la distance sur laquelle les coutures sont mélangées. Les valeurs élevées peuvent résulter en moins de détails et de contraste. Voir :ref:`Noise<class_Noise>` pour plus de détails.

\ **Note :** Si vous utilisez une largeur :ref:`width<class_NoiseTexture3D_property_width>`, une hauteur :ref:`height<class_NoiseTexture3D_property_height>` ou une pronfondeur :ref:`depth<class_NoiseTexture3D_property_depth>` inférieure à la valeur par défaut, vous devrez peut-être augmenter :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` pour rendre le mélange seamless plus efficace.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Largeur de la texture générée (en pixels).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
