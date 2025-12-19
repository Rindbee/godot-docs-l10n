:github_url: hide

.. _class_ScriptCreateDialog:

ScriptCreateDialog
==================

**Hérite de :** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

La fenêtre contextuelle de l'éditeur Godot pour créer de nouveaux fichiers :ref:`Script<class_Script>`.

.. rst-class:: classref-introduction-group

Description
-----------

Le **ScriptCreateDialog** crée des fichiers de script selon un modèle donné pour un langage de script donné. L'utilisation standard est de configurer ses champs avant d'appeler l'une des méthodes :ref:`Window.popup()<class_Window_method_popup>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var dialog = ScriptCreateDialog.new();
        dialog.config("Node", "res://nouveau_noeud.gd") # Pour les types du moteur.
        dialog.config("\"res://noeud_de_base.gd\"", "res://noeud_derive.gd") # Pour les types de scripts.
        dialog.popup_centered()

 .. code-tab:: csharp

    public override void _Ready()
    {
        var dialog = new ScriptCreateDialog();
        dialog.Config("Node", "res://NouveauNoeud.cs"); // Pour les types du moteur.
        dialog.Config("\"res://NoeudDeBase.cs\"", "res://NoeudDerive.cs"); // Pour les types de scripts.
        dialog.PopupCentered();
    }



.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | dialog_hide_on_ok | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | ok_button_text    | ``"Create"`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_ok_button_text>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title             | ``"Attach Node Script"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`config<class_ScriptCreateDialog_method_config>`\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ScriptCreateDialog_signal_script_created:

.. rst-class:: classref-signal

**script_created**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptCreateDialog_signal_script_created>`

Émis quand un utilisateur clique sur le bouton OK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ScriptCreateDialog_method_config:

.. rst-class:: classref-method

|void| **config**\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ScriptCreateDialog_method_config>`

Préremplit les champs requis pour configurer le ScriptCreateDialog pour utilisation.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
