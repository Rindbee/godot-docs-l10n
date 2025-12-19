:github_url: hide

.. _class_Expression:

Expression
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe qui enregistre une expression que vous pouvez exécuter.

.. rst-class:: classref-introduction-group

Description
-----------

Une expression peut être faite de n'importe quelle opération arithmétique, d'appels de fonctions mathématiques intégrées, d'appels de méthode sur une instance donnée, ou de constructeurs de type intégrés.

Un exemple d'expression utilisant les fonctions mathématiques intégrées serait ``sqrt(pow(3,2) + pow(4,2))``.

Dans l'exemple suivant nous utilisons un nœud :ref:`LineEdit<class_LineEdit>` pour écrire notre expression et afficher le résultat.


.. tabs::

 .. code-tab:: gdscript

    var expression = Expression.new()

    func _ready():
        $LineEdit.connect("text_entered", self, "_on_text_entered")

    func _on_text_entered(command):
        var erreur = expression.parse(command, [])
        if erreur != OK:
            print(expression.get_error_text())
            return
        var resultat = expression.execute([], null, true)
        if not expression.has_execute_failed():
            $LineEdit.text = str(resultat)

 .. code-tab:: csharp

    private Expression _expression = new Expression();

    public override void _Ready()
    {
        GetNode<LineEdit>("LineEdit").TextSubmitted += OnTextEntered;
    }

    private void OnTextEntered(string command)
    {
        Error erreur = _expression.Parse(command);
        if (erreur != Error.Ok)
        {
            GD.Print(_expression.GetErrorText());
            return;
        }
        Variant resultat = _expression.Execute();
        if (!_expression.HasExecuteFailed())
        {
            GetNode<LineEdit>("LineEdit").Text = resultat.ToString();
        }
    }



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Évaluation des expressions <../tutorials/scripting/evaluating_expressions>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`execute<class_Expression_method_execute>`\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_text<class_Expression_method_get_error_text>`\ (\ ) |const|                                                                                                                                                                         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_execute_failed<class_Expression_method_has_execute_failed>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_Expression_method_parse>`\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ )                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Expression_method_execute:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **execute**\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Expression_method_execute>`

Exécute l'expression qui a été précédemment parsée par :ref:`parse()<class_Expression_method_parse>` et renvoie le résultat. Avant d'utiliser l'objet renvoyé, vous devez vérifier si la méthode a échoué en appelant :ref:`has_execute_failed()<class_Expression_method_has_execute_failed>`.

Si vous définissez des variables d'entrée dans :ref:`parse()<class_Expression_method_parse>`, vous pouvez spécifier leurs valeurs dans le tableau "inputs", dans le même ordre.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_get_error_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_text**\ (\ ) |const| :ref:`🔗<class_Expression_method_get_error_text>`

Renvoie le texte de l'erreur si :ref:`parse()<class_Expression_method_parse>` ou :ref:`execute()<class_Expression_method_execute>` a échoué.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_has_execute_failed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_execute_failed**\ (\ ) |const| :ref:`🔗<class_Expression_method_has_execute_failed>`

Renvoie ``true`` si :ref:`execute()<class_Expression_method_execute>` a échoué.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ ) :ref:`🔗<class_Expression_method_parse>`

Parse l'expression et renvoie un code d'erreur :ref:`Error<enum_@GlobalScope_Error>`.

Vous pouvez en option spécifier des noms de variables qui peuvent apparaître dans l'expression avec ``input_names``, afin que vous puissiez les lier lorsqu'elle est exécutée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
