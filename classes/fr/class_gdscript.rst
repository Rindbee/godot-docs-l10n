:github_url: hide

.. _class_GDScript:

GDScript
========

**Hérite de :** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un script implémenté dans le langage de programmation GDScript.

.. rst-class:: classref-introduction-group

Description
-----------

Un script implémenté dans le langage de programmation GDScript, enregistré avec l'extension ``.gd``. Le script étend la fonctionnalité de tous les objets qui l'instancient.

Appeler :ref:`new()<class_GDScript_method_new>` crée une nouvelle instance du script. :ref:`Object.set_script()<class_Object_method_set_script>` étend un objet existant, si la classe de cet objet correspond à l'une des classes de base du script.

Si vous cherchez les fonctions intégrées de GDScript, voir :ref:`@GDScript<class_@GDScript>` à la place.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation GDScript <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

Renvoie une nouvelle instance du script.

::

    var MaClasse = load("maclasse.gd")
    var instance = MaClasse.new()
    print(instance.get_script() == MaClasse) # Affiche true

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
