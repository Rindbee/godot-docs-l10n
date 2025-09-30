:github_url: hide

.. _class_EditorResourcePreview:

EditorResourcePreview
=====================

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node used to generate previews of resources or files.

.. rst-class:: classref-introduction-group

Description
-----------

This node is used to generate previews for resources or files.

\ **Note:** This class shouldn't be instantiated directly. Instead, access the singleton using :ref:`EditorInterface.get_resource_previewer()<class_EditorInterface_method_get_resource_previewer>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_preview_generator<class_EditorResourcePreview_method_add_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                           |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`check_for_invalidation<class_EditorResourcePreview_method_check_for_invalidation>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_edited_resource_preview<class_EditorResourcePreview_method_queue_edited_resource_preview>`\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`queue_resource_preview<class_EditorResourcePreview_method_queue_resource_preview>`\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ )                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_preview_generator<class_EditorResourcePreview_method_remove_preview_generator>`\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ )                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorResourcePreview_signal_preview_invalidated:

.. rst-class:: classref-signal

**preview_invalidated**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_signal_preview_invalidated>`

Émis si un aperçu a été invalidé (c'est-à-dire changé). ``path`` correspond au chemin de l'aperçu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorResourcePreview_method_add_preview_generator:

.. rst-class:: classref-method

|void| **add_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_add_preview_generator>`

Créez un générateur d’aperçu personnalisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_check_for_invalidation:

.. rst-class:: classref-method

|void| **check_for_invalidation**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorResourcePreview_method_check_for_invalidation>`

Vérifiez si la ressource a changé, si oui, elle sera invalidée et le signal correspondant émis.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_edited_resource_preview:

.. rst-class:: classref-method

|void| **queue_edited_resource_preview**\ (\ resource\: :ref:`Resource<class_Resource>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_edited_resource_preview>`

Queue the ``resource`` being edited for preview. Once the preview is ready, the ``receiver``'s ``receiver_func`` will be called. The ``receiver_func`` must take the following four arguments: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` can be anything, and will be returned when ``receiver_func`` is called.

\ **Note:** If it was not possible to create the preview the ``receiver_func`` will still be called, but the preview will be ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_queue_resource_preview:

.. rst-class:: classref-method

|void| **queue_resource_preview**\ (\ path\: :ref:`String<class_String>`, receiver\: :ref:`Object<class_Object>`, receiver_func\: :ref:`StringName<class_StringName>`, userdata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorResourcePreview_method_queue_resource_preview>`

Queue a resource file located at ``path`` for preview. Once the preview is ready, the ``receiver``'s ``receiver_func`` will be called. The ``receiver_func`` must take the following four arguments: :ref:`String<class_String>` path, :ref:`Texture2D<class_Texture2D>` preview, :ref:`Texture2D<class_Texture2D>` thumbnail_preview, :ref:`Variant<class_Variant>` userdata. ``userdata`` can be anything, and will be returned when ``receiver_func`` is called.

\ **Note:** If it was not possible to create the preview the ``receiver_func`` will still be called, but the preview will be ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreview_method_remove_preview_generator:

.. rst-class:: classref-method

|void| **remove_preview_generator**\ (\ generator\: :ref:`EditorResourcePreviewGenerator<class_EditorResourcePreviewGenerator>`\ ) :ref:`🔗<class_EditorResourcePreview_method_remove_preview_generator>`

Supprime un générateur d’aperçu personnalisé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
