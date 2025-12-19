:github_url: hide

.. _class_SkeletonProfile:

SkeletonProfile
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`

Classe de base pour un profil d'un squelette virtuel utilisé comme cible pour le re-ciblage.

.. rst-class:: classref-introduction-group

Description
-----------

Cette ressource est utilisée dans :ref:`EditorScenePostImport<class_EditorScenePostImport>`. Certains paramètres font référence aux os dans :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`Skin<class_Skin>`, :ref:`Animation<class_Animation>`, et certains autres nœuds sont réécrits en fonction des paramètres du **SkeletonProfile**.

\ **Note :** Ces paramètres ne doivent être définis que lors de la création d'un profil personnalisé. Dans :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`, ils sont définis en interne comme des valeurs en lecture seule.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Re-ciblage des squelettes 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`bone_size<class_SkeletonProfile_property_bone_size>`             | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`group_size<class_SkeletonProfile_property_group_size>`           | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`root_bone<class_SkeletonProfile_property_root_bone>`             | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`scale_base_bone<class_SkeletonProfile_property_scale_base_bone>` | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`find_bone<class_SkeletonProfile_method_find_bone>`\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_name<class_SkeletonProfile_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_parent<class_SkeletonProfile_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_tail<class_SkeletonProfile_method_get_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group<class_SkeletonProfile_method_get_group>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group_name<class_SkeletonProfile_method_get_group_name>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_handle_offset<class_SkeletonProfile_method_get_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                    | :ref:`get_reference_pose<class_SkeletonProfile_method_get_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TailDirection<enum_SkeletonProfile_TailDirection>` | :ref:`get_tail_direction<class_SkeletonProfile_method_get_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                        | :ref:`get_texture<class_SkeletonProfile_method_get_texture>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_required<class_SkeletonProfile_method_is_required>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_name<class_SkeletonProfile_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_parent<class_SkeletonProfile_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_tail<class_SkeletonProfile_method_set_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group<class_SkeletonProfile_method_set_group>`\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ )                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group_name<class_SkeletonProfile_method_set_group_name>`\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ )                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_handle_offset<class_SkeletonProfile_method_set_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_reference_pose<class_SkeletonProfile_method_set_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ )                         |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_required<class_SkeletonProfile_method_set_required>`\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ )                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_tail_direction<class_SkeletonProfile_method_set_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_texture<class_SkeletonProfile_method_set_texture>`\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                            |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_SkeletonProfile_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_SkeletonProfile_signal_profile_updated>`

This signal is emitted when change the value in profile. This is used to update key name in the :ref:`BoneMap<class_BoneMap>` and to redraw the :ref:`BoneMap<class_BoneMap>` editor.

\ **Note:** This signal is not connected directly to editor to simplify the reference, instead it is passed on to editor through the :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SkeletonProfile_TailDirection:

.. rst-class:: classref-enumeration

enum **TailDirection**: :ref:`🔗<enum_SkeletonProfile_TailDirection>`

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_AVERAGE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_AVERAGE_CHILDREN** = ``0``

Direction vers les coordonnées moyennes des os enfants.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_SPECIFIC_CHILD:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_SPECIFIC_CHILD** = ``1``

Direction vers les coordonnées de l'os enfant spécifié.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_END** = ``2``

La direction n'est pas calculée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonProfile_property_bone_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_bone_size>`

.. rst-class:: classref-property-setget

- |void| **set_bone_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_size**\ (\ )

La quantité d'os dans la section re-ciblage de l'éditeur :ref:`BoneMap<class_BoneMap>`. Par exemple, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` a 56 os.

La taille des éléments dans la :ref:`BoneMap<class_BoneMap>` set met à jour lors de la modification de cette propriété dans son **SkeletonProfile** assigné.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_group_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **group_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_group_size>`

.. rst-class:: classref-property-setget

- |void| **set_group_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_group_size**\ (\ )

The amount of groups of bones in retargeting section's :ref:`BoneMap<class_BoneMap>` editor. For example, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` has 4 groups.

