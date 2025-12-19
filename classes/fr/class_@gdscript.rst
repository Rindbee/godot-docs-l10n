:github_url: hide

.. _class_@GDScript:

@GDScript
=========

Constantes, fonctions et annotations intégrées à GDScript.

.. rst-class:: classref-introduction-group

Description
-----------

Une liste de fonctions utilitaires et d'annotations, utilisables depuis n'importe quel script écrit en GDScript.

Pour voir la liste des fonctions et constantes globales disponibles dans n'importe quel langage, voir :ref:`@GlobalScope<class_@GlobalScope>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Exports GDScript <../tutorials/scripting/gdscript/gdscript_exports>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`Color8<class_@GDScript_method_Color8>`\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assert<class_@GDScript_method_assert>`\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ )                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`char<class_@GDScript_method_char>`\ (\ code\: :ref:`int<class_int>`\ )                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`convert<class_@GDScript_method_convert>`\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`dict_to_inst<class_@GDScript_method_dict_to_inst>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ )                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_stack<class_@GDScript_method_get_stack>`\ (\ )                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`inst_to_dict<class_@GDScript_method_inst_to_dict>`\ (\ instance\: :ref:`Object<class_Object>`\ )                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_instance_of<class_@GDScript_method_is_instance_of>`\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`len<class_@GDScript_method_len>`\ (\ var\: :ref:`Variant<class_Variant>`\ )                                                                                        |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`load<class_@GDScript_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`ord<class_@GDScript_method_ord>`\ (\ char\: :ref:`String<class_String>`\ )                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`     | :ref:`preload<class_@GDScript_method_preload>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_debug<class_@GDScript_method_print_debug>`\ (\ ...\ ) |vararg|                                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`print_stack<class_@GDScript_method_print_stack>`\ (\ )                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`range<class_@GDScript_method_range>`\ (\ ...\ ) |vararg|                                                                                                           |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`type_exists<class_@GDScript_method_type_exists>`\ (\ type\: :ref:`StringName<class_StringName>`\ )                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_@GDScript_constant_PI:

.. rst-class:: classref-constant

**PI** = ``3.14159265358979`` :ref:`🔗<class_@GDScript_constant_PI>`

Constante qui représente le nombre de fois que le diamètre d'un cercle correspond à son périmètre. Elle équivaut à ``TAU / 2``, soit 180 degrés de rotation.

.. _class_@GDScript_constant_TAU:

.. rst-class:: classref-constant

**TAU** = ``6.28318530717959`` :ref:`🔗<class_@GDScript_constant_TAU>`

La constante du cercle, c'est à dire la circonférence du cercle unité en radians. C'est l'équivalent de ``PI * 2`` ou de 360 degrés en rotation.

.. _class_@GDScript_constant_INF:

.. rst-class:: classref-constant

**INF** = ``inf`` :ref:`🔗<class_@GDScript_constant_INF>`

L'infini positif représenté en virgule flottante. C'est le résultat d'un nombre à virgule flottante divisé par ``0.0``. L'infini négatif est représenté par ``-INF``. Diviser par ``-0.0`` donnera une infinité négative si le numérateur est positif, donc diviser par ``0.0`` n'est pas la même chose que de diviser par ``-0.0`` (même si ``0.0 == -0.0`` est toujours ``true``).

\ **Attention :** L'infini numérique est un concept qui n'existe que pour les nombres à virgule flottante, et n'a pas d'équivalent pour les entiers. Diviser un nombre entier par ``0`` ne résultera pas en :ref:`INF<class_@GDScript_constant_INF>` et entraînera toujours une erreur d'exécution.

.. _class_@GDScript_constant_NAN:

.. rst-class:: classref-constant

**NAN** = ``nan`` :ref:`🔗<class_@GDScript_constant_NAN>`

"Not a Number" (littéralement : pas un nombre), un nombre flottant (nombre à virgule) invalide. Il est renvoyé par certaines opérations invalides, comme la division flottante de ``0.0`` par ``0.0``.

\ :ref:`NAN<class_@GDScript_constant_NAN>` a des propriétés spéciales, notamment que ``!=`` renvoie toujours ``true``, tandis que les autres opérateurs renverront toujours ``false``. Cela est vrai même en le comparant à lui-même (``NAN == NAN`` renvoie ``false`` et ``NAN != NAN`` renvoie ``true``). À cause de cela, vous devez utiliser :ref:`@GlobalScope.is_nan()<class_@GlobalScope_method_is_nan>` pour vérifier si un nombre est égal à :ref:`NAN<class_@GDScript_constant_NAN>`.

\ **Attention :** "Not a Number" est un concept seulement pour les nombres flottants et n'a pas d’équivalent pour les nombres entiers. Diviser un nombre entier ``0`` par ``0`` ne donnera pas un :ref:`NAN<class_@GDScript_constant_NAN>` et résultera à la place en une erreur d’exécution.

.. rst-class:: classref-section-separator

----

Annotations
-----------

.. _class_@GDScript_annotation_@abstract:

.. rst-class:: classref-annotation

**@abstract**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@abstract>`

Marque une classe ou une méthode comme abstraite.

Une classe abstraite est une classe qui ne peut pas être instanciée directement. À la place, elle est destinée à être héritée par d'autres classes. Essayer d’instancier une classe abstraite résultera en une erreur.

Une méthode abstraite est une méthode qui n'a pas d'implémentation. Ainsi, un retour à la ligne ou un point virgule est attendu après l'entête de la fonction. Ceci défini un contrat auquel les classes héritées doivent souscrire, car la méthode abstraite donne une signature que les implémentations de la méthode doivent respecter. 

Les classes héritées doivent donner une implémentation à toutes les méthodes abstraites, ou elle sera elle-même marquée comme abstraite. Si une classe a au moins une méthode abstraite (soit la sienne soit une non implémentée héritée), alors elle doit aussi être marquée comme abstraite. Cependant, l'inverse n'est pas vrai : une classe abstraite peut ne pas avoir de méthode abstraite.

::

    @abstract class Forme:
        @abstract func draw()

    class Cercle extends Forme:
        func draw():
            print("Dessiner un cercle")

    class Carre extends Forme:
        func draw():
            print("Dessiner un carré.")

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export:

.. rst-class:: classref-annotation

**@export**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export>`

Marquez la propriété suivante comme exportée (modifiable dans le dock Inspecteur et enregistrée sur le disque). Pour contrôler le type de la propriété exportée, utilisez la notation d'indication de type.

::

    extends Node

    enum Direction {LEFT, RIGHT, UP, DOWN}

    # Types intégrés.
    @export var string = ""
    @export var int_number = 5
    @export var float_number: float = 5

    # Enums.
    @export var type: Variant.Type
    @export var format: Image.Format
    @export var direction: Direction

    # Ressources.
    @export var image: Image
    @export var custom_resource: CustomResource

    # Nœuds.
    @export var node: Node
    @export var custom_node: CustomNode

    # Tableaux typés.
    @export var int_array : Array[int]
    @export var direction_array : Array[Direction]
    @export var image_array : Array[Image]
    @export var node_array : Array[Node]

