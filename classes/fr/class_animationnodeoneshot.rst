:github_url: hide

.. _class_AnimationNodeOneShot:

AnimationNodeOneShot
====================

**Hérite de :** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Joue une animation une fois dans un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une ressource pour ajouter à un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Ce nœud d'animation exécutera une sous-animation et renverra une fois qu'il aura terminé. Les temps de mélange pour les fondus d'ouverture et de fermeture peuvent être personnalisés, ainsi que les filtres.

Après avoir paramétré la requête et modifié la lecture de l'animation, ce nœud à lecture unique efface automatiquement la requête lors de la prochaine trame de traitement en définissant sa valeur ``request`` à :ref:`ONE_SHOT_REQUEST_NONE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE>`.


.. tabs::

 .. code-tab:: gdscript

    # Jouer l'animation enfant liée au port "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE

    # Annuler l'animation enfant liée au port "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT)
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT

    # Annuler l'animation enfant liée au port "shot" avec un fondu de fermeture.
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT)
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT

    # Obtenir l'état actuel (lecture seule).
    animation_tree.get("parameters/OneShot/active")
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/OneShot/active"]

    # Obtenir l'état interne actuel (lecture seule).
    animation_tree.get("parameters/OneShot/internal_active")
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/OneShot/internal_active"]

 .. code-tab:: csharp

    // Jouer l'animation enfant liée au port "shot".
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Fire);

    // Annuler l'animation enfant liée au port "shot".
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Abort);

    // Annuler l'animation enfant liée au port "shot" avec un fondu de fermeture.
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.FadeOut);

    // Obtenir l'état actuel (lecture seule).
    animationTree.Get("parameters/OneShot/active");

    // Obtenir l'état interne actuel (lecture seule).
    animationTree.Get("parameters/OneShot/internal_active");



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>`                           | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>`               | ``1.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_random_delay<class_AnimationNodeOneShot_property_autorestart_random_delay>` | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`break_loop_at_end<class_AnimationNodeOneShot_property_break_loop_at_end>`               | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadein_curve<class_AnimationNodeOneShot_property_fadein_curve>`                         |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadein_time<class_AnimationNodeOneShot_property_fadein_time>`                           | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadeout_curve<class_AnimationNodeOneShot_property_fadeout_curve>`                       |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` | :ref:`mix_mode<class_AnimationNodeOneShot_property_mix_mode>`                                 | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AnimationNodeOneShot_OneShotRequest:

.. rst-class:: classref-enumeration

enum **OneShotRequest**: :ref:`🔗<enum_AnimationNodeOneShot_OneShotRequest>`

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_NONE** = ``0``

L'état par défaut de la demande. Rien n'est fait.

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FIRE** = ``1``

La demande de jouer l'animation connectée au port "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_ABORT** = ``2``

La demande pour arrêter l'animation connectée au port "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FADE_OUT** = ``3``

La demande de faire un fondu sortant avec l'animation connectée au port "shot".

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeOneShot_MixMode:

.. rst-class:: classref-enumeration

enum **MixMode**: :ref:`🔗<enum_AnimationNodeOneShot_MixMode>`

.. _class_AnimationNodeOneShot_constant_MIX_MODE_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_BLEND** = ``0``

Mélange deux animations. Voir aussi :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`.

.. _class_AnimationNodeOneShot_constant_MIX_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_ADD** = ``1``

Mélange deux animations additivement. Voir aussi :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeOneShot_property_autorestart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autorestart** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autorestart**\ (\ )

Si ``true``, la sous-animation redémarre automatiquement après avoir fini.

En d'autres termes, pour commencer le redémarrage automatique, l'animation doit être jouée une fois avec la requête :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>`. La requête :ref:`ONE_SHOT_REQUEST_ABORT<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT>` arrête le redémarrage automatique, mais elle ne désactive pas la propriété :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` elle-même. Ainsi, la requête :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>` va démarrer encore le redémarrage automatique.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_delay** = ``1.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_delay**\ (\ )

Le délai après lequel le redémarrage automatique est déclenché, en secondes.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_random_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_random_delay** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_random_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_random_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_random_delay**\ (\ )

Si :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` est ``true``, un délai additionnel (en secondes) aléatoirement choisi entre 0 et cette valeur sera ajouté à :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Si ``true``, brise la boucle à la fin du cycle de boucle pour la transition, même si l'animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadein_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadein_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadein_curve**\ (\ )

Determines how cross-fading between animations is eased. If empty, the transition will be linear. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadein_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadein_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadein_time**\ (\ )

La durée du fondu d'ouverture. Par exemple, définir ceci à ``1.0`` pour une animation de 5 secondes produira un fondu enchaîné qui commence à 0 seconde et se termine à 1 seconde pendant l'animation.

\ **Note :** **AnimationNodeOneShot** transitionne l'état actuel après la fin du fondu.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadeout_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadeout_curve**\ (\ )

Determines how cross-fading between animations is eased. If empty, the transition will be linear. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadeout_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadeout_time**\ (\ )

La durée du fondu de fermeture. Par exemple, définir ceci à ``1.0`` pour une animation de 5 secondes produira un fondu enchaîné qui commence à 4 secondes et se termine à 5 secondes pendant l'animation.

\ **Note :** **AnimationNodeOneShot** transitionne l'état actuel après la fin du fondu.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_mix_mode:

.. rst-class:: classref-property

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **mix_mode** = ``0`` :ref:`🔗<class_AnimationNodeOneShot_property_mix_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_mode**\ (\ value\: :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>`\ )
- :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **get_mix_mode**\ (\ )

Le type de mélange.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
