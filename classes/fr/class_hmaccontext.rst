:github_url: hide

.. _class_HMACContext:

HMACContext
===========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Utilisé pour créer un HMAC pour un message utilisant une clé.

.. rst-class:: classref-introduction-group

Description
-----------

La classe HMACContext est utile pour les usages HMAC avancés, comme l'envoi continu de message puisqu'il supporte la création de message en plusieurs fois plutôt qu'en une seule fois.


.. tabs::

 .. code-tab:: gdscript

    extends Node
    var ctx = HMACContext.new()

    func _ready():
        var key = "supersecret".to_utf8()
        var err = ctx.start(HashingContext.HASH_SHA256, key)
        assert(err == OK)
        var msg1 = "c'est un ".to_utf8()
        var msg2 = "extra méga super secret".to_utf8()
        err = ctx.update(msg1)
        assert(err == OK)
        err = ctx.update(msg2)
        assert(err == OK)
        var hmac = ctx.finish()
        print(hmac.hex_encode())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public class CryptoNode : Node
    {
        private HMACContext ctx = new HMACContext();

        public override void _Ready()
        {
            byte[] key = "supersecret".ToUtf8Buffer();
            Error err = _ctx.Start(HashingContext.HashType.Sha256, key);
            Debug.Assert(err == Error.Ok);
            byte[] msg1 = "c'est un ".ToUtf8Buffer();
            byte[] msg2 = "extra méga super secret".ToUtf8Buffer();
            err = _ctx.Update(msg1);
            Debug.Assert(err == Error.Ok);
            err = _ctx.Update(msg2);
            Debug.Assert(err == Error.Ok);
            byte[] hmac = _ctx.Finish();
            GD.Print(hmac.HexEncode());
        }
    }



.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HMACContext_method_finish>`\ (\ )                                                                                                               |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HMACContext_method_start>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HMACContext_method_update>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_HMACContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HMACContext_method_finish>`

Returns the resulting HMAC. If the HMAC failed, an empty :ref:`PackedByteArray<class_PackedByteArray>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_start>`

Initialise le HMACContext. Cette méthode ne peut pas être appelée sur le même HMACContext tant que :ref:`finish()<class_HMACContext_method_finish>` n'a pas été appelé.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_update>`

Updates the message to be HMACed. This can be called multiple times before :ref:`finish()<class_HMACContext_method_finish>` is called to append ``data`` to the message, but cannot be called until :ref:`start()<class_HMACContext_method_start>` has been called.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
