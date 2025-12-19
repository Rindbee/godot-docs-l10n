:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit des fonctionnalités pour calculer des hachages cryptographiques morceau par morceau.

.. rst-class:: classref-introduction-group

Description
-----------

La classe HashingContext fournit une interface pour calculer des hachages cryptographiques sur plusieurs itérations. Utile pour calculer des hachages de fichiers très volumineux (pour ne pas avoir à les garder complètement en mémoire), de flux réseau, et de flux de données en général (pour ne pas avoir à maintenir des buffers).

L'énumération :ref:`HashType<enum_HashingContext_HashType>` liste tous les algorithmes de hachage supportés.


.. tabs::

 .. code-tab:: gdscript

    const TAILLE_CHUNK = 1024

    func hacher_fichier(chemin):
        # Vérifier que le fichier existe.
        if not FileAccess.file_exists(path):
            return
        # Créer un contexte SHA-256.
        var ctx = HashingContext.new()
        ctx.start(HashingContext.HASH_SHA256)
        # Ouvrir le fichier à hacher.
        var fichier = FileAccess.open(chemin, FileAccess.READ)
        # Mettre à jour le contexte après la lecture de chaque morceau ("chunk").
        while file.get_position() < file.get_length():
            var restant = fichier.get_length() - fichier.get_position()
            ctx.update(fichier.get_buffer(min(restant, TAILLE_CHUNK)))
        # Récupérer le hachage calculé.
        var res = ctx.finish()
        # Afficher le résultat sous forme hexadécimale et en tableau.
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int TailleChunk = 1024;

    public void HacherFichier(string chemin)
    {
        // Vérifier que le fichier existe.
        if (!FileAccess.FileExists(chemin))
        {
            return;
        }
        // Créer un contexte SHA-256.
        var ctx = new HashingContext();
        ctx.Start(HashingContext.HashType.Sha256);
        // Ouvrir le fichier à hacher.
        using var fichier = FileAccess.Open(chemin, FileAccess.ModeFlags.Read);
        // Mettre à jour le contexte après la lecture de chaque morceau ("chunk").
        while (fichier.GetPosition() < fichier.GetLength())
        {
            int restant = (int)(fichier.GetLength() - fichier.GetPosition());
            ctx.Update(fichier.GetBuffer(Mathf.Min(restant, TailleChunk)));
        }
        // Récupérer le hachage calculé.
        byte[] res = ctx.Finish();
        // Afficher le résultat sous forme hexadécimale et en tableau.
        GD.PrintT(res.HexEncode(), (Variant)res);
    }



.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HashingContext_method_finish>`\ (\ )                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HashingContext_method_start>`\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ )    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HashingContext_method_update>`\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_HashingContext_HashType:

.. rst-class:: classref-enumeration

enum **HashType**: :ref:`🔗<enum_HashingContext_HashType>`

.. _class_HashingContext_constant_HASH_MD5:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_MD5** = ``0``

Algorithme de hachage : MD5.

.. _class_HashingContext_constant_HASH_SHA1:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA1** = ``1``

Algorithme de hachage : SHA-1.

.. _class_HashingContext_constant_HASH_SHA256:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA256** = ``2``

Algorithme de hachage : SHA-256.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_HashingContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HashingContext_method_finish>`

Finalise l'actuel contexte, et renvoie le hachage calculé.

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

Commence un nouveau calcul de hachage du ``type`` donné (par exemple :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` pour commencer le calcul d'un SHA-256).

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HashingContext_method_update>`

Met à jour le calcul avec la partie des données ``chunk`` donnée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
