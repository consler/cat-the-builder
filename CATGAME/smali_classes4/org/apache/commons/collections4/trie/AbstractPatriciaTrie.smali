.class abstract Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.super Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeEntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeMap;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieIterator;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x478b23ab55314feaL


# instance fields
.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected transient modCount:I

.field private transient root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient size:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "keyAnalyzer":Lorg/apache/commons/collections4/trie/KeyAnalyzer;, "Lorg/apache/commons/collections4/trie/KeyAnalyzer<-TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    .line 48
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
            "-TK;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "keyAnalyzer":Lorg/apache/commons/collections4/trie/KeyAnalyzer;, "Lorg/apache/commons/collections4/trie/KeyAnalyzer<-TK;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie;-><init>(Lorg/apache/commons/collections4/trie/KeyAnalyzer;)V

    .line 48
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 80
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->putAll(Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method private getPrefixMapByBits(Ljava/lang/Object;II)Ljava/util/SortedMap;
    .locals 8
    .param p2, "offsetInBits"    # I
    .param p3, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 854
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    add-int v0, p2, p3

    .line 855
    .local v0, "offsetLength":I
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 860
    if-nez v0, :cond_0

    .line 861
    return-object p0

    .line 864
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$PrefixRangeMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;IILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v1

    .line 856
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private incrementModCount()V
    .locals 1

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 125
    return-void
.end method

.method static isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "**>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "**>;)Z"
        }
    .end annotation

    .line 1246
    .local p0, "next":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<**>;"
    .local p1, "from":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<**>;"
    if-eqz p0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2428
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2429
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 2430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2431
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 2433
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 2434
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2436
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private removeExternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "h":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_4

    .line 500
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isExternalNode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 505
    .local v0, "parent":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 507
    .local v1, "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v2, p1, :cond_1

    .line 508
    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 510
    :cond_1
    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 514
    :goto_1
    iget v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v2, v3, :cond_2

    .line 515
    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_2

    .line 517
    :cond_2
    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 520
    :goto_2
    return-void

    .line 501
    .end local v0    # "parent":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v1    # "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an external Entry!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete root Entry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeInternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "h":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_a

    .line 532
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 536
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 539
    .local v0, "p":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iput v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 543
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 544
    .local v1, "parent":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 552
    .local v2, "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v3, v0, :cond_1

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v3, p1, :cond_1

    .line 553
    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 556
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v3, v0, :cond_2

    .line 557
    iput-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_1

    .line 559
    :cond_2
    iput-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 562
    :goto_1
    iget v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v4, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v3, v4, :cond_3

    .line 563
    iput-object v1, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 571
    .end local v1    # "parent":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v2    # "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_3
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_4

    .line 572
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 575
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_5

    .line 576
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 580
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, p1, :cond_6

    .line 581
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_2

    .line 583
    :cond_6
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 589
    :goto_2
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 590
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 591
    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 595
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 599
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 600
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 602
    :cond_8
    return-void

    .line 533
    .end local v0    # "p":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an internal Entry!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete root Entry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z
    .locals 8
    .param p2, "bitIndex"    # I
    .param p4, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;ITK;I",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "h":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "reference":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    const/4 v1, 0x0

    if-gt v0, p2, :cond_1

    .line 357
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p5, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->set(Ljava/lang/Object;)V

    .line 359
    return v1

    .line 361
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_1
    iget v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, p3, v0, p4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result v0

    return v0

    .line 369
    :cond_2
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v4, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result v0

    return v0

    .line 373
    :cond_3
    return v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2442
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2443
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2444
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2445
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2447
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 2448
    :cond_0
    return-void
.end method


