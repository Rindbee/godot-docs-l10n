:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Provides methods for generating pseudo-random numbers.

.. rst-class:: classref-introduction-group

Description
-----------

RandomNumberGenerator est une classe pour générer des nombres pseudo-aléatoires. Elle utilise actuellement l'algorithme `PCG32 <http://www.pcg-random.org/>`__.

\ **Note :** L'implémentation de l'algorithme est un détail d'implémentation, sur lequel il ne faudrait pas se baser.

Pour générer un flottant aléatoire (dans un intervalle donné) basé sur une graine dépendante du temps :

::

    var rng = RandomNumberGenerator.new()
    func _ready():
        var mon_nombre_aleatoire = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Génération de nombres aléatoires <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`rand_weighted<class_RandomNumberGenerator_method_rand_weighted>`\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf<class_RandomNumberGenerator_method_randf>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf_range<class_RandomNumberGenerator_method_randf_range>`\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ )          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randfn<class_RandomNumberGenerator_method_randfn>`\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi<class_RandomNumberGenerator_method_randi>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi_range<class_RandomNumberGenerator_method_randi_range>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`randomize<class_RandomNumberGenerator_method_randomize>`\ (\ )                                                                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Initialise l'état du générateur de nombres aléatoires selon la valeur la graine donnée. Une graine donnée générera toujours la même suite de nombres pseudo-aléatoires.

\ **Note :** Le générateur n'est pas soumis à l'effet avalanche, et peut générer des flux similaires de nombres à partir d'une même graine. Préférez utiliser une fonction de hachage pour améliorer la qualité de la graine si elle provient d'une source externe.

\ **Note :** Définir cette propriété produit un effet secondaire qui change l'état :ref:`state<class_RandomNumberGenerator_property_state>` interne, donc assurez-vous d'initialiser la graine *avant* de modifier l'état :ref:`state<class_RandomNumberGenerator_property_state>`\  :

\ **Note :** La valeur par défaut de cette propriété est pseudo-aléatoire, et change lors de l'appel de :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. La valeur ``0`` documentée ici est une valeur générique, et pas la graine par défaut réelle.

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Restaure à un état précédemment enregistré.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

The current state of the random number generator. Save and restore this property to restore the generator to a previous state:

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # Store current state.
    print(rng.randf()) # Advance internal state.
    rng.state = saved_state # Restore the state.
    print(rng.randf()) # Prints the same value as previously.

\ **Note:** Do not set state to arbitrary values, since the random number generator requires the state to have certain qualities to behave properly. It should only be set to values that came from the state property itself. To initialize the random number generator with arbitrary input, use :ref:`seed<class_RandomNumberGenerator_property_seed>` instead.

\ **Note:** The default value of this property is pseudo-random, and changes when calling :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. The ``0`` value documented here is a placeholder, and not the actual default state.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Returns a random index with non-uniform weights. Prints an error and returns ``-1`` if the array is empty.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Prints one of the four elements in `my_array`.
    # It is more likely to print "four", and less likely to print "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

Returns a pseudo-random float between ``0.0`` and ``1.0`` (inclusive).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

Returns a pseudo-random float between ``from`` and ``to`` (inclusive).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

Returns a `normally-distributed <https://en.wikipedia.org/wiki/Normal_distribution>`__, pseudo-random floating-point number from the specified ``mean`` and a standard ``deviation``. This is also known as a Gaussian distribution.

\ **Note:** This method uses the `Box-Muller transform <https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform>`__ algorithm.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

Returns a pseudo-random 32-bit unsigned integer between ``0`` and ``4294967295`` (inclusive).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

Returns a pseudo-random 32-bit signed integer between ``from`` and ``to`` (inclusive).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

Sets up a time-based seed for this **RandomNumberGenerator** instance. Unlike the :ref:`@GlobalScope<class_@GlobalScope>` random number generation functions, different **RandomNumberGenerator** instances can use different seeds.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
