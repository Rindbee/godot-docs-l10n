:github_url: hide

.. _class_PhysicalSkyMaterial:

PhysicalSkyMaterial
===================

**Hérite de :** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un matériau qui définit un ciel pour une ressource :ref:`Sky<class_Sky>` avec un ensemble de propriétés physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Le **PhysicalSkyMaterial** utilise le modèle de lumière du jour analytique de Preetham pour dessiner un ciel selon des propriétés physiques. Cela résulte en un ciel nettement plus réaliste que le :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, mais il est légèrement plus lent et moins flexible.

Le **PhysicalSkyMaterial** ne supporte qu'un seul soleil. La couleur, l'énergie et la direction du soleil sont prises de la première :ref:`DirectionalLight3D<class_DirectionalLight3D>` dans l’arborescence de scène.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PhysicalSkyMaterial_property_energy_multiplier>`       | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_color<class_PhysicalSkyMaterial_property_ground_color>`                 | ``Color(0.1, 0.07, 0.034, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_coefficient<class_PhysicalSkyMaterial_property_mie_coefficient>`           | ``0.005``                        |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`mie_color<class_PhysicalSkyMaterial_property_mie_color>`                       | ``Color(0.69, 0.729, 0.812, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_eccentricity<class_PhysicalSkyMaterial_property_mie_eccentricity>`         | ``0.8``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`night_sky<class_PhysicalSkyMaterial_property_night_sky>`                       |                                  |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`rayleigh_coefficient<class_PhysicalSkyMaterial_property_rayleigh_coefficient>` | ``2.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`rayleigh_color<class_PhysicalSkyMaterial_property_rayleigh_color>`             | ``Color(0.3, 0.405, 0.6, 1)``    |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_disk_scale<class_PhysicalSkyMaterial_property_sun_disk_scale>`             | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`turbidity<class_PhysicalSkyMaterial_property_turbidity>`                       | ``10.0``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_PhysicalSkyMaterial_property_use_debanding>`               | ``true``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicalSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

Le multiplicateur de luminosité générale du ciel. Des valeurs plus élevées résulteront en un ciel plus lumineux.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_ground_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_color** = ``Color(0.1, 0.07, 0.034, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_ground_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_color**\ (\ )

Module la :ref:`Color<class_Color>` sur la moitié inférieure du ciel pour représenter le sol.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_coefficient** = ``0.005`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_mie_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_coefficient**\ (\ )

Contrôle la force de la `diffusion de Mie <https://fr.wikipedia.org/wiki/Th%C3%A9orie_de_Mie>`__ pour le ciel. La diffusion de Mie résulte de la lumière entrant en collision avec des particules plus grandes (comme l'eau). Sur la terre, la diffusion de Mie résulte en une couleur blanchâtre autour du soleil et de l'horizon.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **mie_color** = ``Color(0.69, 0.729, 0.812, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_color>`

.. rst-class:: classref-property-setget

- |void| **set_mie_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_mie_color**\ (\ )

Contrôle la :ref:`Color<class_Color>` de la `diffusion de Mie <https://fr.wikipedia.org/wiki/Th%C3%A9orie_de_Mie>`__. Bien que non physiquement valide, cela permet la création de planètes extraterrestres.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_eccentricity:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_eccentricity** = ``0.8`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_eccentricity>`

.. rst-class:: classref-property-setget

- |void| **set_mie_eccentricity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_eccentricity**\ (\ )

Contrôle la direction de la `diffusion de Mie <https://fr.wikipedia.org/wiki/Th%C3%A9orie_de_Mie>`__. Une valeur de ``1`` signifie que lorsque la lumière frappe une particule, elle la traverse sans redirection. Une valeur de ``-1`` signifie que toute la lumière est dispersée en arrière.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_night_sky:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **night_sky** :ref:`🔗<class_PhysicalSkyMaterial_property_night_sky>`

.. rst-class:: classref-property-setget

- |void| **set_night_sky**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_night_sky**\ (\ )

:ref:`Texture2D<class_Texture2D>` pour le ciel nocturne. Ceci est ajouté au ciel, donc s’il est assez lumineux, il peut être visible pendant la journée.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **rayleigh_coefficient** = ``2.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rayleigh_coefficient**\ (\ )

Contrôle la force de la `diffusion Rayleigh <https://fr.wikipedia.org/wiki/Diffusion_Rayleigh>`__. La diffusion Rayleigh résulte en la collision de la lumière avec de petites particules. Il est responsable de la couleur bleue du ciel.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **rayleigh_color** = ``Color(0.3, 0.405, 0.6, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_color>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_rayleigh_color**\ (\ )

Contrôle la :ref:`Color<class_Color>` de la `diffusion Rayleigh <https://en.wikipedia.org/wiki/Rayleigh_scattering>`__. Bien que non physiquement valide, cela permet la création de planètes extraterrestres. Par exemple, définir ceci à une :ref:`Color<class_Color>` rouge se traduit par une atmosphère ressemblant à Mars avec un coucher de soleil bleu correspondant.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_sun_disk_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_disk_scale** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_sun_disk_scale>`

.. rst-class:: classref-property-setget

- |void| **set_sun_disk_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_disk_scale**\ (\ )

Définit la taille du disque du soleil. La valeur par défaut est basée sur la taille perçue du Soleil depuis la Terre.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_turbidity:

.. rst-class:: classref-property

:ref:`float<class_float>` **turbidity** = ``10.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_turbidity>`

.. rst-class:: classref-property-setget

- |void| **set_turbidity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_turbidity**\ (\ )

Définit l'épaisseur de l'atmosphère. Une turbidité élevée crée une atmosphère brumeuse, tandis qu'une turbidité basse résulte en une atmosphère plus claire.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_PhysicalSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

Si ``true``, active le debanding. Le debanding ajoute une petite quantité de bruit qui aide à réduire les bandes qui apparaissent suite aux changements lisses de couleur dans le ciel.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
