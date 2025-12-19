:github_url: hide

.. _class_RenderData:

RenderData
==========

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`RenderDataExtension<class_RenderDataExtension>`, :ref:`RenderDataRD<class_RenderDataRD>`

Abstract render data object, holds frame data related to rendering a single frame of a viewport.

.. rst-class:: classref-introduction-group

Description
-----------

Abstract render data object, exists for the duration of rendering a single viewport.

\ **Note:** This is an internal rendering server object, do not instantiate this from script.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_camera_attributes<class_RenderData_method_get_camera_attributes>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_environment<class_RenderData_method_get_environment>`\ (\ ) |const|                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`get_render_scene_buffers<class_RenderData_method_get_render_scene_buffers>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`get_render_scene_data<class_RenderData_method_get_render_scene_data>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RenderData_method_get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_attributes**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_camera_attributes>`

Returns the :ref:`RID<class_RID>` of the camera attributes object in the :ref:`RenderingServer<class_RenderingServer>` being used to render this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_environment**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_environment>`

Returns the :ref:`RID<class_RID>` of the environment object in the :ref:`RenderingServer<class_RenderingServer>` being used to render this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **get_render_scene_buffers**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_buffers>`

Returns the :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` object managing the scene buffers for rendering this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **get_render_scene_data**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_data>`

Returns the :ref:`RenderSceneData<class_RenderSceneData>` object managing this frames scene data.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
