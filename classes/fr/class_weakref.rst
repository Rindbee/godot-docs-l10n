:github_url: hide

.. _class_WeakRef:

WeakRef
=======

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contient un :ref:`Object<class_Object>`. Si l'objet est :ref:`RefCounted<class_RefCounted>`, il ne met pas à jour le compte des références.

.. rst-class:: classref-introduction-group

Description
-----------

Un weakref (litt. "référence faible") peut tenir un :ref:`RefCounted<class_RefCounted>` sans contribuer au compteur de références. Un weakref peut être créé à partir d'un :ref:`Object<class_Object>` utilisant :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>`. Si cet objet n'est pas une référence, weakref fonctionne toujours, cependant, il n'a aucun effet sur l'objet. Les weakrefs sont utiles dans les cas où plusieurs classes ont des variables qui se réfèrent l'une à l'autre. Sans weakrefs, l'utilisation de ces classes pourrait conduire à des fuites de mémoire, puisque les deux références s'entre-empêchent d'être libérées. Rendre une partie des variables une weakref peut prévenir cette dépendance cyclique, et permet de libérer les références.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_ref<class_WeakRef_method_get_ref>`\ (\ ) |const| |
   +-------------------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_WeakRef_method_get_ref:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_ref**\ (\ ) |const| :ref:`🔗<class_WeakRef_method_get_ref>`

Renvoie l':ref:`Object<class_Object>` auquel cette weakref se réfère. Renvoie ``null`` si l'objet n'existe plus.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
