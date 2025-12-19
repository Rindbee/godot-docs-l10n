:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un effet personnalisé pour un :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Description
-----------

Un effet personnalisé pour un :ref:`RichTextLabel<class_RichTextLabel>`, qui peut être chargé dans l'inspecteur :ref:`RichTextLabel<class_RichTextLabel>` ou en utilisant :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Note :** Pour qu'un **RichTextEffect** soit utilisable, une balise BBCode doit être définie sous forme de variable membre nommée ``bbcode`` dans le script.


.. tabs::

 .. code-tab:: gdscript

    # Le RichTextEffect sera utilisable comme ceci : `[exemple]Du texte[/exemple]`
    var bbcode = "exemple"

 .. code-tab:: csharp

    // Le RichTextEffect sera utilisable comme ceci : `[exemple]Du texte[/exemple]`
    string bbcode = "example";



\ **Note :** Dès qu'un :ref:`RichTextLabel<class_RichTextLabel>` contient au moins un **RichTextEffect**, il va traiter l'effet en permanence tant que le projet ne sera pas mis en pause. Ceci peut impacter négativement la vie de la batterie.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`BBCode dans RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

- `Projet de test pour RichTextEffect (tierce partie) <https://github.com/Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

Redéfinissez cette méthode pour modifier les propriétés de ``char_fx``. Cette méthode doit renvoyer ``true`` si le caractère peut être transformé avec succès. Si la méthode renvoie ``false``, l'effet sera ignoré pour éviter de mal afficher le texte.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
