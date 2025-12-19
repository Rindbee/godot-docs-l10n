:github_url: hide

.. _class_OpenXRSpatialComponentBounded2DList:

OpenXRSpatialComponentBounded2DList
===================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries bounded2d result data.

.. rst-class:: classref-introduction-group

Description
-----------

Object for storing the queries 2D bounding rectangle result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_center_pose<class_OpenXRSpatialComponentBounded2DList_method_get_center_pose>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_size<class_OpenXRSpatialComponentBounded2DList_method_get_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialComponentBounded2DList_method_get_center_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_center_pose**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded2DList_method_get_center_pose>`

Returns the center of our bounding rectangle for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentBounded2DList_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded2DList_method_get_size>`

Returns the size of our bounding rectangle for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
