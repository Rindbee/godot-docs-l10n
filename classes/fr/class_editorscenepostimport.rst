:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Post-traite les scènes après l'importation.

.. rst-class:: classref-introduction-group

Description
-----------

Imported scenes can be automatically modified right after import by setting their **Custom Script** Import property to a ``tool`` script that inherits from this class.

The :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` callback receives the imported scene's root node and returns the modified version of the scene:


.. tabs::

 .. code-tab:: gdscript

    @tool # Needed so it runs in editor.
    extends EditorScenePostImport

    # This sample changes all node names.
    # Called right after the scene is imported and gets the root node.
    func _post_import(scene):
        # Change all node names to "modified_[oldnodename]"
        iterate(scene)
        return scene # Remember to return the imported scene

    func iterate(node):
        if node != null:
            node.name = "modified_" + node.name
            for child in node.get_children():
                iterate(child)

 .. code-tab:: csharp

    using Godot;

    // This sample changes all node names.
    // Called right after the scene is imported and gets the root node.
    [Tool]
    public partial class NodeRenamer : EditorScenePostImport
    {
        public override GodotObject _PostImport(Node scene)
        {
            // Change all node names to "modified_[oldnodename]"
            Iterate(scene);
            return scene; // Remember to return the imported scene
        }

        public void Iterate(Node node)
        {
            if (node != null)
            {
                node.Name = $"modified_{node.Name}";
                foreach (Node child in node.GetChildren())
                {
                    Iterate(child);
                }
            }
        }
    }



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Importing 3D scenes: Configuration: Using import scripts for automation <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`_post_import<class_EditorScenePostImport_private_method__post_import>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_source_file<class_EditorScenePostImport_method_get_source_file>`\ (\ ) |const|                                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

Appelé après l'importation de la scène. Cette méthode doit renvoyer la version modifiée de la scène.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

Renvoie le chemin du fichier source qui vient d'être importé (par ex. : ``res://scene.dae``).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
