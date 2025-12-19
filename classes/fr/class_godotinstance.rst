:github_url: hide

.. _class_GodotInstance:

GodotInstance
=============

**Hérite de :** :ref:`Object<class_Object>`

Provides access to an embedded Godot instance.

.. rst-class:: classref-introduction-group

Description
-----------

GodotInstance represents a running Godot instance that is controlled from an outside codebase, without a perpetual main loop. It is created by the C API ``libgodot_create_godot_instance``. Only one may be created per process.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_in<class_GodotInstance_method_focus_in>`\ (\ )     |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_out<class_GodotInstance_method_focus_out>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_started<class_GodotInstance_method_is_started>`\ (\ ) |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`iteration<class_GodotInstance_method_iteration>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`pause<class_GodotInstance_method_pause>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`resume<class_GodotInstance_method_resume>`\ (\ )         |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`start<class_GodotInstance_method_start>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GodotInstance_method_focus_in:

.. rst-class:: classref-method

|void| **focus_in**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_in>`

Notifies the instance that it is now in focus.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_focus_out:

.. rst-class:: classref-method

|void| **focus_out**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_out>`

Notifies the instance that it is now not in focus.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) :ref:`🔗<class_GodotInstance_method_is_started>`

Returns ``true`` if this instance has been fully started.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_iteration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **iteration**\ (\ ) :ref:`🔗<class_GodotInstance_method_iteration>`

Runs a single iteration of the main loop. Returns ``true`` if the engine is attempting to quit.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_GodotInstance_method_pause>`

Notifies the instance that it is going to be paused.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_resume:

.. rst-class:: classref-method

|void| **resume**\ (\ ) :ref:`🔗<class_GodotInstance_method_resume>`

Notifies the instance that it is being resumed.

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_start:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start**\ (\ ) :ref:`🔗<class_GodotInstance_method_start>`

Finishes this instance's startup sequence. Returns ``true`` on success.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