\ **Remarque :** Les ressources et nœuds personnalisés doivent être enregistrés en tant que classes globales à l'aide de ``class_name``, car l'inspecteur ne prend actuellement en charge que les classes globales. Sinon, un type moins spécifique sera exporté à la place.

\ **Remarque :** L'exportation de nœuds n'est prise en charge que dans les classes dérivées de :ref:`Node<class_Node>` et présente un certain nombre d'autres limitations.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_category:

.. rst-class:: classref-annotation

**@export_category**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_category>`

Définir une nouvelle catégorie pour les propriétés exportées suivantes. Cela permet d'organiser les propriétés dans l'Inspector Dock.

Voir aussi :ref:`@GlobalScope.PROPERTY_USAGE_CATEGORY<class_@GlobalScope_constant_PROPERTY_USAGE_CATEGORY>`.

::

    @export_category("Statistics")
    @export var hp = 30
    @export var speed = 1.25

\ **Note :** Les catégories dans la liste de l'Inspector Dock divisent généralement les propriétés provenant de différentes classes (Node, Node2D, Sprite, etc.). Pour plus de clarté, il est recommandé d'utiliser plutôt :ref:`@export_group<class_@GDScript_annotation_@export_group>` et :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_color_no_alpha:

.. rst-class:: classref-annotation

**@export_color_no_alpha**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_color_no_alpha>`

Exporter une propriété :ref:`Color<class_Color>`, :ref:`Array<class_Array>`\ \[:ref:`Color<class_Color>`\ \], or :ref:`PackedColorArray<class_PackedColorArray>` sans permettre l'édition de sa transparence (:ref:`Color.a<class_Color_property_a>`).

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_COLOR_NO_ALPHA<class_@GlobalScope_constant_PROPERTY_HINT_COLOR_NO_ALPHA>`.

::

    @export_color_no_alpha var dye_color: Color
    @export_color_no_alpha var dye_colors: Array[Color]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_custom:

.. rst-class:: classref-annotation

**@export_custom**\ (\ hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\] = 6\ ) :ref:`🔗<class_@GDScript_annotation_@export_custom>`

Vous permet de définir un indice personnalisé, une chaîne d'indice et des drapeaux d'utilisation pour la propriété exportée. Notez qu'aucune validation n'est effectuée dans GDScript, il transmettra simplement les paramètres à l'éditeur.

::

    @export_custom(PROPERTY_HINT_NONE, "suffix:m") var suffix: Vector3

\ **Remarque :** Quelle que soit la valeur de ``usage``, le drapeau :ref:`@GlobalScope.PROPERTY_USAGE_SCRIPT_VARIABLE<class_@GlobalScope_constant_PROPERTY_USAGE_SCRIPT_VARIABLE>` est toujours ajouté, comme pour toute variable de script explicitement déclarée.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_dir:

.. rst-class:: classref-annotation

**@export_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_dir>`

Exporte une propriété :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], or :ref:`PackedStringArray<class_PackedStringArray>` en tant que chemin d'accès à un répertoire. Le chemin sera limité au dossier du projet et à ses sous-dossiers. Voir :ref:`@export_global_dir<class_@GDScript_annotation_@export_global_dir>` pour permettre de choisir dans l'ensemble du système de fichiers.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_DIR<class_@GlobalScope_constant_PROPERTY_HINT_DIR>`.

::

    @export_dir var sprite_folder_path: String
    @export_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_enum:

.. rst-class:: classref-annotation

**@export_enum**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_enum>`

Exportez une propriété :ref:`int<class_int>`, :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>` ou :ref:`PackedStringArray<class_PackedStringArray>` sous forme de liste énumérée d'options (ou de tableau d'options). Si la propriété est un :ref:`int<class_int>`, l'index de la valeur est stocké, dans le même ordre que les valeurs fournies. Vous pouvez ajouter des valeurs explicites à l'aide de deux points. Si la propriété est un :ref:`String<class_String>`, la valeur est stockée.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_ENUM<class_@GlobalScope_constant_PROPERTY_HINT_ENUM>`.

::

    @export_enum("Warrior", "Magician", "Thief") var character_class: int
    @export_enum("Slow:30", "Average:60", "Very Fast:200") var character_speed: int
    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

    @export_enum("Sword", "Spear", "Mace") var character_items: Array[int]
    @export_enum("double_jump", "climb", "dash") var character_skills: Array[String]

Si vous souhaitez définir une valeur initiale, vous devez la spécifier explicitement :

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String = "Rebecca"

Si vous souhaitez utiliser des énumérations GDScript nommées, alors utilisez :ref:`@export<class_@GDScript_annotation_@export>` à la place :

::

    enum CharacterName {REBECCA, MARY, LEAH}
    @export var character_name : CharacterName

    enum CharacterItem {SWORD, SPEAR, MACE}
    @export var character_items : Array[CharacterItem]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_exp_easing:

.. rst-class:: classref-annotation

