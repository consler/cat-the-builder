.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.super Ljava/lang/Object;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/BidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
    }
.end annotation


# instance fields
.field protected transient entrySet:Ljava/util/Set;

.field protected transient inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

.field protected transient keySet:Ljava/util/Set;

.field protected final transient maps:[Ljava/util/Map;

.field protected transient values:Ljava/util/Collection;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 59
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 63
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 67
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "normalMap"    # Ljava/util/Map;
    .param p2, "reverseMap"    # Ljava/util/Map;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 59
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 63
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 67
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 98
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 99
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 100
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .locals 2
    .param p1, "normalMap"    # Ljava/util/Map;
    .param p2, "reverseMap"    # Ljava/util/Map;
    .param p3, "inverseBidiMap"    # Lorg/apache/commons/collections/BidiMap;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 59
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 63
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 67
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 112
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 113
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 114
    iput-object p3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 115
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
.end method

.method protected createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p1, "iterator"    # Ljava/util/Iterator;

    .line 325
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p1, "iterator"    # Ljava/util/Iterator;

    .line 271
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createMap()Ljava/util/Map;
    .locals 1

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createValuesIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p1, "iterator"    # Ljava/util/Iterator;

    .line 296
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 3

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 224
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v0, v2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 190
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    return-object v0
.end method
