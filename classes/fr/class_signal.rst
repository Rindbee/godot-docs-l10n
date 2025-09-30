:github_url: hide

.. _class_Signal:

Signal
======

Un type intégré représentant un signal d'un :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Description
-----------

**Signal** est un type :ref:`Variant<class_Variant>` intégré qui représente un signal d'une instance :ref:`Object<class_Object>`. Comme tous les types :ref:`Variant<class_Variant>`, il peut être stocké dans des variables et transmis à des fonctions. Les signaux permettent à tous les :ref:`Callable<class_Callable>`\ s connectés (et par extension leurs objets respectifs) d'écouter et de réagir aux événements, sans se référencer directement l'un l'autre. Cela permet de garantir la flexibilité du code et de simplifier sa gestion. Vous pouvez vérifier si un :ref:`Object<class_Object>` possède un nom de signal spécifique grâce à :ref:`Object.has_signal()<class_Object_method_has_signal>`.

En GDScript, les signaux peuvent être déclarés avec le mot-clé ``signal``. En C#, vous pouvez utiliser l'attribut ``[Signal]`` sur un délégué.


.. tabs::

 .. code-tab:: gdscript

    signal attaque

    # Des arguments supplémentaires peuvent être déclarés.
    # Ces arguments doivent être transmis lors de l'émission du signal.
    signal item_dropped(nom_objet, montant)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // Des arguments supplémentaires peuvent être déclarés.
    // Ces arguments doivent être passés lors de l'émission du signal.
    [Signal]
    delegate void ItemDroppedEventHandler(string nomObjet, int montant);



Connecter des signaux est l'une des opérations les plus courantes dans Godot, et l'API offre de nombreuses options pour ce faire, décrites plus loin. Le bloc de code ci-dessous illustre l'approche recommandée.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var bouton = Button.new()
        # `button_down` est un type Variant de Signal. Nous appelons ainsi la méthode Signal.connect(), et pas Object.connect().
        # Voir la présentation ci-dessous pour une discussion plus en détail de l'API.
        bouton.button_down.connect(_on_button_down)

        # Cela suppose qu'une classe `Joueur` existe, et qui définit un signal `touche`.
        var joueur = Joueur.new()
        # Nous utilisons encore Signal.connect(), et nous utilisons aussi la méthode Callable.bind(),
        # qui renvoie un nouveau Callable avec les paramètres liés.
        joueur.hit.connect(_lorsque_joueur_touche.bind("épée", 100))

    func _on_button_down():
        print("Bouton appuyé !")

    func _lorsque_joueur_touche(type_arme, degats):
        print("Touché avec l'arme %s pour %d dégâts." % [type_arme, degats])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var bouton = new Button();
        // Le C# prend en charge le passage de signaux en tant qu'événements, nous pouvons donc utiliser cette construction idiomatique :
        bouton.ButtonDown += OnButtonDown;

        // Cela suppose qu'une classe `Joueur` existe, et qui définit un signal `touche`.
        var player = new Player();
        // Nous pouvons utiliser des lambdas lorsque nous devons lier des paramètres supplémentaires.
        player.Hit += () => LorsqueJoueurTouche("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Bouton appuyé !");
    }

    private void LorsqueJoueurTouche(string typeArme, int degats)
    {
        GD.Print($"Touché avec l'arme {typeArme} pour {typeArme} dégâts.");
    }



\ **\ ``Object.connect()`` ou ``Signal.connect()``?**\ 

