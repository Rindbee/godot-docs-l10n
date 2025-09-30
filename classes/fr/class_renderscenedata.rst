:github_url: hide

.. _class_RenderSceneData:

RenderSceneData
===============

**Hérite de :** :ref:`Object<class_Object>`

**Hérité de:** :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`, :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`

Objet de données de rendu abstrait, détient des données de scène relatives au rendu d'une unique trame d'un viewport.

.. rst-class:: classref-introduction-group

Description
-----------

Objet de données abstrait, existe pour la durée du rendu d'un seul viewport.

\ **Note :** Il s'agit d'un objet de serveur de rendu interne, ne l'instanciez pas depuis un script.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_cam_projection<class_RenderSceneData_method_get_cam_projection>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_cam_transform<class_RenderSceneData_method_get_cam_transform>`\ (\ ) |const|                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_uniform_buffer<class_RenderSceneData_method_get_uniform_buffer>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_view_count<class_RenderSceneData_method_get_view_count>`\ (\ ) |const|                                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_view_eye_offset<class_RenderSceneData_method_get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_view_projection<class_RenderSceneData_method_get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RenderSceneData_method_get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_cam_projection**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_projection>`

Renvoie la projection de la caméra utilisée pour rendre cette trame.

\ **Note :** Si plus d'une vue est rendue, cela renverra une projection combinée.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_cam_transform**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_transform>`

Renvoie la transformation de la caméra utilisée pour rendre cette trame.

\ **Note :** Si plus d'une vue est rendue, cela renverra une transformation centrée.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_uniform_buffer**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_uniform_buffer>`

Renvoie le :ref:`RID<class_RID>` du buffer uniforme contenant les données de scène en tant qu'UBO (Uniform Buffer Object, litt. Objet Buffer Uniforme).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_count>`

Renvoie le nombre de vues rendues.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_eye_offset>`

Returns the eye offset per view used to render this frame. This is the offset between our camera transform and the eye transform.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_projection>`

Returns the view projection per view used to render this frame.

\ **Note:** If a single view is rendered, this returns the camera projection. If more than one view is rendered, this will return a projection for the given view including the eye offset.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