This property exists to separate the bone list into several sections in the editor.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Un nom d'os qui sera utilisé comme os racine dans :ref:`AnimationTree<class_AnimationTree>`. Cela devrait être l'os du parent des hanches qui existe à l'origine du monde.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_scale_base_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **scale_base_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_scale_base_bone>`

.. rst-class:: classref-property-setget

- |void| **set_scale_base_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_scale_base_bone**\ (\ )

Un nom d'os qui utilisera la hauteur du modèle comme coefficient de normalisation. Par exemple, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` le définit comme ``Hips``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonProfile_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_find_bone>`

Renvoie l'index de l'os dont le nom correspond à ``bone_name``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_name>`

Renvoie le nom de l'os à l'index ``bone_idx`` qui sera le nom de la clé dans la :ref:`BoneMap<class_BoneMap>`.

Dans le processus de re-ciblage, le nom d'os renvoyé est le nom de l'os du squelette cible.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_parent>`

Renvoie le nom de l'os qui est le parent de l'os à l'index ``bone_idx``. Le résultat est vide si l'os n'a pas de parent.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_tail:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_tail>`

Renvoie le nom de l'os qui est la queue de l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group>`

Renvoie le groupe de l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group_name**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group_name>`

Renvoie le nom du groupe à l'index ``group_idx`` qui sera le groupe de dessin dans l'éditeur :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_handle_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_handle_offset>`

Renvoie le décalage de l'os à l'index ``bone_idx`` qui sera la position du bouton dans l'éditeur :ref:`BoneMap<class_BoneMap>`.

Il s'agit du décalage avec l'origine du coin supérieur gauche du carré.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_reference_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_reference_pose>`

Renvoie la transformation de la pose de référence pour l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_tail_direction:

.. rst-class:: classref-method

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **get_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_tail_direction>`

Renvoie la direction de queue de l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_texture>`

Returns the texture of the group at ``group_idx`` that will be the drawing group background image in the :ref:`BoneMap<class_BoneMap>` editor.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_is_required:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_required**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_is_required>`

Returns whether the bone at ``bone_idx`` is required for retargeting.

This value is used by the bone map editor. If this method returns ``true``, and no bone is assigned, the handle color will be red on the bone map editor.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_name>`

Définit le nom de l'os à l'index ``bone_idx`` qui sera le nom de la clé dans la :ref:`BoneMap<class_BoneMap>`.

Dans le processus de re-ciblage, le nom d'os défini est le nom de l'os du squelette cible.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_parent>`

Définit l'os avec le nom ``bone_parent`` comme le parent de l'os à l'index ``bone_idx``. Si une chaîne vide est passée, l'os n'a pas de parent.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_tail:

.. rst-class:: classref-method

|void| **set_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_tail>`

Définit l'os avec le nom ``bone_tail`` comme queue de l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group>`

Définit le groupe de l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group_name:

.. rst-class:: classref-method

|void| **set_group_name**\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group_name>`

Définit le nom du groupe à l'index ``group_idx`` qui sera le groupe de dessin dans l'éditeur :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_handle_offset:

.. rst-class:: classref-method

|void| **set_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_handle_offset>`

Définit le décalage de l'os à l'index ``bone_idx`` qui sera la position du bouton dans l'éditeur :ref:`BoneMap<class_BoneMap>`.

Il s'agit du décalage avec l'origine du coin supérieur gauche du carré.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_reference_pose:

.. rst-class:: classref-method

|void| **set_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_reference_pose>`

Définit la transformation de la pose de référence pour l'os à l'index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_required:

.. rst-class:: classref-method

|void| **set_required**\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_required>`

Définit le statut de nécessité pour l'os à l'index ``bone_idx`` à ``required``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_tail_direction:

.. rst-class:: classref-method

|void| **set_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_tail_direction>`

Sets the tail direction of the bone at ``bone_idx``.

\ **Note:** This only specifies the method of calculation. The actual coordinates required should be stored in an external skeleton, so the calculation itself needs to be done externally.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_texture>`

Sets the texture of the group at ``group_idx`` that will be the drawing group background image in the :ref:`BoneMap<class_BoneMap>` editor.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
