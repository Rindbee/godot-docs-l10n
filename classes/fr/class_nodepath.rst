:github_url: hide

.. _class_NodePath:

NodePath
========

A pre-parsed scene tree path.

.. rst-class:: classref-introduction-group

Description
-----------

The **NodePath** built-in :ref:`Variant<class_Variant>` type represents a path to a node or property in a hierarchy of nodes. It is designed to be efficiently passed into many built-in methods (such as :ref:`Node.get_node()<class_Node_method_get_node>`, :ref:`Object.set_indexed()<class_Object_method_set_indexed>`, :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, etc.) without a hard dependence on the node or property they point to.

A node path is represented as a :ref:`String<class_String>` composed of slash-separated (``/``) node names and colon-separated (``:``) property names (also called "subnames"). Similar to a filesystem path, ``".."`` and ``"."`` are special node names. They refer to the parent node and the current node, respectively.

The following examples are paths relative to the current node:

::

    ^"A"     # Points to the direct child A.
    ^"A/B"   # Points to A's child B.
    ^"."     # Points to the current node.
    ^".."    # Points to the parent node.
    ^"../C"  # Points to the sibling node C.
    ^"../.." # Points to the grandparent node.

A leading slash means the path is absolute, and begins from the :ref:`SceneTree<class_SceneTree>`:

::

    ^"/root"            # Points to the SceneTree's root Window.
    ^"/root/Title"      # May point to the main scene's root node named "Title".
    ^"/root/Global"     # May point to an autoloaded node or scene named "Global".

Despite their name, node paths may also point to a property:

::

    ^":position"           # Points to this object's position.
    ^":position:x"         # Points to this object's position in the x axis.
    ^"Camera3D:rotation:y" # Points to the child Camera3D and its y rotation.
    ^"/root:size:x"        # Points to the root Window and its width.

In some situations, it's possible to omit the leading ``:`` when pointing to an object's property. As an example, this is the case with :ref:`Object.set_indexed()<class_Object_method_set_indexed>` and :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, as those methods call :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>` under the hood. However, it's generally recommended to keep the ``:`` prefix.

Node paths cannot check whether they are valid and may point to nodes or properties that do not exist. Their meaning depends entirely on the context in which they're used.

You usually do not have to worry about the **NodePath** type, as strings are automatically converted to the type when necessary. There are still times when defining node paths is useful. For example, exported **NodePath** properties allow you to easily select any node within the currently edited scene. They are also automatically updated when moving, renaming or deleting nodes in the scene tree editor. See also :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`.

See also :ref:`StringName<class_StringName>`, which is a similar type designed for optimized strings.

\ **Note:** In a boolean context, a **NodePath** will evaluate to ``false`` if it is empty (``NodePath("")``). Otherwise, a **NodePath** will always evaluate to ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de jeu de rôle 2D (RPG) <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

Construit un **NodePath** vide.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

Construit un **NodePath** en tant que copie du **NodePath** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

Construit un **NodePath** depuis une chaîne de caractères :ref:`String<class_String>`. Le chemin créé est absolu s'il commence par une barre oblique ("/") (voir :ref:`is_absolute()<class_NodePath_method_is_absolute>`).

Les "sous-noms" facultatifs inclus après le chemin du nœud cible peuvent pointer vers une ressource ou une propriété, et peuvent aussi être imbriqués.

Les chaînes suivantes peuvent êtres des chemins de nœud valides :

::

    # Pointe vers le nœud Sprite2D.
    "Niveau/RigidBody2D/Sprite2D"

    # Pointe vers le nœud Sprite2D et sa ressource "texture".
    # "get_node()" récupérera le Sprite2D, alors que get_node_and_resource()
    # récupérera à la fois le nœud Sprite2D et sa ressource "texture".
    "Niveau/RigidBody2D/Sprite2D:texture"

    # Pointe vers le nœud Sprite2D et sa propriété "position".
    "Niveau/RigidBody2D/Sprite2D:position"

    # Pointe vers le nœud Sprite2D et à la composante "x" de sa propriété "position".
    "Niveau/RigidBody2D/Sprite2D:position:x"

    # Pointe vers le nœud RigidBody2D avec un chemin absolu commençant du départ du SceneTree.
    "/root/Niveau/RigidBody2D"

\ **Note :** En GDScript, il est également possible de convertir une chaîne constante en chemin de nœud en la préfixant avec ``^``. ``^"chemin/vers/noeud"`` est équivalent à ``NodePath("chemin/vers/noeud")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

Renvoie une copie de ce chemin de nœud avec un deux-points (``:``) en préfixe, le transformant en un chemin de propriété pur sans nom de nœud (relatif au nœud actuel).


