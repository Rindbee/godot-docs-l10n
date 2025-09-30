:github_url: hide

.. _class_WeakRef:

WeakRef
=======

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Holds an :ref:`Object<class_Object>`. If the object is :ref:`RefCounted<class_RefCounted>`, it doesn't update the reference count.

.. rst-class:: classref-introduction-group

Description
-----------

A weakref can hold a :ref:`RefCounted<class_RefCounted>` without contributing to the reference counter. A weakref can be created from an :ref:`Object<class_Object>` using :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>`. If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.

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
