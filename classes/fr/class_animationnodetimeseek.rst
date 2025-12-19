:github_url: hide

.. _class_AnimationNodeTimeSeek:

AnimationNodeTimeSeek
=====================

**Hérite de :** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nœud d'animation fixant à un temps donné utilisé dans :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud d'animation peut être utilisé pour causer une commande de recherche dans n'importe quel nœud enfant du graphe d'animation. Utilisez le pour jouer une :ref:`Animation<class_Animation>` depuis le début ou une certaine position dans l':ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

Après avoir défini le temps et changé la lecture de l'animation, ce nœud s'endormira automatiquement à la trame de traitement suivante en définissant sa valeur ``seek_position`` à ``-1.0``.


.. tabs::

 .. code-tab:: gdscript

    # Jouer l'animation enfant depuis le début.
    animation_tree.set("parameters/TimeSeek/seek_request", 0.0)
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/TimeSeek/seek_request"] = 0.0

    # Jouer l'animation enfant en commençant à 12 secondes.
    animation_tree.set("parameters/TimeSeek/seek_request", 12.0)
    # Syntaxe alternative (même résultat qu'au dessus).
    animation_tree["parameters/TimeSeek/seek_request"] = 12.0

 .. code-tab:: csharp

    // Jouer l'animation enfant depuis le début.
    animationTree.Set("parameters/TimeSeek/seek_request", 0.0);

    // Jouer l'animation enfant en commençant à 12 secondes.
    animationTree.Set("parameters/TimeSeek/seek_request", 12.0);



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`explicit_elapse<class_AnimationNodeTimeSeek_property_explicit_elapse>` | ``true`` |
   +-------------------------+------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeTimeSeek_property_explicit_elapse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **explicit_elapse** = ``true`` :ref:`🔗<class_AnimationNodeTimeSeek_property_explicit_elapse>`

.. rst-class:: classref-property-setget

- |void| **set_explicit_elapse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_explicit_elapse**\ (\ )

Si ``true``, certains traitements sont exécutés pour gérer les clés entre les recherches, comme le calcul du mouvement racine et la recherche de la clé discrète la plus proche.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
