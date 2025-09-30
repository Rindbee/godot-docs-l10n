:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un effet personnalisé pour un :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Description
-----------

A custom effect for a :ref:`RichTextLabel<class_RichTextLabel>`, which can be loaded in the :ref:`RichTextLabel<class_RichTextLabel>` inspector or using :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Note:** For a **RichTextEffect** to be usable, a BBCode tag must be defined as a member variable called ``bbcode`` in the script.


.. tabs::

 .. code-tab:: gdscript

    # The RichTextEffect will be usable like this: `[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // The RichTextEffect will be usable like this: `[example]Some text[/example]`
    string bbcode = "example";



\ **Note:** As soon as a :ref:`RichTextLabel<class_RichTextLabel>` contains at least one **RichTextEffect**, it will continuously process the effect unless the project is paused. This may impact battery life negatively.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`BBCode dans RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

- `Projet d'essai RichTextEffect (tierce-partie) <https://github.com/Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project>`__

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

Override this method to modify properties in ``char_fx``. The method must return ``true`` if the character could be transformed successfully. If the method returns ``false``, it will skip transformation to avoid displaying broken text.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
