:github_url: hide

.. _class_RemoteTransform2D:

RemoteTransform2D
=================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

RemoteTransform2D pousse sa propre :ref:`Transform2D<class_Transform2D>` à un autre nœud dérivé de :ref:`Node2D<class_Node2D>` dans la scène.

.. rst-class:: classref-introduction-group

Description
-----------

RemoteTransform2D pousse sa propre :ref:`Transform2D<class_Transform2D>` à un autre nœud dérivé de :ref:`Node2D<class_Node2D>` (appelé le nœud distant) dans la scène.

Il peut être défini pour mettre à jour la position, la rotation et/ou l'échelle d'un autre nœud. Il peut utiliser des coordonnées globales ou locales.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`remote_path<class_RemoteTransform2D_property_remote_path>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_position<class_RemoteTransform2D_property_update_position>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_rotation<class_RemoteTransform2D_property_update_rotation>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_scale<class_RemoteTransform2D_property_update_scale>`                     | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_global_coordinates<class_RemoteTransform2D_property_use_global_coordinates>` | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------+
   | |void| | :ref:`force_update_cache<class_RemoteTransform2D_method_force_update_cache>`\ (\ ) |
   +--------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RemoteTransform2D_property_remote_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **remote_path** = ``NodePath("")`` :ref:`🔗<class_RemoteTransform2D_property_remote_path>`

.. rst-class:: classref-property-setget

- |void| **set_remote_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_remote_node**\ (\ )

Le :ref:`NodePath<class_NodePath>` du nœud distant, relatif à la position du RemoteTransform2D dans la scène.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_position:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_position** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_position>`

.. rst-class:: classref-property-setget

- |void| **set_update_position**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_position**\ (\ )

Si ``true``, la position du nœud distant a changé.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_rotation** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_update_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_rotation**\ (\ )

Si ``true``, la rotation du nœud distant a changé.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_scale** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_scale>`

.. rst-class:: classref-property-setget

- |void| **set_update_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_scale**\ (\ )

Si ``true``, la mise à l'échelle du nœud distant a changé.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_use_global_coordinates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_coordinates** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_use_global_coordinates>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_global_coordinates**\ (\ )

Si ``true``, les coordonnées globales sont utilisées. Si ``false``, ce sont les locales.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RemoteTransform2D_method_force_update_cache:

.. rst-class:: classref-method

|void| **force_update_cache**\ (\ ) :ref:`🔗<class_RemoteTransform2D_method_force_update_cache>`

**RemoteTransform2D** met en cache le nœud distant. Il peut ne pas remarquer que si le nœud distant disparaît, :ref:`force_update_cache()<class_RemoteTransform2D_method_force_update_cache>` le force à mettre à jour le cache à nouveau.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
