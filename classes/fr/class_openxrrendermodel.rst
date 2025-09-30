:github_url: hide

.. _class_OpenXRRenderModel:

OpenXRRenderModel
=================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Ce nœud affichera un modèle de rendu OpenXR.

.. rst-class:: classref-introduction-group

Description
-----------

This node will display an OpenXR render model by accessing the associated GLTF and processes all animation data (if supported by the XR runtime).

Render models were introduced to allow showing the correct model for the controller (or other device) the user has in hand, since the OpenXR action map does not provide information about the hardware used by the user. Note that while the controller (or device) can be somewhat inferred by the bound action map profile, this is a dangerous approach as the user may be using hardware not known at time of development and OpenXR will simply simulate an available interaction profile.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>` | :ref:`render_model<class_OpenXRRenderModel_property_render_model>` | ``RID()`` |
   +-----------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_top_level_path<class_OpenXRRenderModel_method_get_top_level_path>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_OpenXRRenderModel_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ ) :ref:`🔗<class_OpenXRRenderModel_signal_render_model_top_level_path_changed>`

Emitted when the top level path of this render model has changed.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRRenderModel_property_render_model:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_model** = ``RID()`` :ref:`🔗<class_OpenXRRenderModel_property_render_model>`

.. rst-class:: classref-property-setget

- |void| **set_render_model**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_model**\ (\ )

The render model RID for the render model to load, as returned by :ref:`OpenXRRenderModelExtension.render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>` or :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRRenderModel_method_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_top_level_path**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModel_method_get_top_level_path>`

Returns the top level path related to this render model.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
