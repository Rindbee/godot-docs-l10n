:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**Hérite de :** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exécute un :ref:`Tween<class_Tween>` niché dans un autre :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Description
-----------

**SubtweenTweener** est utilisé pour exécuter un :ref:`Tween<class_Tween>` comme une étape dans une séquence définie par un autre :ref:`Tween<class_Tween>`. Voir :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` pour plus d'informations d'utilisation.

\ **Note :** :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` est le seul moyen correct de créer un **SubtweenTweener**. Tout **SubtweenTweener** créé manuellement ne fonctionnera pas correctement.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

Définit le temps en secondes après lequel le **SubtweenTweener** commence à exécuter le sous-tween. Par défaut, il n'y a pas de délai.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