Comme nous l'avons vu plus haut, la méthode recommandée pour connecter les signaux n'est pas la méthode :ref:`Object.connect()<class_Object_method_connect>`. Le bloc de code ci-dessous montre les quatre options de connexion des signaux, en utilisant soit cette ancienne méthode, soit la méthode recommandée :ref:`connect()<class_Signal_method_connect>`, et en utilisant soit un :ref:`Callable<class_Callable>` implicite, soit un :ref:`Callable<class_Callable>` défini manuellement.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var bouton = Button.new()
        # Option 1 : Object.connect() avec un Callable implicite pour la fonction définie.
        bouton.connect("button_down", _on_button_down)
        # Option 2 : Object.connect() avec un Callable construit en utilisant un objet cible et un nom de méthode.
        bouton.connect("button_down", Callable(self, "_on_button_down"))
        # Option 3 : Signal.connect() avec un Callable implicite pour la fonction définie.
        bouton.button_down.connect(_on_button_down)
        # Option 4 : Signal.connect() avec un Callable construit en utilisant un objet cible et un nom de méthode.
        bouton.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Bouton appuyé !")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var bouton = new Button();
        // Option 1 : En C#, nous pouvons utiliser les signaux comme des événements et s'y connecter avec cette syntaxe idiomatique :
        bouton.ButtonDown += OnButtonDown;
        // Option 2 : GodotObject.Connect() avec un Callable construit à partir d'un groupe de méthodes.
        bouton.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Option 3 : GodotObject.Connect() avec un Callable construit en utilisant un objet cible et un nom de méthode.
        bouton.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Bouton appuyé !");
    }



