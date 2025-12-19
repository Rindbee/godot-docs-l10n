:github_url: hide

.. _class_EditorResourcePreviewGenerator:

EditorResourcePreviewGenerator
==============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Générateur personnalisé d'aperçus.

.. rst-class:: classref-introduction-group

Description
-----------

Code personnalisé pour générer des aperçus. Verifiez :ref:`EditorSettings.filesystem/file_dialog/thumbnail_size<class_EditorSettings_property_filesystem/file_dialog/thumbnail_size>` pour trouver une taille correcte à laquelle générer des aperçus.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_can_generate_small_preview<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`\ (\ ) |virtual| |const|                                                                                                             |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate<class_EditorResourcePreviewGenerator_private_method__generate>`\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const|  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate_from_path<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_generate_small_preview_automatically<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`\ (\ ) |virtual| |const|                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_handles<class_EditorResourcePreviewGenerator_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`request_draw_and_wait<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const|                                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_generate_small_preview**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`

If this function returns ``true``, the generator will call :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` or :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>` for small previews as well.

By default, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate**\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate>`

Generate a preview from a given resource with the specified size. This must always be implemented.

Returning ``null`` is an OK way to fail and let another generator take care.

Care must be taken because this function is always called from a thread (not the main thread).

\ ``metadata`` dictionary can be modified to store file-specific metadata that can be used in :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (like image size, sample length etc.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_from_path:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate_from_path**\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`

Generate a preview directly from a path with the specified size. Implementing this is optional, as default code will load and call :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`.

Returning ``null`` is an OK way to fail and let another generator take care.

Care must be taken because this function is always called from a thread (not the main thread).

\ ``metadata`` dictionary can be modified to store file-specific metadata that can be used in :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (like image size, sample length etc.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_generate_small_preview_automatically**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`

If this function returns ``true``, the generator will automatically generate the small previews from the normal preview texture generated by the methods :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` or :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`.

By default, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__handles>`

Returns ``true`` if your generator supports the resource of type ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_method_request_draw_and_wait:

.. rst-class:: classref-method

|void| **request_draw_and_wait**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`

Call from within :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` to request the rendering server draw to the ``viewport``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
