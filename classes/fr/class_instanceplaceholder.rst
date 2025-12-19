:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le nœud fictif pour le :ref:`Node<class_Node>` racine de la :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-introduction-group

Description
-----------

Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an **InstancePlaceholder** when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. This is useful to avoid loading large scenes all at once by loading parts of it selectively.

\ **Note:** Like :ref:`Node<class_Node>`, **InstancePlaceholder** does not have a transform. This causes any child nodes to be positioned relatively to the :ref:`Viewport<class_Viewport>` origin, rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

Appelez cette méthode pour réellement charger le nœud. Le nœudcréé sera placé comme un frère *au-dessus du* **InstancePlaceholder** dans l’arborescence de scène. La référence du :ref:`Node<class_Node>` est également renvoyée pour plus de commodité.

\ **Note :** :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` n'est pas thread-safe. Utilisez :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si l'appelez à partir d'un thread.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

Obtient le chemin vers le fichier de ressources :ref:`PackedScene<class_PackedScene>` qui est chargé par défaut lors de l'appel à :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. Non thread-safe. Utilisez :ref:`Object.call_deferred()<class_Object_method_call_deferred>` si vous l'appelez à partir d'un thread.

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

Renvoie la liste des propriétés qui seront appliquées au nœud lorsque :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` sera appelée.

Si ``with_order`` vaut ``true``, une clé nommée ``.order`` (remarquez le point du début) est ajoutée au dictionnaire. Cette clé ``.order`` est un :ref:`Array<class_Array>` de :ref:`String<class_String>` de noms de propriétés, spécifiant l'ordre dans lequel les propriétés seront appliquées (avec l'index 0 étant le premier).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