# virtual methods
.method addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .param p2, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;I)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 195
    .local v0, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 197
    .local v1, "path":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ge v2, v3, :cond_2

    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v3, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    move-object v1, v0

    .line 230
    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    iget v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 199
    :cond_2
    :goto_1
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 201
    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 203
    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_2

    .line 205
    :cond_3
    iput-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 206
    iput-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 209
    :goto_2
    iput-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 210
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-lt v2, v3, :cond_4

    .line 211
    iput-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 215
    :cond_4
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v3, :cond_5

    .line 216
    iput-object p1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 219
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v1, v2, :cond_7

    iget-object v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 222
    :cond_6
    iput-object p1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_4

    .line 220
    :cond_7
    :goto_3
    iput-object p1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 225
    :goto_4
    return-object p1
.end method

.method ceilingEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 958
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    .line 960
    .local v0, "lengthInBits":I
    if-nez v0, :cond_1

    .line 961
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 962
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 964
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 967
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 968
    .local v1, "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 969
    return-object v1

    .line 972
    :cond_2
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 973
    .local v2, "bitIndex":I
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 974
    new-instance v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 975
    .local v3, "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 976
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 977
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v4

    .line 978
    .local v4, "ceil":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 979
    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 980
    return-object v4

    .line 981
    .end local v3    # "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v4    # "ceil":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_3
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 982
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 983
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v3

    .line 985
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    return-object v3

    .line 986
    :cond_5
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 987
    return-object v1

    .line 991
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid lookup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public clear()V
    .locals 3

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v2, -0x1

    iput v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->value:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iput-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 97
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "k"    # Ljava/lang/Object;

    .line 378
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 379
    return v0

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 383
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v2

    .line 384
    .local v2, "lengthInBits":I
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 385
    .local v3, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method decrementSize()V
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 117
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 118
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$EntrySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 745
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x0

    return-object v0

    .line 749
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 781
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method floorEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1054
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    .line 1056
    .local v0, "lengthInBits":I
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1057
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1058
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 1060
    :cond_0
    return-object v1

    .line 1063
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 1064
    .local v2, "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1065
    return-object v2

    .line 1068
    :cond_2
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1069
    .local v3, "bitIndex":I
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1070
    new-instance v4, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v4, p1, v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v4

    .line 1071
    .local v1, "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 1073
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v4

    .line 1074
    .local v4, "floor":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 1075
    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 1076
    return-object v4

    .line 1077
    .end local v1    # "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v4    # "floor":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_3
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1078
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1079
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 1081
    :cond_4
    return-object v1

    .line 1082
    :cond_5
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1083
    return-object v2

    .line 1087
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid lookup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method followLeft(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 757
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 759
    .local v0, "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 763
    :cond_0
    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v2, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v1, v2, :cond_1

    .line 764
    return-object v0

    .line 767
    :cond_1
    move-object p1, v0

    .line 768
    .end local v0    # "child":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    goto :goto_0
.end method

.method followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1163
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v0, :cond_0

    .line 1164
    const/4 v0, 0x0

    return-object v0

    .line 1168
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v0, v1, :cond_1

    .line 1169
    iget-object p1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1172
    :cond_1
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 241
    .local v0, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 5
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    return-object v1

    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v2

    .line 258
    .local v2, "lengthInBits":I
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 259
    .local v3, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_1
    return-object v1
.end method

.method getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .param p2, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 456
    .local v0, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 458
    .local v1, "path":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v3, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v2, v3, :cond_0

    .line 459
    return-object v0

    .line 462
    :cond_0
    move-object v1, v0

    .line 463
    iget v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, p1, v2, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 869
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method higherEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 890
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    .line 892
    .local v0, "lengthInBits":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 893
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 896
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 899
    :cond_0
    return-object v2

    .line 902
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 905
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v3

    .line 906
    .local v3, "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 907
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 910
    :cond_3
    iget-object v4, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 911
    .local v4, "bitIndex":I
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 912
    new-instance v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v1, p1, v2, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 913
    .local v1, "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 914
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 915
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 916
    .local v2, "ceil":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 917
    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 918
    return-object v2

    .line 919
    .end local v1    # "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v2    # "ceil":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_4
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 920
    iget-object v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 921
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 922
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size()I

    move-result v5

    if-le v5, v1, :cond_6

    .line 923
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 925
    :cond_6
    return-object v2

    .line 927
    :cond_7
    invoke-static {v4}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 928
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 932
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid lookup: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method incrementSize()V
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 110
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$KeySet;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1155
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lastEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    .line 789
    .local v0, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 792
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method lowerEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1016
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    .line 1018
    .local v0, "lengthInBits":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1019
    return-object v1

    .line 1022
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 1023
    .local v2, "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_1
    iget-object v3, v2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1028
    .local v3, "bitIndex":I
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1029
    new-instance v4, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v4, p1, v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v4

    .line 1030
    .local v1, "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1031
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 1032
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v4

    .line 1033
    .local v4, "prior":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    .line 1034
    iget v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 1035
    return-object v4

    .line 1036
    .end local v1    # "added":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v4    # "prior":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1037
    return-object v1

    .line 1038
    :cond_3
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1039
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 1043
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid lookup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieMapIterator;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    return-object v0
.end method

.method nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-nez p1, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 651
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "start":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local p2, "previous":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local p3, "tree":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    move-object v0, p1

    .line 656
    .local v0, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz p2, :cond_0

    iget-object v1, p2, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v1, :cond_3

    .line 657
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 660
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne p2, v1, :cond_1

    .line 661
    goto :goto_1

    .line 664
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 668
    :cond_2
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 673
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 674
    return-object v2

    .line 686
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v1, :cond_5

    .line 687
    return-object v2

    .line 691
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p2, v1, :cond_7

    .line 693
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 694
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 698
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 703
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, v1, :cond_9

    .line 705
    if-ne v0, p3, :cond_8

    .line 706
    return-object v2

    .line 709
    :cond_8
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_2

    .line 713
    :cond_9
    if-ne v0, p3, :cond_a

    .line 714
    return-object v2

    .line 718
    :cond_a
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-nez v1, :cond_b

    .line 719
    return-object v2

    .line 723
    :cond_b
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p2, v1, :cond_c

    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 724
    invoke-static {v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 725
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 729
    :cond_c
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, v3, :cond_d

    .line 730
    return-object v2

    .line 734
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1
.end method

.method nextEntryInSubtree(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1236
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local p2, "parentOfSubtree":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->firstEntry()Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntryImpl(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 800
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 801
    .local v1, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->nextEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 803
    .local v2, "nextEntry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    .line 805
    .end local v2    # "nextEntry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_1
    return-object v0

    .line 798
    .end local v1    # "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_2
    throw v0
.end method

.method public prefixMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 828
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getPrefixMapByBits(Ljava/lang/Object;II)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "start":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v0, :cond_7

    .line 1199
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, p1, :cond_1

    .line 1200
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v0

    .line 1203
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_1
    iget-object v0, p1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1206
    .local v0, "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v0, v1, :cond_2

    .line 1207
    iget-object v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1210
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1211
    return-object v2

    .line 1214
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v3, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-static {v1, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isValidUplink(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1215
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v1, v3, :cond_5

    .line 1216
    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1217
    return-object v2

    .line 1219
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 1222
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-object v1

    .line 1224
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->followRight(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    return-object v1

    .line 1196
    .end local v0    # "node":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have come from somewhere!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 813
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 814
    .local v1, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->previousEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v2

    .line 816
    .local v2, "prevEntry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    .line 818
    .end local v2    # "prevEntry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_1
    return-object v0

    .line 811
    .end local v1    # "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_2
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_8

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, "lengthInBits":I
    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 143
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 146
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getNearestEntryForKey(Ljava/lang/Object;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-result-object v1

    .line 147
    .local v1, "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_1

    .line 151
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 153
    :goto_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 156
    :cond_3
    iget-object v2, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->bitIndex(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 157
    .local v2, "bitIndex":I
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isOutOfBoundsIndex(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 158
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isValidBitIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    new-instance v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-direct {v3, p1, p2, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 161
    .local v3, "t":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->addEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;I)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    .line 163
    const/4 v4, 0x0

    return-object v4

    .line 164
    .end local v3    # "t":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :cond_4
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isNullBitKey(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementSize()V

    goto :goto_2

    .line 172
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 174
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 176
    :cond_6
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->isEqualBitKey(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 180
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v1, v3, :cond_7

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->incrementModCount()V

    .line 182
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 187
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to put: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v0    # "lengthInBits":I
    .end local v1    # "found":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .end local v2    # "bitIndex":I
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 420
    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->castKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v2

    .line 425
    .local v2, "lengthInBits":I
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v3, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 426
    .local v3, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 428
    .local v4, "path":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget v5, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v6, v4, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v5, v6, :cond_2

    .line 429
    invoke-virtual {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->compareKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 432
    :cond_1
    return-object v0

    .line 435
    :cond_2
    move-object v4, v3

    .line 437
    iget v5, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {p0, v1, v5, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 438
    iget-object v3, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 440
    :cond_3
    iget-object v3, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0
.end method

.method removeEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "h":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq p1, v0, :cond_1

    .line 480
    invoke-virtual {p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeInternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->removeExternalEntry(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    .line 487
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->decrementSize()V

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->setKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v6

    .line 283
    .local v6, "lengthInBits":I
    new-instance v5, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    .line 284
    .local v5, "reference":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->selectR(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;ILjava/lang/Object;ILorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {v5}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 287
    :cond_0
    return-object v7
.end method

.method public selectKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->select(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 311
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public selectValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->select(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 339
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 340
    const/4 v1, 0x0

    return-object v1

    .line 342
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 874
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .locals 15
    .param p2, "offsetInBits"    # I
    .param p3, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1097
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "prefix":Ljava/lang/Object;, "TK;"
    move-object v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1098
    .local v1, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    iget-object v2, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    move-object v10, v1

    move-object v11, v2

    .line 1100
    .end local v1    # "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local v10, "current":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    .local v11, "path":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    :goto_0
    iget v1, v10, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    iget v2, v11, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-le v1, v2, :cond_2

    iget v1, v10, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-gt v9, v1, :cond_0

    .line 1101
    goto :goto_1

    .line 1104
    :cond_0
    move-object v11, v10

    .line 1105
    iget v1, v10, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    add-int v1, p2, v1

    add-int v2, p2, v9

    invoke-virtual {p0, v8, v1, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    iget-object v10, v10, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v10, v10, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    goto :goto_0

    .line 1113
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v11

    goto :goto_2

    :cond_3
    move-object v1, v10

    :goto_2
    move-object v12, v1

    .line 1116
    .local v12, "entry":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<TK;TV;>;"
    invoke-virtual {v12}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isEmpty()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 1117
    return-object v13

    .line 1120
    :cond_4
    add-int v14, p2, v9

    .line 1126
    .local v14, "endIndexInBits":I
    iget-object v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->root:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-ne v12, v1, :cond_5

    invoke-virtual {v12}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v14, :cond_5

    .line 1127
    return-object v13

    .line 1132
    :cond_5
    add-int/lit8 v1, v14, -0x1

    invoke-virtual {p0, v8, v1, v14}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v1

    iget-object v2, v12, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    add-int/lit8 v3, v9, -0x1

    iget-object v4, v12, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    .line 1133
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->isBitSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1134
    return-object v13

    .line 1138
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->getKeyAnalyzer()Lorg/apache/commons/collections4/trie/KeyAnalyzer;

    move-result-object v1

    iget-object v5, v12, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1139
    invoke-virtual {v12}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->lengthInBits(Ljava/lang/Object;)I

    move-result v7

    .line 1138
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;->bitIndex(Ljava/lang/Object;IILjava/lang/Object;II)I

    move-result v1

    .line 1141
    .local v1, "bitIndex":I
    if-ltz v1, :cond_7

    if-ge v1, v9, :cond_7

    .line 1142
    return-object v13

    .line 1145
    :cond_7
    return-object v12
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 879
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$RangeEntryMap;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;, "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$Values;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->values:Ljava/util/Collection;

    return-object v0
.end method
