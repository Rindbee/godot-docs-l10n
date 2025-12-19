:github_url: hide

.. _class_CameraAttributes:

CameraAttributes
================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>`, :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`

Classe parente pour les réglages de caméra.

.. rst-class:: classref-introduction-group

Description
-----------

Contrôle des attributs spécifiques à la caméra tels que la profondeur de champ et la redéfinition de l'exposition.

Lorsqu'elle est utilisée dans un :ref:`WorldEnvironment<class_WorldEnvironment>`, elle fournit des paramètres par défaut pour l'exposition, l'exposition automatique et la profondeur de champ qui seront utilisés par toutes les caméras sans leurs propres **CameraAttributes**, y compris la caméra de l'éditeur. Lorsqu'elle est utilisée dans une :ref:`Camera3D<class_Camera3D>`, elle remplacera tout **CameraAttributes** défini dans le :ref:`WorldEnvironment<class_WorldEnvironment>`. Lorsqu'elle est utilisée dans :ref:`VoxelGI<class_VoxelGI>` ou :ref:`LightmapGI<class_LightmapGI>`, seuls les paramètres d'exposition seront utilisés.

Voir aussi :ref:`Environment<class_Environment>` pour les paramètres généraux de l'environnement 3D.

Il s'agit d'une classe virtuelle pure héritée par :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>` et :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_scale<class_CameraAttributes_property_auto_exposure_scale>`     | ``0.4``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_speed<class_CameraAttributes_property_auto_exposure_speed>`     | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_multiplier<class_CameraAttributes_property_exposure_multiplier>`     | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_sensitivity<class_CameraAttributes_property_exposure_sensitivity>`   | ``100.0`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CameraAttributes_property_auto_exposure_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_exposure_enabled** = ``false`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_exposure_enabled**\ (\ )

Si ``true``, active le mode d'exposition automatique du tonemapping du rendu de scène. Si ``true``, le moteur de rendu déterminera automatiquement le réglage d'exposition pour s'adapter à l'éclairage de la scène et à la lumière observée.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_scale** = ``0.4`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_scale>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_scale**\ (\ )

L'échelle de l'effet d'exposition automatique. Affecte l'intensité de l'exposition automatique.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_speed** = ``0.5`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_speed>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_speed**\ (\ )

La vitesse de l'effet d'exposition automatique. Affecte le temps nécessaire pour que la caméra effectue l'exposition automatique.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_multiplier** = ``1.0`` :ref:`🔗<class_CameraAttributes_property_exposure_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_multiplier**\ (\ )

Multiplicateur pour la quantité d'exposition. Une valeur plus élevée conduit à une image plus brillante.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_sensitivity** = ``100.0`` :ref:`🔗<class_CameraAttributes_property_exposure_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_sensitivity**\ (\ )

Sensibilité des capteurs de caméra, mesurée en ISO. Une sensibilité plus élevée conduit à une image plus brillante.

Si :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` vaut ``true``, cela peut être utilisé comme méthode de compensation de l'exposition, doubler la valeur augmentera la valeur d'exposition (mesurée en EV100) d'un IL (Indice de lumination).

\ **Note :** Seulement disponible lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` est activé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
