:github_url: hide

.. _class_OpenXRSpatialQueryResultData:

OpenXRSpatialQueryResultData
============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the main query result data.

.. rst-class:: classref-introduction-group

Description
-----------

Object for storing the main query result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`. This must always be the first component requested.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_capacity<class_OpenXRSpatialQueryResultData_method_get_capacity>`\ (\ ) |const|                                        |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_entity_id<class_OpenXRSpatialQueryResultData_method_get_entity_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|       |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`get_entity_state<class_OpenXRSpatialQueryResultData_method_get_entity_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialQueryResultData_method_get_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capacity**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_capacity>`

Returns the number of entities that were retrieved.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_entity_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_id>`

Returns the entity id (``XrSpatialEntityIdEXT``) for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_state:

.. rst-class:: classref-method

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_entity_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_state>`

Returns the entity state for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
