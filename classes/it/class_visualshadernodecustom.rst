:github_url: hide

.. _class_VisualShaderNodeCustom:

VisualShaderNodeCustom
======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe virtuale per definire :ref:`VisualShaderNode<class_VisualShaderNode>` personalizzati da utilizzare nel Visual Shader Editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Ereditando questa classe puoi creare uno script personalizzato di :ref:`VisualShader<class_VisualShader>` che sarà aggiunto automaticamente al Visual Shader Editor. Il comportamento del :ref:`VisualShaderNode<class_VisualShaderNode>` è definito sovrascrivendo i metodi virtuali forniti.

Affinché il nodo sia registrato come componente aggiuntivo dell'editor, devi usare l'annotazione ``@tool`` e fornire un ``class_name`` per il tuo script personalizzato. Ad esempio:

::

    @tool
    extends VisualShaderNodeCustom
    class_name VisualShaderNodeNoise

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Estensioni di Visual Shader <../tutorials/plugins/editor/visual_shader_plugins>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_category<class_VisualShaderNodeCustom_private_method__get_category>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_code<class_VisualShaderNodeCustom_private_method__get_code>`\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_default_input_port<class_VisualShaderNodeCustom_private_method__get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const|                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_description<class_VisualShaderNodeCustom_private_method__get_description>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_func_code<class_VisualShaderNodeCustom_private_method__get_func_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_global_code<class_VisualShaderNodeCustom_private_method__get_global_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_input_port_count<class_VisualShaderNodeCustom_private_method__get_input_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_input_port_default_value<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_input_port_name<class_VisualShaderNodeCustom_private_method__get_input_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_input_port_type<class_VisualShaderNodeCustom_private_method__get_input_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_name<class_VisualShaderNodeCustom_private_method__get_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_output_port_count<class_VisualShaderNodeCustom_private_method__get_output_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_output_port_name<class_VisualShaderNodeCustom_private_method__get_output_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_output_port_type<class_VisualShaderNodeCustom_private_method__get_output_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_count<class_VisualShaderNodeCustom_private_method__get_property_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_default_index<class_VisualShaderNodeCustom_private_method__get_property_default_index>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_property_name<class_VisualShaderNodeCustom_private_method__get_property_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_property_options<class_VisualShaderNodeCustom_private_method__get_property_options>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_return_icon_type<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_available<class_VisualShaderNodeCustom_private_method__is_available>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_highend<class_VisualShaderNodeCustom_private_method__is_highend>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_index<class_VisualShaderNodeCustom_method_get_option_index>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNodeCustom_private_method__get_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_category**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_category>`

Sovrascrivi questo metodo per definire il percorso al nodo associato personalizzato nella finestra di dialogo dei membri nel Visual Shader Editor. Il percorso potrebbe apparire come ``"MyGame/MyFunctions/Noise"``.

Definire questo metodo è **facoltativo**. Se non sovrascritto, il nodo sarà inserito nella categoria "Addons".

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_code**\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_code>`

Sovrascrivi questo metodo per definire il codice di shader effettivo del nodo personalizzato associato. Il codice di shader dovrebbe essere restituito come una stringa, che può avere più righe (per comodità può essere utilizzato il costrutto stringa multilinea ``"""``).

Gli array ``input_vars`` e ``output_vars`` contengono i nomi stringa delle varie variabili in ingresso e in uscita, come definito dai metodi virtuali ``_get_input_*`` e ``_get_output_*`` in questa classe.

Alle porte di uscita possono essere assegnati valori nel codice shader. Ad esempio, ``return output_vars[0] + " = " + input_vars[0] + ";"``.

Puoi personalizzare il codice generato in base alla modalità dello shader ``mode`` (vedi :ref:`Mode<enum_Shader_Mode>`) e/o tipo ``type``.

Definire questo metodo è **obbligatorio**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_default_input_port>`

Sovrascrivi questo metodo per definire la porta di ingresso che dovrebbe essere connessa automaticamente, quando questo nodo viene creato dal trascinamento di una connessione da un nodo esistente allo spazio vuoto sul grafico.

Definire questo metodo è **facoltativo**. Se non sovrascritto, la connessione verrà creata alla prima porta valida.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_description>`

Sovrascrivi questo metodo per definire la descrizione del nodo personalizzato associato, nella finestra di dialogo dei membri del Visual Shader Editor.

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_func_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_func_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_func_code>`

Sovrascrivi questo metodo per aggiungere un codice shader all'inizio di ogni funzione nello shader (una volta). Il codice shader dovrebbe essere restituito come una stringa, che può avere più righe (per comodità è possibile usare una stringa multilinea ``"""``).

Se ci sono più nodi personalizzati di tipi diversi che utilizzano questa funzionalità, l'ordine di ogni inserimento non è garantito.

