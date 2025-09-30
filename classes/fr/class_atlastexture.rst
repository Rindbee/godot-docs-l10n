:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une texture qui recadre une partie d'une autre Texture2D.

.. rst-class:: classref-introduction-group

Description
-----------

Ressource :ref:`Texture2D<class_Texture2D>` qui ne dessine qu'une partie de sa texture :ref:`atlas<class_AtlasTexture_property_atlas>`, tel que défini par la :ref:`region<class_AtlasTexture_property_region>`. Une marge supplémentaire :ref:`margin<class_AtlasTexture_property_margin>` peut également être définie, ce qui est utile pour les petits ajustements.

Plusieurs ressources **AtlasTexture** peuvent être découpées à partir du même :ref:`atlas<class_AtlasTexture_property_atlas>`. Tasser plusieurs textures plus petites dans une grande texture unique aide à optimiser les coûts en mémoire vidéo et les render calls.

\ **Note :** **AtlasTexture** ne peut pas être utilisée dans une :ref:`AnimatedTexture<class_AnimatedTexture>`, et ne se répétera pas correctement dans des nœuds tels que :ref:`TextureRect<class_TextureRect>` ou :ref:`Sprite2D<class_Sprite2D>`. Pour répéter une **AtlasTexture**, modifiez sa :ref:`region<class_AtlasTexture_property_region>` à la place.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

La texture qui contient l'atlas. Peut être de n'importe type héritant de :ref:`Texture2D<class_Texture2D>`, y compris une autre **AtlasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

Si ``true``, la zone située à l'extérieur de la :ref:`region<class_AtlasTexture_property_region>` est coupée pour éviter les saignements des pixels de texture environnants.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

La marge autour de la :ref:`region<class_AtlasTexture_property_region>`. Utile pour les petits ajustements. Si le paramètre :ref:`Rect2.size<class_Rect2_property_size>` de cette propriété ("w" et "h" dans l'éditeur) est défini, la texture dessiné est redimensionnée de sorte qu'elle corresponde à cette marge.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

La région utilisée pour dessiner l':ref:`atlas<class_AtlasTexture_property_atlas>`. Si l'une ou l'autre des dimensions de la région vaut ``0``, la valeur de la taille de l':ref:`atlas<class_AtlasTexture_property_atlas>` sera utilisée pour cet axe à la place.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
