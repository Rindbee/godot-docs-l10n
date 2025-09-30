:github_url: hide

.. _class_CameraTexture:

CameraTexture
=============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture fournie par un :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cette texture donne accès à la texture de la caméra fournie par :ref:`CameraFeed<class_CameraFeed>`.

\ **Note :** Beaucoup de caméras fournissent des images au format YCbCr qui doivent être converties dans un shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`camera_feed_id<class_CameraTexture_property_camera_feed_id>`     | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`camera_is_active<class_CameraTexture_property_camera_is_active>` | ``false``                                                                              |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | resource_local_to_scene                                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`FeedImage<enum_CameraServer_FeedImage>` | :ref:`which_feed<class_CameraTexture_property_which_feed>`             | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CameraTexture_property_camera_feed_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera_feed_id** = ``0`` :ref:`🔗<class_CameraTexture_property_camera_feed_id>`

.. rst-class:: classref-property-setget

- |void| **set_camera_feed_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera_feed_id**\ (\ )

L'identifiant du :ref:`CameraFeed<class_CameraFeed>` pour lequel la caméra doit être affichée.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_camera_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_is_active** = ``false`` :ref:`🔗<class_CameraTexture_property_camera_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_camera_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_camera_active**\ (\ )

Propriété utile qui donne accès à la propriété active du :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_which_feed:

.. rst-class:: classref-property

:ref:`FeedImage<enum_CameraServer_FeedImage>` **which_feed** = ``0`` :ref:`🔗<class_CameraTexture_property_which_feed>`

.. rst-class:: classref-property-setget

- |void| **set_which_feed**\ (\ value\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )
- :ref:`FeedImage<enum_CameraServer_FeedImage>` **get_which_feed**\ (\ )

L'image du :ref:`CameraFeed<class_CameraFeed>` pour laquelle nous voulons accéder, important si l'image de la caméra est divisée en composants Y et CbCr.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
