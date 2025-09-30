:github_url: hide

.. _class_ResourceImporterBitMap:

ResourceImporterBitMap
======================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe une ressource :ref:`BitMap<class_BitMap>` (tableau 2D de valeurs booléennes).

.. rst-class:: classref-introduction-group

Description
-----------

Les ressources :ref:`BitMap<class_BitMap>` sont généralement utilisées comme masques de clic dans :ref:`TextureButton<class_TextureButton>` et :ref:`TouchScreenButton<class_TouchScreenButton>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des images <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`create_from<class_ResourceImporterBitMap_property_create_from>` | ``0``   |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`     | ``0.5`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterBitMap_property_create_from:

.. rst-class:: classref-property

:ref:`int<class_int>` **create_from** = ``0`` :ref:`🔗<class_ResourceImporterBitMap_property_create_from>`

The data source to use for generating the bitmap.

\ **Black & White:** Pixels whose HSV value is greater than the :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` will be considered as "enabled" (bit is ``true``). If the pixel is lower than or equal to the threshold, it will be considered as "disabled" (bit is ``false``).

\ **Alpha:** Pixels whose alpha value is greater than the :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` will be considered as "enabled" (bit is ``true``). If the pixel is lower than or equal to the threshold, it will be considered as "disabled" (bit is ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBitMap_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.5`` :ref:`🔗<class_ResourceImporterBitMap_property_threshold>`

The threshold to use to determine which bits should be considered enabled or disabled. See also :ref:`create_from<class_ResourceImporterBitMap_property_create_from>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
