.class public Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.source "DualTreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBidiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;,
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b1151L


# instance fields
.field protected final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 93
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    .line 105
    check-cast p1, Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 343
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 344
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 345
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 346
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 338
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 117
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 188
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/OrderedBidiMap;

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SortedBidiMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/SortedMap;

    .line 141
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 174
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/SortedMap;

    .line 157
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 161
    :cond_2
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 198
    new-instance p2, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 193
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v0
.end method
