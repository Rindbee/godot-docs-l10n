:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Minuteur à un coup.

.. rst-class:: classref-introduction-group

Description
-----------

Un minuteur à un usage unique géré par l’arborescence de scène, qui émet un signal :ref:`timeout<class_SceneTreeTimer_signal_timeout>` lors de la complétion. Voir aussi :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

Contrairement à :ref:`Timer<class_Timer>`, il ne nécessite pas l'instanciation d'un nœud. Habituellement utilisé pour créer un minuteur de délai à usage unique comme dans l'exemple suivant :


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("Le minuteur commence.")
        await get_tree().create_timer(1.0).timeout
        print("Le minuteur s'est fini.")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("Le minuteur commence.");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("Le minuteur s'est fini.");
    }



Le minuteur sera déréférencé après que son temps soit écoulé. Pour préserver le minuteur, vous pouvez garder une référence à celui-ci. Voir :ref:`RefCounted<class_RefCounted>`.

\ **Note :** Le minuteur est traité après tous les nœuds dans le cadre actuel, c'est-à-dire que la méthode :ref:`Node._process()<class_Node_private_method__process>` du nœud serait appelée avant le minuteur (ou :ref:`Node._physics_process()<class_Node_private_method__physics_process>` si ``process_in_physics`` dans :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` a été définie à ``true``).

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

Émis quand le minuteur atteint 0.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

Le temps restant (en secondes).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