.. tabs::

 .. code-tab:: gdscript

    # chemin_noeud pointe vers la propriété "x" du nœud enfant nommé "position".
    var chemin_noeud = ^"position:x"

    # chemin_propriete pointe vers la "position" sur l'axe "x" de ce nœud.
    var chemin_propriete = chemin_noeud.get_as_property_path()
    print(chemin_propriete) # Affiche ":position:x"

 .. code-tab:: csharp

    // cheminNoeud pointe vers la propriété "x" du nœud enfant nommé "position".
    var cheminNoeud = new NodePath("position:x");

    // cheminPropriete pointe vers la "position" sur l'axe "x" de ce nœud.
    NodePath cheminPropriete = cheminNoeud.GetAsPropertyPath();
    GD.Print(cheminPropriete); // Affiche ":position:x"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

Renvoie tous les noms de nœuds concaténés avec un caractère slash (``/``) en un seul :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

Renvoie tous les sous-noms de propriété concaténés avec un deux-points (``:``) en un seul :ref:`StringName<class_StringName>`.


.. tabs::

 .. code-tab:: gdscript

    var chemin_noeud = ^"Sprite2D:texture:resource_name"
    print(chemin_noeud.get_concatenated_subnames()) # Affiche "texture:resource_name"

 .. code-tab:: csharp

    var cheminNoeud = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(cheminNoeud.GetConcatenatedSubnames()); // Affiche "texture:resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

Renvoie le nom du nœud indiqué par l'index ``idx``, à partir de 0. Si ``idx`` est hors des limites, une erreur est générée. Voir aussi :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` et :ref:`get_name_count()<class_NodePath_method_get_name_count>`.


.. tabs::

 .. code-tab:: gdscript

    var chemin_sprite = NodePath()./RigidBody2D/Sprite2D")
    print(chemin_sprite.get_name(0)) # Affiche ".."
    print(chemin_sprite.get_name(1)) # Affiche "RigidBody2D"
    print(chemin_sprite.get_name(2)) # Affiche "Sprite"

 .. code-tab:: csharp

    var cheminSprite = new NodePath("./RigidBody2D/Sprite2D");
    GD.Print(cheminSprite.GetName(0)); // Affiche ".."
    GD.Print(cheminSprite.GetName(1)); // Affiche "RigidBody2D"
    GD.Print(cheminSprite.GetName(2)); // Affiche "Sprite"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

Renvoie le nombre de noms de nœuds dans le chemin. Les sous-noms de propriété ne sont pas inclus.

Par exemple, ``"../RigidBody2D/Sprite2D:texture"`` contient 3 noms de nœuds.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

Renvoie le nom de la propriété indiquée par l'index ``idx``, à partir de 0. Si ``idx`` est hors des limites, une erreur est générée. Voir aussi :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`.


.. tabs::

 .. code-tab:: gdscript

    var chemin_vers_nom = NodePath("Sprite2D:texture:resource_name")
    print(chemin_vers_nom.get_subname(0)) # Affiche "texture"
    print(chemin_vers_nom.get_subname(1)) # Affiche "resource_name"

 .. code-tab:: csharp

    var cheminVersNom = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(cheminVersNom.GetSubname(0)); // Affiche "texture"
    GD.Print(cheminVersNom.GetSubname(1)); // Affiche "resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

Renvoie le nombre de noms de propriété (« sous-noms ») dans le chemin. Chaque sous-nom dans le chemin de nœud est listé après un deux-points (``:``).

Par exemple, ``"Niveau/RigidBody2D/Sprite2D:texture:resource_name"`` contient 2 sous-noms.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

Renvoie la valeur de hachage sur 32 bits représentant le contenu du chemin de nœud.

\ **Note :** Les chemins de nœud avec des valeurs de hachage égales ne sont *pas* garantis pour être les mêmes, en raison des collisions de hachage. Les chemins de nœud avec différentes valeurs de hachage sont garantis d'être différents.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

Renvoie ``true`` si le chemin de nœud est absolu. Contrairement à un chemin relatif, un chemin absolu est représenté par un caractère de slash de départ (``/``) et commence toujours du :ref:`SceneTree<class_SceneTree>`. Il peut être utilisé pour accéder de façon fiable à des nœuds depuis le nœuds racine (par exemple ``"/root/Global"`` si un chargement automatique (autoload) nommé «Global» existe).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

Renvoie ``true`` si le chemin de nœud a été construit à partir d'un :ref:`String<class_String>` vide (``"``).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

Renvoie la tranche du **NodePath**, de ``begin`` (inclusive) à ``end`` (exclusive), en tant que nouveau **NodePath**.

La valeur absolue de ``begin`` et ``end`` sera bornée à la taille du tableau, de sorte que la valeur par défaut pour ``end`` le fait trancher à la taille du tableau par défaut (c.a.d. ``arr.slice(1)`` est un raccourci pour ``arr.slice(1, arr.size())``).

Si ``begin`` ou ``end`` sont négatifs, ils seront par rapport à la fin du tableau (c.a.d. ``arr.slice(0, -2)`` est un raccourci pour ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

Renvoie ``true`` si les deux chemins de nœud ne sont pas égaux.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

Renvoie ``true`` si les deux chemins de nœud sont égaux, c'est-à-dire qu'ils sont composés des mêmes noms et sous-noms de nœuds dans le même ordre.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