Bien que toutes les options aient le même résultat (le signal :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` de ``bouton`` sera connecté à ``_on_button_down``), **l'option 3** offre la meilleure validation : elle affichera une erreur à la compilation si le **Signal** ``button_down`` ou le :ref:`Callable<class_Callable>` ``_on_button_down`` ne sont pas définis. En revanche, **l'option 2** ne s'appuie que sur des noms de chaînes et ne pourra valider l'un ou l'autre nom qu'à l'exécution : elle générera une erreur à l'exécution si ``« button_down »`` n'est pas un signal, ou si ``« _on_button_down »`` n'est pas une méthode dans l'objet ``self``. La principale raison d'utiliser les options 1, 2 ou 4 serait si vous avez besoin d'utiliser des chaînes de caractères (par exemple pour connecter des signaux de manière programmatique sur la base de chaînes de caractères lues dans un fichier de configuration). Sinon, l'option 3 est la méthode recommandée (et la plus rapide).

\ **Lier et passer des paramètres :**\ 

La syntaxe pour lier des paramètres est :ref:`Callable.bind()<class_Callable_method_bind>`, qui renvoie une copie du :ref:`Callable<class_Callable>` avec ses paramètres liés.

Lors de l'appel de :ref:`emit()<class_Signal_method_emit>` ou de :ref:`Object.emit_signal()<class_Object_method_emit_signal>`, les paramètres du signal peuvent également être transmis. Les exemples ci-dessous illustrent la relation entre ces paramètres de signal et les paramètres liés.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Cela suppose qu'une classe `Joueur` existe, et qui définit un signal `touche`.
        var joueur = Joueur.new()
        # En utilisant Callable.bind().
        joueur.hit.connect(_lorsque_joueur_touche.bind("épée", 100))

        # Les paramètres ajoutés lors de l'émission du signal sont passés en premier.
        joueur.touche.emit("Seigneur des Ténèbres", 5)

    # Nous passons deux arguments lors de l'émission (`touche_par`, `niveau`),
    # et nous passons deux autres arguments lors de la connexion (`type_arme`, `degats`).
    func _lorsque_joueur_touche(touche_par, niveau, type_arme, degats):
        print("Touché par %s (niveau %d) avec l'arme %s pour %d dégâts." % [touche_par, niveau, type_arme, degats])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Cela suppose qu'une classe `Joueur` existe, et qui définit un signal `Touche`.
        var joueur = new Joueur();
        // Utilisation d'expressions lambda qui créent une encapsulation qui capture les paramètres supplémentaires.
        // L'expression lambda ne reçoit que les paramètres définis par le délégué du signal.
        joueur.Touche += (touchePar, niveau) => LorsqueJoueurTouche(touchePar, niveau, "épée", 100);

        // Les paramètres ajoutés lors de l'émission du signal sont passés en premier.
        joueur.EmitSignal(SignalName.Touche, "Seigneur des Ténèbres", 5);
    }

    // Nous passons deux arguments lors de l'émission (`touche_par`, `niveau`),
    // et nous passons deux autres arguments lors de la connexion (`type_arme`, `degats`).
    private void LorsqueJoueurTouche(string touchePar, int niveau, string typeArme, int degats)
    {
        GD.Print($"Touché par {touchePar} (niveau {leniveauvel}) avec l'arme {typeArme} for {degats} dégâts.");
    }



.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des signaux <../getting_started/step_by_step/signals>`

- `Les bases de GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ )                                                                                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ from\: :ref:`Signal<class_Signal>`\ )                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`connect<class_Signal_method_connect>`\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`disconnect<class_Signal_method_disconnect>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit<class_Signal_method_emit>`\ (\ ...\ ) |vararg| |const|                                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_connections<class_Signal_method_get_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_Signal_method_get_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Signal_method_get_object>`\ (\ ) |const|                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Signal_method_get_object_id>`\ (\ ) |const|                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_connections<class_Signal_method_has_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_connected<class_Signal_method_is_connected>`\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const|                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Signal_method_is_null>`\ (\ ) |const|                                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Signal_operator_neq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Signal_operator_eq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Construit un **Signal** vide sans objet ni nom de signal lié.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Construit un **Signal** comme une copie du **Signal** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Crée un objet **Signal** faisant référence à un signal nommé ``signal`` dans l'objet ``object`` spécifié.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

Connecte ce signal au ``callable`` spécifié. Des drapeaux ``flags`` optionnels peuvent aussi être ajoutés pour configurer le comportement de la connexion (voir les constantes :ref:`ConnectFlags<enum_Object_ConnectFlags>`). Vous pouvez fournir des arguments supplémentaires au ``callable`` connecté en utilisant :ref:`Callable.bind()<class_Callable_method_bind>`.

Un signal ne peut être connecté qu'une fois au même :ref:`Callable<class_Callable>`. Si le signal est déjà connecté, cette méthode renvoie :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` et génère une erreur, à moins que le signal ne soit connecté à :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Pour éviter cela, utilisez d'abord :ref:`is_connected()<class_Signal_method_is_connected>` pour vérifier les connexions existantes.

::

    for bouton in $Buttons.get_children():
        bouton.pressed.connect(_lorsque_appuye.bind(button))

    func _lorsque_appuye(button):
        print(bouton.name, " a été appuyé")

\ **Note :** Si l'objet ``callable`` est libéré, la connexion sera perdue.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Déconnecte ce signal du :ref:`Callable<class_Callable>` spécifié. Si la connexion n'existe pas, génère une erreur. Utilisez :ref:`is_connected()<class_Signal_method_is_connected>` pour vous assurer que la connexion existe.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Émet ce signal. Tous les :ref:`Callable<class_Callable>` connectés à ce signal seront déclenchés. Cette méthode prend en charge un nombre variable d'arguments, de sorte à ce que les paramètres peuvent être passés en tant que liste séparée par des virgules.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Renvoie un :ref:`Array<class_Array>` des connexions pour ce signal. Chaque connexion est représentée comme un :ref:`Dictionary<class_Dictionary>` qui contient trois entrées :

- ``signal`` est une référence à ce signal,

- ``callable`` est une référence au :ref:`Callable<class_Callable>` connecté,

- ``flags`` est une combinaison de drapeaux :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Renvoie le nom de ce signal.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Renvoie l'objet émettant ce signal.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Renvoie l'ID de l'objet émettant ce signal (voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Renvoie ``true`` si au moins un :ref:`Callable<class_Callable>` est connecté à ce signal.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Renvoie ``true`` si le :ref:`Callable<class_Callable>` spécifié est connecté à ce signal.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Renvoie ``true`` si ce **Signal** n'a pas d'objet et que le nom du signal est vide. Équivalent à ``signal == Signal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Renvoie ``true`` si les signaux ne partagent pas le même objet ou le même nom.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Renvoie ``true`` si les deux signaux partagent le même objet et le même nom.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
