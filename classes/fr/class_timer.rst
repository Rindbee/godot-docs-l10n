:github_url: hide

.. _class_Timer:

Timer
=====

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un compte à rebours.

.. rst-class:: classref-introduction-group

Description
-----------

Le nœud **Timer** est un minuteur de compte à rebours et est le moyen le plus simple de gérer la logique basée sur le temps dans le moteur. Quand un minuteur atteint la fin de son temps d'attente :ref:`wait_time<class_Timer_property_wait_time>`, il émettra le signal :ref:`timeout<class_Timer_signal_timeout>`.

Après qu'un minuteur entre dans l'arborescence de scène, il peut être démarré manuellement avec :ref:`start()<class_Timer_method_start>`. Un nœud minuteur est également démarré automatiquement si :ref:`autostart<class_Timer_property_autostart>` vaut ``true``.

Sans nécessiter beaucoup de code, un nœud minuteur peut être ajouté et configuré dans l'éditeur. Le signal :ref:`timeout<class_Timer_signal_timeout>` qu'il émet peut également être connecté par le dock Nœud dans l'éditeur :

::

    func _on_timer_timeout():
        print("C'est le moment d'attaquer !")

\ **Note :** Pour créer un minuteur à usage unique sans instancier un nœud, utilisez :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Note :** Les Timers sont affectés par :ref:`Engine.time_scale<class_Engine_property_time_scale>` à moins que :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` ne vaille ``true``. Plus l'échelle du temps sera élevée, plus les minuteurs se termineront tôt. Combien de fois un minuteur effectue son traitement peut dépendre du framerate ou de :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Émis lorsque le minuteur atteint la fin.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Mettre à jour le minuteur à chaque trame de traitement de la physique (voir :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Mettre à jour le minuteur à chaque trame de traitement (de rendu) (voir :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

Si ``true``, le minuteur démarrera immédiatement lorsqu'il entre dans l'arborescence de scène.

\ **Note :** Après que le minuteur entre dans l'arborescence, cette propriété est automatiquement définie à ``false``.

\ **Note :** Cette propriété ne fait rien lorsque le minuteur s'exécute dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

Si ``true``, le minuteur ignorera :ref:`Engine.time_scale<class_Engine_property_time_scale>` et se mettra à jour avec le temps écoulé réel.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

Si ``true``, le minuteur s'arrêtera après avoir atteint la fin. Sinon, comme par défaut, le minuteur redémarrera automatiquement.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Si ``true``, le minuteur est mis en pause. Un minuteur en pause ne fait pas de traitement jusqu'à ce que cette propriété soit remise sur ``false``, même lorsque :ref:`start()<class_Timer_method_start>` est appelée. Voir aussi :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Spécifie quand le minuteur est mis à jour durant la boucle principale.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

Le temps restant du minuteur en secondes. Il vaut toujours ``0`` si le minuteur est arrêté.

\ **Note :** Cette propriété est en lecture seule et ne peut être modifiée. Elle est basée sur :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

Le temps nécessaire pour que le minuteur se termine, en secondes. Cette propriété peut également être définie à chaque fois que :ref:`start()<class_Timer_method_start>` est appelée.

\ **Note :** Les minuteurs ne peuvent traiter qu'une fois par trame physique ou de traitement (selon :ref:`process_callback<class_Timer_property_process_callback>`). Un framerate instable peut entraîner une fin inconsistante du minuteur, ce qui est particulièrement visible si le temps d'attente est inférieur à environ ``0.05`` secondes. Pour les minuteurs très courts, il est recommandé d'écrire votre propre code au lieu d'utiliser un nœud **Timer**. Les minuteurs sont également affectés par :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Renvoie ``true`` si le minuteur est arrêté ou n'a pas commencé.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Démarre le minuteur, ou réinitialise le minuteur s'il a déjà commencé. Échoue si le minuteur n'est pas à l'intérieur de l'arborescence de scène. Si ``time_sec`` est supérieur à ``0``, cette valeur est utilisée pour le temps d'attente :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Note :** Cette méthode ne reprend pas un minuteur en pause. Voir :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Arrête le minuteur. Voir aussi :ref:`paused<class_Timer_property_paused>`. Contrairement à :ref:`start()<class_Timer_method_start>`, cela peut être appelé en toute sécurité si le minuteur n'est pas à l'intérieur de l'arborescence de scène.

\ **Note :** Appeler :ref:`stop()<class_Timer_method_stop>` n'émet pas le signal :ref:`timeout<class_Timer_signal_timeout>`, car le minuteur n'est pas considéré comme étant fini. Si cela est souhaité, utilisez ``$Timer.timeout.emit()`` après avoir appelé :ref:`stop()<class_Timer_method_stop>` pour émettre manuellement le signal.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