È possibile personalizzare il codice generato in base alla modalità dello shader (``mode``) (vedi :ref:`Mode<enum_Shader_Mode>`) e/o il suo tipo (``type``).

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_global_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_global_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_global_code>`

Sovrascrivi questo metodo per aggiungere codice shader in cima allo shader globale, per definire la libreria standard di metodi riutilizzabili, varying, costanti, uniformi, ecc. Il codice shader dovrebbe essere restituito come una stringa, che può avere più righe (per comodità è possibile usare una stringa multilinea ``"""``).

Fai attenzione con questa funzionalità perché può causare conflitti di nomi con altri nodi personalizzati, quindi assicurati di dare alle entità definite nomi univoci.

È possibile personalizzare il codice generato in base alla modalità dello shader (``mode``).

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_input_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_count>`

Sovrascrivi questo metodo per definire il numero di porte di ingresso del nodo personalizzato associato.

Definire questo metodo è **obbligatorio**. Se non sovrascritto, il nodo non ha porte di ingresso.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`

Sovrascrivi questo metodo per definire il valore predefinito per la porta specificata di ingresso. Preferisci usare questo invece di :ref:`VisualShaderNode.set_input_port_default_value()<class_VisualShaderNode_method_set_input_port_default_value>`.

Definire questo metodo è **obbligatorio**. Se non sovrascritto, il nodo non ha valori predefiniti per le sue porte di ingresso.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_input_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_name>`

Sovrascrivi questo metodo per definire i nomi delle porte di ingresso del nodo personalizzato associato. I nomi sono utilizzati sia per gli slot di ingresso nell'editor sia come identificatori nel codice shader e vengono passati nell'array ``input_vars`` in :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Definire questo metodo è **facoltativo**, ma consigliato. Se non sovrascritto, le porte di ingresso sono denominate come ``"in" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_input_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_type>`

Sovrascrivi questo metodo per definire il tipo restituito di ogni porta di ingresso del nodo personalizzato associato.

Definire di questo metodo è **facoltativo**, ma consigliato. Se non sovrascritto, le porte di ingresso restituiranno il tipo :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_name>`

Sovrascrivi questo metodo per definire il nome del nodo personalizzato associato, nella finestra di dialogo e nel grafico dei membri nel Visual Shader Editor.

Definire questo metodo è **facoltativo**, ma consigliato. Se non sovrascritto, il nodo sarà denominato "Unnamed".

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_output_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_count>`

Sovrascrivi questo metodo per definire il numero di porte di uscita del nodo personalizzato associato.

Definire questo metodo è **obbligatorio**. Se non sovrascritto, il nodo non ha porte di uscita.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_output_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_name>`

Sovrascrivi questo metodo per definire i nomi delle porte di uscita del nodo personalizzato associato. I nomi sono utilizzati sia per gli slot di uscita nell'editor sia come identificatori nel codice shader e vengono passati nell'array ``output_vars`` in :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Definire questo metodo è **facoltativo**, ma consigliato. Se non sovrascritto, le porte di uscita sono denominate come ``"out" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_output_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_type>`

Sovrascrivi questo metodo per definire il tipo restituito di ogni porta di uscita del nodo personalizzato associato.

Definire di questo metodo è **facoltativo**, ma consigliato. Se non sovrascritto, le porte di uscita restituiranno il tipo :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_count>`

Sovrascrivi questo metodo per definire il numero delle proprietà.

Definire di questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_default_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_default_index**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_default_index>`

Sovrascrivi questo metodo per definire l'indice predefinito della proprietà del nodo personalizzato associato.

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_property_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_name>`

Sovrascrivi questo metodo per definire i nomi della proprietà del nodo personalizzato associato.

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_options:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_property_options**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_options>`

Sovrascrivi questo metodo per definire le opzioni all'interno dell'elenco a tendina per la proprietà del nodo personalizzato associato.

Definire questo metodo è **facoltativo**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_return_icon_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_return_icon_type**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`

Sovrascrivi questo metodo per definire l'icona di ritorno del nodo personalizzato associato, nella finestra di dialogo dei membri nel Visual Shader Editor.

Definire questo metodo è **facoltativo**. Se non sovrascritto, non viene mostrata alcuna icona di ritorno.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_available**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_available>`

Sovrascrivi questo metodo per impedire che il nodo sia visibile nella finestra di dialogo dei membri per la modalità ``mode`` (vedi :ref:`Mode<enum_Shader_Mode>`) e/o il tipo ``type``.

Definire questo metodo è **facoltativo**. Se non sovrascritto, è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_highend:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_highend**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_highend>`

Override this method to enable the high-end mark in the Visual Shader Editor's members dialog. This should return ``true`` for nodes that only work when using the Forward+ and Mobile renderers.

Defining this method is **optional**. If not overridden, it's ``false``, which indicates this node works with all renderers (including Compatibility).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_method_get_option_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_index**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeCustom_method_get_option_index>`

Restituisce l'indice selezionato dell'opzione nell'elenco a tendina all'interno di un grafico. Puoi usare questa funzione per definire il comportamento specifico in :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>` o :ref:`_get_global_code()<class_VisualShaderNodeCustom_private_method__get_global_code>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