**@export_exp_easing**\ (\ hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_exp_easing>`

Exporte une propriété de flottant avec un widget d'éditeur de courbe. Des aides additionnelles peuvent être ajoutées pour ajuster le comportement de ce widget. ``"attenuation"`` retourne la courbe, ce qui la rend plus intuitive pour éditer des propriétés d'atténuation. ``"positive_only"`` limite les valeurs à être supérieures ou égales à zéro.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_EXP_EASING<class_@GlobalScope_constant_PROPERTY_HINT_EXP_EASING>`.

::

    @export_exp_easing var transition_speed
    @export_exp_easing("attenuation") var fading_attenuation
    @export_exp_easing("positive_only") var effect_power
    @export_exp_easing var speeds: Array[float]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file:

.. rst-class:: classref-annotation

**@export_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file>`

Exporte une propriété :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], ou :ref:`PackedStringArray<class_PackedStringArray>` en tant que chemin vers un fichier. Le chemin sera limité au dossier de projet et ses sous-dossiers. Voir :ref:`@export_global_file<class_@GDScript_annotation_@export_global_file>` pour autoriser la sélection depuis l'ensemble du système de fichiers.

Si ``filter`` est fourni, seuls les fichiers correspondants seront disponible à la sélection.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_FILE<class_@GlobalScope_constant_PROPERTY_HINT_FILE>`.

::

    @export_file var sound_effect_path: String
    @export_file("*.txt") var notes_path: String
    @export_file var level_paths: Array[String]

\ **Note :** Le fichier sera stocké et référencé en tant qu'UID, si disponible. Cela garantit que la référence est valide même lorsque le fichier est déplacé. Vous pouvez utiliser des méthodes de :ref:`ResourceUID<class_ResourceUID>` pour le convertir en chemin.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_file_path:

.. rst-class:: classref-annotation

**@export_file_path**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_file_path>`

Comme :ref:`@export_file<class_@GDScript_annotation_@export_file>`, sauf que le fichier sera stocké comme un chemin brut. Cela signifie qu'il peut devenir invalide lorsque le fichier est déplacé. Si vous exportez un chemin de :ref:`Resource<class_Resource>`, envisagez d'utiliser :ref:`@export_file<class_@GDScript_annotation_@export_file>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags:

.. rst-class:: classref-annotation

**@export_flags**\ (\ names\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_flags>`

Exporte une propriété entière en tant que champ de bit flag. Cela permet de stocker plusieurs valeurs "vérifiées" ou ``true`` avec une propriété, et de les sélectionner aisément depuis la barre d'outils de l'Inspecteur.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_FLAGS<class_@GlobalScope_constant_PROPERTY_HINT_FLAGS>`.

::

    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

Vous pouvez ajouter des valeurs explicites en utilisant les deux-points :

::

    @export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0

Vous pouvez aussi combiner plusieurs options :

::

    @export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
    var spell_targets = 0

\ **Note :** Une valeur de drapeau doit être au minimum ``1`` et au maximum ``2 ** 32 - 1``.

\ **Note :** Contrairement à :ref:`@export_enum<class_@GDScript_annotation_@export_enum>`, la valeur explicite précédente n'est pas prise en compte. Dans l'exemple suivant, A est 16, B est 2, C est 4.

::

    @export_flags("A:16", "B", "C") var x

Vous pouvez aussi l'utiliser cette annotation sur un :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, ou\ :ref:`PackedInt64Array<class_PackedInt64Array>`\ 

::

    @export_flags("Fire", "Water", "Earth", "Wind") var phase_elements: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_navigation:

.. rst-class:: classref-annotation

**@export_flags_2d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_navigation>`

Exporte une propriété entière en tant que champ de bits pour les calques de navigation 2D. Le widget dans le dock Inspecteur utilisera les noms des calques définis dans :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_NAVIGATION>`.

::

    @export_flags_2d_navigation var navigation_layers: int
    @export_flags_2d_navigation var navigation_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_physics:

.. rst-class:: classref-annotation

**@export_flags_2d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_physics>`

Exporter une propriété entière sous forme de champ de bit flag pour les couches physiques 2D. Le widget dans la barre d'outils de l'Inspecteur utilisera les noms des calques définis dans :ref:`ProjectSettings.layer_names/2d_physics/layer_1<class_ProjectSettings_property_layer_names/2d_physics/layer_1>`.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_PHYSICS>`.

::

    @export_flags_2d_physics var physics_layers: int
    @export_flags_2d_physics var physics_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_2d_render:

.. rst-class:: classref-annotation

**@export_flags_2d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_2d_render>`

Exporte une propriété entière en tant que champ de bit flag pour le calques de rendu 2D. Le widget dans la barre d'outils de l'Inspecteur utilisera les noms des calques définis dans :ref:`ProjectSettings.layer_names/2d_render/layer_1<class_ProjectSettings_property_layer_names/2d_render/layer_1>`.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_2D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_2D_RENDER>`.

::

    @export_flags_2d_render var render_layers: int
    @export_flags_2d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_navigation:

.. rst-class:: classref-annotation

**@export_flags_3d_navigation**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_navigation>`

Exporte une propriété :ref:`int<class_int>` en tant que champ de bits pour des couches de navigation 3D. Le widget dans le dock Inspecteur utilisera les noms de couche définis dans :ref:`ProjectSettings.layer_names/3d_navigation/layer_1<class_ProjectSettings_property_layer_names/3d_navigation/layer_1>`.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_NAVIGATION<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_NAVIGATION>`.

::

    @export_flags_3d_navigation var couches_navigation: int
    @export_flags_3d_navigation var tableau_couches_navigation: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_physics:

.. rst-class:: classref-annotation

**@export_flags_3d_physics**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_physics>`

Exporte une propriété :ref:`int<class_int>` en tant que champ de bits pour couches physiques 3D. Le widget dans le dock Inspecteur utilisera les noms de couches définis dans :ref:`ProjectSettings.layer_names/3d_physics/layer_1<class_ProjectSettings_property_layer_names/3d_physics/layer_1>`.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_PHYSICS<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_PHYSICS>`.

::

    @export_flags_3d_physics var physics_layers : int
    @export_flags_3d_physics var physics_layers_array : Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_3d_render:

.. rst-class:: classref-annotation

**@export_flags_3d_render**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_3d_render>`

Exporte une propriété d'entier en tant que champ de bit flag pour des couches de rendu 3D. Le widget dans le dock Inspecteur utilisera les noms de couches définis dans :ref:`ProjectSettings.layer_names/3d_render/layer_1<class_ProjectSettings_property_layer_names/3d_render/layer_1>`.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_3D_RENDER<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_3D_RENDER>`.

::

    @export_flags_3d_render var render_layers: int
    @export_flags_3d_render var render_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_flags_avoidance:

.. rst-class:: classref-annotation

**@export_flags_avoidance**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_flags_avoidance>`

Exporte une propriété entière en tant que champ d'option (bit) pour les calques de navigation 2D. Le widget dans la barre d'outils de l'Inspecteur utilisera les noms des calques définis dans :ref:`ProjectSettings.layer_names/2d_navigation/layer_1<class_ProjectSettings_property_layer_names/2d_navigation/layer_1>`.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_LAYERS_AVOIDANCE<class_@GlobalScope_constant_PROPERTY_HINT_LAYERS_AVOIDANCE>`.

::

    @export_flags_avoidance var avoidance_layers: int
    @export_flags_avoidance var avoidance_layers_array: Array[int]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_dir:

.. rst-class:: classref-annotation

**@export_global_dir**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_global_dir>`

Exporter une propriété :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], ou :ref:`PackedStringArray<class_PackedStringArray>` en tant que chemin absolu vers un dossier. Le chemin peut être sélectionné depuis l'entièreté du système de fichiers. Voir :ref:`@export_dir<class_@GDScript_annotation_@export_dir>` pour le limiter au dossier du projet et ses sous-dossiers.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_DIR<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_DIR>`.

::

    @export_global_dir var sprite_folder_path: String
    @export_global_dir var sprite_folder_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_global_file:

.. rst-class:: classref-annotation

**@export_global_file**\ (\ filter\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_global_file>`

Exporte une propriété :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], ou :ref:`PackedStringArray<class_PackedStringArray>` en tant que chemin absolu à un fichier. Le chemin peut être sélectionné depuis l'entièreté du système de fichiers. Voir :ref:`@export_file<class_@GDScript_annotation_@export_file>` afin de le limiter au dossier du projet et ses sous-dossiers.

Si ``filter`` est fourni, seul les fichiers correspondant seront disponibles à la sélection.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_GLOBAL_FILE<class_@GlobalScope_constant_PROPERTY_HINT_GLOBAL_FILE>`.

::

    @export_global_file var sound_effect_path: String
    @export_global_file("*.txt") var notes_path: String
    @export_global_file var multiple_paths: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_group:

.. rst-class:: classref-annotation

**@export_group**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_group>`

Définit un nouveau groupe pour les propriétés exportées suivantes. Ceci aide à organiser les propriétés dans la barre d'outils de l'Inspecteur. Les groupes peuvent être ajoutés avec un ``prefix`` optionnel qui considère uniquement les propriétés ayant ce préfixe dans le groupe. Le groupement se terminera sur la première propriété n'ayant pas de préfixe. Le préfixe est également supprimé du nom de la propriété dans la barre d'outils de l'Inspecteur.

Si aucun ``prefix`` n'est fourni, alors toutes les propriétés suivantes seront ajoutées au groupe. Le groupe se termine quand le groupe ou la catégorie suivante sont définis. Vous pouvez également forcer la fin d'un groupe en utilisation cette annotation avec des chaînes de caractères vides comme paramètres : ``@export_group("", "")``.

Les groupes ne peuvent pas être imbriqués, utilisez :ref:`@export_subgroup<class_@GDScript_annotation_@export_subgroup>` pour ajouter des sous-groupes au sein d'un groupe.

Voir aussi :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`\ 

::

    @export_group("Propriétés du pilote")
    @export var nickname = "Nick"
    @export var age = 26

    @export_group("Propriétés de la voiture", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

    @export_group("", "")
    @export var ungrouped_number = 3

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_multiline:

.. rst-class:: classref-annotation

**@export_multiline**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_multiline>`

Exporte une propriété :ref:`String<class_String>`, :ref:`Array<class_Array>`\ \[:ref:`String<class_String>`\ \], :ref:`PackedStringArray<class_PackedStringArray>`, :ref:`Dictionary<class_Dictionary>` ou :ref:`Array<class_Array>`\ \[:ref:`Dictionary<class_Dictionary>`\ \] avec un widget :ref:`TextEdit<class_TextEdit>` large à la place d'un :ref:`LineEdit<class_LineEdit>`. Cela ajoute du support pour un contenu multi-ligne et rend plus facile l'édition de beaucoup de texte stocké dans la propriété.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_MULTILINE_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_MULTILINE_TEXT>`.

::

    @export_multiline var character_biography
    @export_multiline var npc_dialogs: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_node_path:

.. rst-class:: classref-annotation

**@export_node_path**\ (\ type\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_node_path>`

Exporte une propriété :ref:`NodePath<class_NodePath>` ou :ref:`Array<class_Array>`\ \[:ref:`NodePath<class_NodePath>`\ \] avec un filtre pour les types de nœud autorisés.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_NODE_PATH_VALID_TYPES<class_@GlobalScope_constant_PROPERTY_HINT_NODE_PATH_VALID_TYPES>`.

::

    @export_node_path("Button", "TouchScreenButton") var some_button
    @export_node_path("Button", "TouchScreenButton") var many_buttons: Array[NodePath]

\ **Note :** Le type doit être une classe native ou un script enregistré globalement (utilisant le mot-clé ``class_name`` ) qui hérite de :ref:`Node<class_Node>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_placeholder:

.. rst-class:: classref-annotation

**@export_placeholder**\ (\ placeholder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@export_placeholder>`

Exporte une propriété :ref:`String<class_String>` avec un emplacement réservé de texte affiché dans le widget d'éditeur widget quand aucune valeur n'est présente.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_PLACEHOLDER_TEXT<class_@GlobalScope_constant_PROPERTY_HINT_PLACEHOLDER_TEXT>`.

::

    @export_placeholder("Nom en minuscule") var character_id: String
    @export_placeholder("Nom en minuscule") var friend_ids: Array[String]

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_range:

.. rst-class:: classref-annotation

**@export_range**\ (\ min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, step\: :ref:`float<class_float>` = 1.0, extra_hints\: :ref:`String<class_String>` = "", ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@export_range>`

Exporte une propriété :ref:`int<class_int>`, :ref:`float<class_float>`, :ref:`Array<class_Array>`\ \[:ref:`int<class_int>`\ \], :ref:`Array<class_Array>`\ \[:ref:`float<class_float>`\ \], :ref:`PackedByteArray<class_PackedByteArray>`, :ref:`PackedInt32Array<class_PackedInt32Array>`, :ref:`PackedInt64Array<class_PackedInt64Array>`, :ref:`PackedFloat32Array<class_PackedFloat32Array>`, ou :ref:`PackedFloat64Array<class_PackedFloat64Array>` en tant que valeur de plage. La plage doit être définie par ``min`` et ``max``, ainsi qu'un pas ``step`` facultatif et une variété d'indices supplémentaires. Le pas ``step`` est par défaut ``1`` pour les propriétés entières. Pour les nombres à virgule flottante, cette valeur dépend de votre paramètre :ref:`EditorSettings.interface/inspector/default_float_step<class_EditorSettings_property_interface/inspector/default_float_step>`.

Si les indices ``"or_greater"`` et ``"or_less"`` sont fournis, le widget de l'éditeur ne plafonnera pas la valeur aux limites de la plage. L'indice ``"exp"`` fera en sorte que les valeurs modifiées sur la plage changent de manière exponentielle. L'indice ``"hide_slider"`` masquera l'élément slider du widget de l'éditeur.

Des indices permettent également d'indiquer les unités de la valeur modifiée. En utilisant ``"radians_as_degrees"``, vous pouvez spécifier que la valeur réelle est en radians, mais doit être affichée en degrés dans le dock Inspecteur (les valeurs de plage sont également en degrés). ``"degrees"`` permet d'ajouter un signe de degré comme suffixe d'unité (la valeur est inchangée). Enfin, un suffixe personnalisé peut être fourni en utilisant ``"suffix:unit"``, où "unit" peut être n'importe quelle chaîne.

Voir également :ref:`@GlobalScope.PROPERTY_HINT_RANGE<class_@GlobalScope_constant_PROPERTY_HINT_RANGE>`.

::

    @export_range(0, 20) var number
    @export_range(-10, 20) var number
    @export_range(-10, 20, 0.2) var number: float
    @export_range(0, 20) var numbers: Array[float]

    @export_range(0, 100, 1, "or_greater") var power_percent
    @export_range(0, 100, 1, "or_greater", "or_less") var health_delta

    @export_range(-180, 180, 0.001, "radians_as_degrees") var angle_radians
    @export_range(0, 360, 1, "degrees") var angle_degrees
    @export_range(-8, 8, 2, "suffix:px") var target_offset

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_storage:

.. rst-class:: classref-annotation

**@export_storage**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@export_storage>`

Exporte une propriété avec l'indicateur :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`. La propriété n'est pas affichée dans l'éditeur, mais elle est sérialisée et stockée dans la scène ou le fichier de ressources. Cela peut être utile pour les scripts :ref:`@tool<class_@GDScript_annotation_@tool>`. De plus, la valeur de la propriété est copiée lorsque :ref:`Resource.duplicate()<class_Resource_method_duplicate>` ou la :ref:`Node.duplicate()<class_Node_method_duplicate>` sont appelés, contrairement aux variables non exportées.

::

    var a # Non stocké dans le fichier, non affiché dans l'éditeur.
    @export_storage var b # Stocké dans le fichier, non affiché dans l'éditeur.
    @export var c: int # Stocké dans le fichier, affiché dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_subgroup:

.. rst-class:: classref-annotation

**@export_subgroup**\ (\ name\: :ref:`String<class_String>`, prefix\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_subgroup>`

Définit un nouveau sous-groupe pour les propriétés exportées suivantes. Cela permet d'organiser les propriétés dans le dock Inspecteur. Les sous-groupes fonctionnent exactement comme des groupes, sauf qu'ils ont besoin d'un groupe parent pour exister. Voir :ref:`@export_group<class_@GDScript_annotation_@export_group>`.

Voir également :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`.

::

    @export_group("Propriétés du pilote")
    @export var nickname = "Nick"
    @export var age = 26

    @export_subgroup("Propriétés de la voiture", "car_")
    @export var car_label = "Speedy"
    @export var car_number = 3

\ **Note :** Les sous-groupes ne peuvent pas être imbriqués, mais vous pouvez utiliser l'opérateur slash (``/``) pour obtenir l'effet désiré :

::

    @export_group("Propriétés de la voiture")
    @export_subgroup("Roues", "wheel_")
    @export_subgroup("Roues/Avant", "front_wheel_")
    @export var front_wheel_strength = 10
    @export var front_wheel_mobility = 5
    @export_subgroup("Roues/Arriere", "rear_wheel_")
    @export var rear_wheel_strength = 8
    @export var rear_wheel_mobility = 3
    @export_subgroup("Roues", "wheel_")
    @export var wheel_material: PhysicsMaterial

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@export_tool_button:

.. rst-class:: classref-annotation

**@export_tool_button**\ (\ text\: :ref:`String<class_String>`, icon\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_annotation_@export_tool_button>`

Exporte une propriété :ref:`Callable<class_Callable>` en tant que bouton cliquable avec la légende ``text``. Lorsque le bouton est pressé, l'appelable :ref:`Callable<class_Callable>` est appelé.

Si l'icône ``icon`` est spécifié, il est utilisée pour récupérer un icône pour le bouton via :ref:`Control.get_theme_icon()<class_Control_method_get_theme_icon>`, du type de thème ``"EditorIcons"``. Si ``icon`` est omis, l'icône par défaut ``"Callable"`` est utilisé à la place.

Envisagez d'utiliser le :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` pour permettre à l'action d'être annulée en toute sécurité.

Voir aussi :ref:`@GlobalScope.PROPERTY_HINT_TOOL_BUTTON<class_@GlobalScope_constant_PROPERTY_HINT_TOOL_BUTTON>`.

::

    @tool
    extends Sprite2D

    @export_tool_button("Bonjour") var Bonjour_action = Bonjour
    @export_tool_button("Randomiser la couleur !", "ColorRect")
    var randomiser_couleur_action = randomiser_couleur

    func Bonjour():
    print("Bonjour monde !")

    func randomiser_couleur():
    var undo_redo = EditorInterface.get_editor_undo_redo()
    undo_redo.create_action("Randomiser couleur du Sprite2D")
    undo_redo.add_do_property(self, "self_modulate" , Color(randf(), randf(), randf())
    undo_redo.add_undo_property(self, "self_modulate" , self_modulate)
    undo_redo.commit_action()

\ **Note: ** La propriété est exportée sans le drapeau :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` parce qu'un :ref:`Callable<class_Callable>` ne peut pas être correctement sérialisé et stocké dans un fichier.

\ **Note :** Dans un projet exporté, il n'existe ni :ref:`EditorInterface<class_EditorInterface>` ni :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, ce qui peut casser certains scripts. Pour éviter cela, vous pouvez utiliser :ref:`Engine.get_singleton()<class_Engine_method_get_singleton>` et omettre le type statique de la déclaration de variable :

::

    var undo_redo = Engine.get_singleton(&"EditorInterface").get_editor_undo_redo()

\ **Note :** Évitez de stocker fes callables lambda dans les variables de membres des classes basées sur :ref:`RefCounted<class_RefCounted>` (p. ex. les ressources), car cela peut conduire à des fuites de mémoire. Utilisez uniquement les callables de méthode et optionnellement :ref:`Callable.bind()<class_Callable_method_bind>` ou :ref:`Callable.unbind()<class_Callable_method_unbind>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@icon:

.. rst-class:: classref-annotation

**@icon**\ (\ icon_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_annotation_@icon>`

Ajoute un icône personnalisé à ce script. L'icône spécifié au ``icon_path`` est montré dans le dock de scène pour chaque nœud de cette classe, et dans diverses fenêtres de l'éditeur.

::

    @icon("res ://chemin/vers/classe/icone.svg")

\ **Note :** Seul le script peut avoir un icône personnalisé. Les classes internes ne sont pas supportées.

\ **Note :** Comme les annotations décrivent leur sujet, l':ref:`@icon<class_@GDScript_annotation_@icon>` annotation doit être placée avant la définition de la classe et de son héritage.

\ **Note :** Contrairement aux autres annotations, le paramètre de l'annotation :ref:`@icon<class_@GDScript_annotation_@icon>` doit être un chaîne de caractères littérale (les expressions constantes ne sont pas supportées).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@onready:

.. rst-class:: classref-annotation

**@onready**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@onready>`

Marque la propriété suivante comme attribuée lorsque la :ref:`Node<class_Node>` est prête. Les valeurs de ces propriétés ne sont pas attribuées immédiatement lorsque le nœud est initialisé (:ref:`Object._init()<class_Object_private_method__init>`), mais sont à la place calculées et stockées juste avant :ref:`Node._ready()<class_Node_private_method__ready>`.

::

    @onready var nom_personnage = $Label

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@rpc:

.. rst-class:: classref-annotation

**@rpc**\ (\ mode\: :ref:`String<class_String>` = "authority", sync\: :ref:`String<class_String>` = "call_remote", transfer_mode\: :ref:`String<class_String>` = "unreliable", transfer_channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_@GDScript_annotation_@rpc>`

Marque la méthode suivante pour les appels de procédure distante. Voir :doc:`Multijoueur de haut niveau <../tutorials/networking/high_level_multiplayer>`.

Si ``mode`` est défini sur ``"any_peer"``, permet à n'importe quel pair d'appeler cette fonction RPC. Sinon, seul le pair d'autorité est autorisé à l'appeler et ``mode`` doit être conservé comme ``"authority"``. Lors de la configuration de fonctions en RPC avec :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, chacun de ces modes correspond respectivement aux modes RPC :ref:`MultiplayerAPI.RPC_MODE_AUTHORITY<class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY>` et :ref:`MultiplayerAPI.RPC_MODE_ANY_PEER<class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER>`. Voir :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`. Si un pair qui n'est pas l'autorité tente d'appeler une fonction autorisée uniquement pour l'autorité, la fonction ne sera pas exécutée. Si l'erreur peut être détectée localement (lorsque la configuration RPC est cohérente entre le homologue local et distant), un message d'erreur sera affiché sur le pair expéditeur. Sinon, le pair distant détectera l'erreur et y affichera une erreur.

Si ``sync`` est défini sur ``"call_remote"``, la fonction ne sera exécutée que sur le pair distant, mais pas localement. Pour exécuter cette fonction localement également, définissez ``sync`` sur ``"call_local"``. Lors de la configuration de fonctions en tant que RPC avec :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, cela équivaut à définir ``call_local`` sur ``true``.

Les valeurs acceptées par ``transfer_mode`` sont ``"unreliable"``, ``"unreliable_ordered"`` ou ``"reliable"``. Il définit le mode de transfert du :ref:`MultiplayerPeer<class_MultiplayerPeer>` sous-jacent. Voir :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`.

Le ``transfer_channel`` définit le canal du :ref:`MultiplayerPeer<class_MultiplayerPeer>` sous-jacent. Voir :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`.

L'ordre de ``mode``, ``sync`` et ``transfer_mode`` n'a pas d'importance, mais les valeurs liées au même argument ne doivent pas être utilisées plus d'une fois. ``transfer_channel`` doit toujours être le 4ème argument (vous devez spécifier 3 arguments précédents).

::

    @rpc
    func fn() : pass

    @rpc("any_peer", "unreliable_ordered")
    func fn_update_pos() : pass

    @rpc("authority", "call_remote", "unreliable", 0) # Équivalent à @rpc
    func fn_default() : pass

\ **Note :** Les méthodes annotées avec :ref:`@rpc<class_@GDScript_annotation_@rpc>` ne peuvent pas recevoir d'objets qui définissent des paramètres requis dans :ref:`Object._init()<class_Object_private_method__init>`. Voir :ref:`Object._init()<class_Object_private_method__init>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@static_unload:

.. rst-class:: classref-annotation

**@static_unload**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@static_unload>`

Créez un script avec des variables statiques pour ne pas persister après la perte de toutes les références. Si le script est à nouveau chargé, les variables statiques reviendront à leurs valeurs par défaut.

\ **Remarque :** Comme les annotations décrivent leur sujet, l'annotation :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` doit être placée avant la définition et l'héritage de la classe.

\ **Attention :** Actuellement, en raison d'un bug, les scripts ne sont jamais libérés, même si l'annotation :ref:`@static_unload<class_@GDScript_annotation_@static_unload>` est utilisée.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@tool:

.. rst-class:: classref-annotation

**@tool**\ (\ ) :ref:`🔗<class_@GDScript_annotation_@tool>`

Marque le script actuel comme script outil, lui permettant d'être chargé et exécuté par l'éditeur. Voir :doc:`Exécution de code dans l'éditeur <../tutorials/plugins/running_code_in_the_editor>`.

::

    @tool
    extends Node

\ **Remarque :** Comme les annotations décrivent leur sujet, l'annotation :ref:`@tool<class_@GDScript_annotation_@tool>` doit être placée avant la définition et l'héritage de la classe.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore:

.. rst-class:: classref-annotation

**@warning_ignore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore>`

Marque l'instruction suivante pour ignorer le ``warning`` spécifié. Voir :doc:`le système d’avertissement GDScript <../tutorials/scripting/gdscript/warning_system>`.

::

    func test():
        print("hello")
        return
        @warning_ignore("unreachable_code")
        print("unreachable")

Voir aussi :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` et :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_restore:

.. rst-class:: classref-annotation

**@warning_ignore_restore**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_restore>`

Arrête d'ignorer les types d'avertissement énumérés après :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>`. L'ignorance des types d'avertissement spécifiés sera réinitialisée aux paramètres de projet. Cette annotation peut être omise pour ignorer les types d'avertissement jusqu'à la fin du fichier.

\ **Note :** Contrairement à la plupart des autres annotations, les arguments de l'annotation :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` doivent être des littéraux de chaîne (les expressions constantes ne sont pas supportées).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_annotation_@warning_ignore_start:

.. rst-class:: classref-annotation

**@warning_ignore_start**\ (\ warning\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_@GDScript_annotation_@warning_ignore_start>`

Commence à ignorer les types d'avertissement listés jusqu'à la fin du fichier ou l'annotation :ref:`@warning_ignore_restore<class_@GDScript_annotation_@warning_ignore_restore>` avec le type d'avertissement donné.

::

    func test():
    var a = 1 # Avertissement (si activé dans les paramètres du projet).
    @warning_ignore_start("unused_variable")
    var b = 2 # Aucun avertissement.
    c = 3 # Aucun avertissement.
    @warning_ignore_restore("unused_variable")
    var d = 4 # Avertissement (si activé dans les paramètres du projet).

\ **Note :** Pour supprimer un seul avertissement, utilisez plutôt :ref:`@warning_ignore<class_@GDScript_annotation_@warning_ignore>`.

\ **Note :** Contrairement à la plupart des autres annotations, les arguments de l'annotation :ref:`@warning_ignore_start<class_@GDScript_annotation_@warning_ignore_start>` doivent être des littéraux de chaîne (les expressions constantes ne sont pas supportées).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_@GDScript_method_Color8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **Color8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) :ref:`🔗<class_@GDScript_method_Color8>`

**Obsolète :** Use :ref:`Color.from_rgba8()<class_Color_method_from_rgba8>` instead.

Renvoie une :ref:`Color<class_Color>` construite à partir des niveaux de rouge (``r8``), de vert (``g8``), de bleu (``b8``) et éventuellement de transparence (ou alpha : ``a8``). Chaque niveau est représenté par un entier qui sera divisé par ``255.0`` pour obtenir la valeur de l'attribut associé. Utiliser :ref:`Color8()<class_@GDScript_method_Color8>` à la place du constructeur :ref:`Color<class_Color>` standard est utile lorsque vous devez faire correspondre des valeurs de couleur exactes dans une :ref:`Image<class_Image>`.

::

    var red = Color8(255, 0, 0)             # Même effet que Color(1, 0, 0).
    var dark_blue = Color8(0, 0, 51)        # Même effet que Color(0, 0, 0.2).
    var my_color = Color8(306, 255, 0, 102) # Même effet que Color(1.2, 1, 0, 0.4).

\ **Note :** En raison de la précision inférieure de :ref:`Color8()<class_@GDScript_method_Color8>` par rapport au constructeur :ref:`Color<class_Color>` standard, une couleur créée avec la :ref:`Color8()<class_@GDScript_method_Color8>` ne sera généralement pas égale à la même couleur créée avec le constructeur :ref:`Color<class_Color>` standard. Utilisez :ref:`Color.is_equal_approx()<class_Color_method_is_equal_approx>` pour les comparaisons afin d'éviter les problèmes d'erreur de précision en virgule flottante.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_assert:

.. rst-class:: classref-method

|void| **assert**\ (\ condition\: :ref:`bool<class_bool>`, message\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_@GDScript_method_assert>`

Vérifie que la ``condition`` est vraie (``true``). Si la ``condition`` est fausse (``false``), une erreur est générée. Lors de l'exécution à partir de l'éditeur, le projet en cours d'exécution sera également mis en pause jusqu'à ce que vous le repreniez. Cela peut être utilisé comme une alternative plus radicale à :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` pour signaler des erreurs aux développeurs de projets ou utilisateurs de plugins.

Un ``message`` facultatif peut être affiché en plus du message générique "Assertion failed". Vous pouvez l'utiliser pour fournir des détails supplémentaires sur la raison de l'échec de l'assertion.

\ **Attention :** Par souci de performance, le code inclus dans :ref:`assert()<class_@GDScript_method_assert>` n'est exécuté que dans les builds de débogage ou quand vous lancez votre projet depuis l'éditeur. N'incluez pas de code qui modifie l'état du script dans un appel à :ref:`assert()<class_@GDScript_method_assert>`. Sinon, votre projet aura un fonctionnement différent une fois exporté pour la production (release build).

::

    # Imaginez que nous voulons une vitesse toujours comprise entre 0 et 20.
    var speed = -10
    assert(speed < 20) # Vrai, le programme continue.
    assert(speed >= 0) # Faux, le programme s'interrompt.
    assert(speed >= 0 and speed < 20) # Vous pouvez aussi combiner les deux conditions en une seule vérification.
    assert(speed < 20, "speed = %f, mais la limite de vitesse est 20" % speed) # Affiche un message avec de plus amples détails.

\ **Note :** :ref:`assert()<class_@GDScript_method_assert>` est un mot-clé, pas une fonction. Vous ne pouvez donc pas y accéder en tant que :ref:`Callable<class_Callable>` ou l'utiliser dans des expressions.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_char:

.. rst-class:: classref-method

:ref:`String<class_String>` **char**\ (\ code\: :ref:`int<class_int>`\ ) :ref:`🔗<class_@GDScript_method_char>`

Renvoie un caractère unique (en tant que :ref:`String<class_String>` de longueur 1) du point de code Unicode ``code`` donné.

::

    print(char(65))     # Affiche "A"
    print(char(129302)) # Affiche "🤖" (emoji tête de robot)

C'est l'inverse de :ref:`ord()<class_@GDScript_method_ord>`. Voir aussi :ref:`String.chr()<class_String_method_chr>` et :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_convert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **convert**\ (\ what\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ) :ref:`🔗<class_@GDScript_method_convert>`

**Obsolète :** Use :ref:`@GlobalScope.type_convert()<class_@GlobalScope_method_type_convert>` instead.

Convertit ``what`` en le type ``type`` de la meilleure manière possible. Le ``type`` utilise les valeurs de :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

::

    var a = [4, 2.5, 1.2]
    print(a is Array) # Affiche true

    var b = convert(a, TYPE_PACKED_BYTE_ARRAY)
    print(b)          # Affiche [4, 2, 1]
    print(b is Array) # Affiche false

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_dict_to_inst:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **dict_to_inst**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_@GDScript_method_dict_to_inst>`

**Obsolète :** Consider using :ref:`JSON.to_native()<class_JSON_method_to_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Convertit un ``dictionary`` (créé précédemment avec :ref:`inst_to_dict()<class_@GDScript_method_inst_to_dict>`) à nouveau en une instance d'Objet. Utile pour la dé-sérialisation.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_get_stack:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_get_stack>`

Renvoie un tableau de dictionnaires représentant la pile d'appels courante.

::

    func _ready():
        foo()

    func foo():
        bar()

    func bar():
        print(get_stack())

En partant de ``_ready()``, ``bar()`` afficherait :

.. code:: text

    [{function:bar, line:12, source:res://script.gd}, {function:foo, line:9, source:res://script.gd}, {function:_ready, line:6, source:res://script.gd}]

Voir aussi :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>`, et :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note :** Par défaut, les traces d'appel ne sont disponibles que dans les builds d'éditeur et débogage. Pour les activer dans les builds de release aussi, vous devez activer :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_inst_to_dict:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **inst_to_dict**\ (\ instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_@GDScript_method_inst_to_dict>`

**Obsolète :** Consider using :ref:`JSON.from_native()<class_JSON_method_from_native>` or :ref:`Object.get_property_list()<class_Object_method_get_property_list>` instead.

Renvoie l'``instance`` donnée convertie en un :ref:`Dictionary<class_Dictionary>`. Peut s'avérer utile pour la sérialisation.

::

    var foo = "bar"
    func _ready():
        var d = inst_to_dict(self)
        print(d.keys())
        print(d.values())

Affiche :

.. code:: text

    [@subpath, @path, foo]
    [, res://test.gd, bar]

\ **Remarque :** Cette fonction ne peut être utilisée que pour sérialiser des objets ayant un :ref:`GDScript<class_GDScript>` associé stocké dans un fichier séparé. Les objets sans script associé, avec un script écrit dans un autre langage, ou encore avec un script intégré ne sont pas supportés.

\ **Remarque :** Cette fonction n'est pas récursive. Ce qui veut dire que les objets imbriqués ne seront pas représentés sous forme de dictionnaire. Aussi, les propriétés passées par référence (:ref:`Object<class_Object>`, :ref:`Dictionary<class_Dictionary>`, :ref:`Array<class_Array>`, et tableaux compactés) seront copiées par référence, et pas dupliquées.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_is_instance_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_instance_of**\ (\ value\: :ref:`Variant<class_Variant>`, type\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_is_instance_of>`

Renvoie ``true`` si ``value`` est une instance du type ``type``. La valeur de ``type`` doit être l'une des suivantes :

- Une constante de l'énumération :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, par exemple :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>`.

- Une classe dérivée de :ref:`Object<class_Object>` qui existe dans :ref:`ClassDB<class_ClassDB>`, par exemple :ref:`Node<class_Node>`.

- Un :ref:`Script<class_Script>` (vous pouvez utiliser n'importe quelle classe, y compris une classe interne).

Contrairement à l'opérande droit de l'opérateur ``is``, ``type`` peut être une valeur non constante. L'opérateur ``is`` prend en charge davantage de fonctionnalités (telles que les tableaux typés). Utilisez l'opérateur au lieu de cette méthode si vous n'avez pas besoin d'une vérification dynamique des types.

\ **Exemples :**\ 

::

    print(is_instance_of(a, TYPE_INT))
    print(is_instance_of(a, Node))
    print(is_instance_of(a, MaClasse))
    print(is_instance_of(a, MaClasse.ClasseInterne))

\ **Note :** Si ``value`` et/ou ``type`` sont des objets libérés (voir :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`), ou si ``type`` n'est pas l'une des options ci-dessus, cette méthode lèvera une erreur d'exécution.

Voir aussi :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, :ref:`type_exists()<class_@GDScript_method_type_exists>`, :ref:`Array.is_same_typed()<class_Array_method_is_same_typed>` (et les autres méthodes de :ref:`Array<class_Array>`).

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **len**\ (\ var\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_@GDScript_method_len>`

Renvoie la longueur du Variant ``var``. La longueur peut être le nombre de caractères d'une :ref:`String<class_String>`, le nombre d'éléments de n'importe quel type de tableau ou la taille de :ref:`Dictionary<class_Dictionary>`. Pour tout autre type de Variant, une erreur d’exécution est générée et l’exécution est interrompue.

::

    a = [1, 2, 3, 4]
    len(a) # Renvoie 4

    b = "Hello!"
    len(b) # Renvoie 6

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_load>`

Renvoie une :ref:`Resource<class_Resource>` depuis le système de fichiers localisé au chemin absolu ``path``. Sauf si cela est déjà référencé autre part (comme dans un autre script ou dans la scène), la ressource est chargée depuis le disque sur un appel de fonction, qui peut causer un petit délai, en particulier pendant le chargement de larges scènes. Pour éviter des délais inutiles lorsque vous chargez quelque chose plusieurs fois, vous pouvez stocker la ressource dans une variable ou utiliser :ref:`preload()<class_@GDScript_method_preload>`. Cette méthode est équivalent à utiliser :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` avec :ref:`ResourceLoader.CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

\ **Note :** Les chemins des ressources peuvent être obtenus en faisant un clic droit sur une ressource dans la barre d'outils du système de fichiers et en choisissant "Copier le chemin", ou en déplaçant le fichier du système de fichiers vers le script actuel.

::

    # Charge une scène appelée "main" située dans la racine du répertoire du projet et la stocke dans une variable.
    var main = load("res://main.tscn") # main contiendra une ressource PackedScene.

\ **Important :** Les chemins relatifs *ne sont pas* par rapport au script appelant cette méthode, à la place il est préfixé avec ``"res://"``. Le chargement depuis des chemins relatifs pourrait ne pas fonctionner comme prévu.

Cette fonction est une version simplifiée de :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, qui peut être utilisée pour des scénarios plus avancés.

\ **Note :** Les fichiers doivent être importés dans le moteur de jeu en premier pour qu'ils soient chargés en utilisant cette fonction. Si vous voulez importer des :ref:`Image<class_Image>`\ s durant l'exécution, vous pouvez utiliser :ref:`Image.load()<class_Image_method_load>`. Si vous voulez importer des fichiers audios, vous pouvez utiliser l'extrait décrit dans :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Note :** Si :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` vaut ``true``, :ref:`load()<class_@GDScript_method_load>` ne pourra pas lire les fichiers convertis dans un projet exporté. Si vous comptez sur le chargement au moment de l'exécution des fichiers présents dans le PCK, définissez :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` sur ``false``.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_ord:

.. rst-class:: classref-method

:ref:`int<class_int>` **ord**\ (\ char\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_ord>`

Renvoie un entier représentant le point de code Unicode du caractère ``char`` donné, qui devrait être une chaîne de longueur 1.

::

    print(ord("A")) # Affiche 65
    print(ord("🤖")) # Affiche 129302

C'est l'inverse de :ref:`char()<class_@GDScript_method_char>`. Voir aussi :ref:`String.chr()<class_String_method_chr>` et :ref:`String.unicode_at()<class_String_method_unicode_at>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_preload:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **preload**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_@GDScript_method_preload>`

Renvoie la :ref:`Resource<class_Resource>` localisée à ``path`` dans le système de fichiers. Pendant le run-time, la ressource est chargée lors de la lecture initiale du script. Cette fonction agit efficacement comme une référence à cette ressource. Notez que cette méthode nécessite que ``path`` soit un :ref:`String<class_String>` constant. Si vous voulez charger une ressource depuis un chemin variable/dynamique, utilisez :ref:`load()<class_@GDScript_method_load>`.

\ **Note :** Les chemins des ressources peuvent être obtenus en cliquant avec le bouton droit sur la ressource dans la fenêtre des Assets puis en choisissant "Copier le chemin", ou en faisant glisser le fichier depuis la fenêtre "Système de fichiers" vers le script courant.

::

    # Créer une instance d'une scène.
    var diamond = preload("res://diamond.tscn").instantiate()

\ **Note :** :ref:`preload()<class_@GDScript_method_preload>` est un mot-clé, pas une fonction. Vous ne pouvez donc pas y accéder en tant que :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_debug:

.. rst-class:: classref-method

|void| **print_debug**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_print_debug>`

Comme :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`, mais inclut l'image de la pile actuelle lors de l'exécution avec le débogueur actif.

La sortie dans la console ressemblerait à ceci :

.. code:: text

    Test print
    At: res://test.gd:15:_process()

Voir aussi :ref:`print_stack()<class_@GDScript_method_print_stack>`, :ref:`get_stack()<class_@GDScript_method_get_stack>`, et :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note :** Par défaut, les traces d'appel ne sont disponibles que dans les builds d'éditeur et débogage. Pour les activer dans les builds de release aussi, vous devez activer :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_print_stack:

.. rst-class:: classref-method

|void| **print_stack**\ (\ ) :ref:`🔗<class_@GDScript_method_print_stack>`

Affiche une trace de pile à l'emplacement actuel du code.

La sortie dans la console peut ressembler à ce qui suit :

.. code:: text

    Frame 0 - res://test.gd:16 in function '_process'

Voir aussi :ref:`print_debug()<class_@GDScript_method_print_debug>`, :ref:`print_stack()<class_@GDScript_method_print_stack>`, et :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Note :** Par défaut, les traces d'appel ne sont disponibles que dans les builds d'éditeur et débogage. Pour les activer dans les builds de release aussi, vous devez activer :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_range:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **range**\ (\ ...\ ) |vararg| :ref:`🔗<class_@GDScript_method_range>`

Renvoie un tableau avec l'intervalle donné. :ref:`range()<class_@GDScript_method_range>` peut être appelée de trois façons :

\ ``range(n : int)``\  : Commence à 0, augmente par pas de 1, et s'arrête *avant* ``n``. L'argument ``n`` est **exclusif**.

\ ``range(b : int, n : int)``\  : Commence à ``b``, augmente par pas de 1, et s'arrête *avant* ``n``. Les arguments ``b`` et ``n`` sont **inclusifs** et **exclusifs**, respectivement.

\ ``range(b : int, n : int, s : int)``\  : Commence à ``b``, augmente/diminue par pas de ``s``, et s'arrête *avant* ``n``. Les arguments ``b`` et ``n`` sont **inclusifs**, et **exclusifs**, respectivement. L'argument ``s`` **peut** être négatif, mais pas ``0``. Si ``s`` est ``0``, un message d'erreur est affiché.

\ :ref:`range()<class_@GDScript_method_range>` convertit tous les arguments en :ref:`int<class_int>` avant le traitement.

\ **Note :** Renvoie un tableau vide si aucune valeur ne respecte les contraintes (par ex. ``range(2, 5, -1)`` ou ``range(5, 5, 1)``).

\ **Exemples :**\ 

::

    print(range(4))             # Affiche [0, 1, 2, 3]
    print(range(2, 5))        # Affiche [2, 3, 4]
    print(range(0, 6, 2))   # Affiche [0, 2, 4]
    print(range(4, 1, -1)) # Affiche [4, 3, 2]

Pour parcourir un :ref:`Array<class_Array>` à l'envers, utilisez :

::

    var array = [3, 6, 9]
    for i in range(array.size() - 1, -1, -1):
        print(array[i])

Sortie :

::

    9
    6
    3

Pour itérer sur un :ref:`float<class_float>`, convertissez les dans la boucle.

::

    for i in range (3, 0, -1):
        print(i / 10.0)

Sortie :

.. code:: text

    0.3
    0.2
    0.1

.. rst-class:: classref-item-separator

----

.. _class_@GDScript_method_type_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **type_exists**\ (\ type\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_@GDScript_method_type_exists>`

Renvoie ``true`` si la classe dérivée :ref:`Object<class_Object>` donnée existe dans :ref:`ClassDB<class_ClassDB>`. Notez que les types de données :ref:`Variant<class_Variant>` ne sont pas enregistrés dans :ref:`ClassDB<class_ClassDB>`.

::

    type_exists("Sprite2D") # Renvoie true
    type_exists("ClasseNonExistante") # Renvoie false

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
