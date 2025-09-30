:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A reference-counted holder object for a skeleton RID used in the :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

Description
-----------

An internal object containing a mapping from a :ref:`Skin<class_Skin>` used within the context of a particular :ref:`MeshInstance3D<class_MeshInstance3D>` to refer to the skeleton's :ref:`RID<class_RID>` in the RenderingServer.

See also :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` and :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Note that despite the similar naming, the skeleton RID used in the :ref:`RenderingServer<class_RenderingServer>` does not have a direct one-to-one correspondence to a :ref:`Skeleton3D<class_Skeleton3D>` node.

In particular, a :ref:`Skeleton3D<class_Skeleton3D>` node with no :ref:`MeshInstance3D<class_MeshInstance3D>` children may be unknown to the :ref:`RenderingServer<class_RenderingServer>`.

On the other hand, a :ref:`Skeleton3D<class_Skeleton3D>` with multiple :ref:`MeshInstance3D<class_MeshInstance3D>` nodes which each have different :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` objects may have multiple SkinReference instances (and hence, multiple skeleton :ref:`RID<class_RID>`\ s).

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Renvoie le :ref:`RID<class_RID>` détenu par cette SkinReference, tel que renvoyé par :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Returns the :ref:`Skin<class_Skin>` connected to this SkinReference. In the case of :ref:`MeshInstance3D<class_MeshInstance3D>` with no :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` assigned, this will reference an internal default :ref:`Skin<class_Skin>` owned by that :ref:`MeshInstance3D<class_MeshInstance3D>`.

Note that a single :ref:`Skin<class_Skin>` may have more than one **SkinReference** in the case that it is shared by meshes across multiple :ref:`Skeleton3D<class_Skeleton3D>` nodes.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
