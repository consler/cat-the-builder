.class public Lorg/apache/commons/collections4/map/MultiKeyMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "MultiKeyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
        "+TK;>;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 133
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    .line 134
    return-void
.end method

.method public static multiKeyMap(Lorg/apache/commons/collections4/map/AbstractHashedMap;)Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    .local p0, "map":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 112
    new-instance v0, Lorg/apache/commons/collections4/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 913
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 914
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    .line 915
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 901
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 902
    return-void
.end method


# virtual methods
.method protected checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "*>;)V"
        }
    .end annotation

    .line 826
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<*>;"
    if-eqz p1, :cond_0

    .line 829
    return-void

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->clone()Lorg/apache/commons/collections4/map/MultiKeyMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 840
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/MultiKeyMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "hashCode":I
    nop

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 168
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 169
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x1

    return v2

    .line 172
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 174
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 296
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 297
    .local v0, "hashCode":I
    nop

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 299
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 300
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const/4 v2, 0x1

    return v2

    .line 303
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 305
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "hashCode":I
    nop

    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 440
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 441
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    const/4 v2, 0x1

    return v2

    .line 444
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 446
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 589
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 590
    .local v0, "hashCode":I
    nop

    .line 591
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 592
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 593
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    const/4 v2, 0x1

    return v2

    .line 596
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 598
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 889
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 146
    .local v0, "hashCode":I
    nop

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 148
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 149
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 152
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "hashCode":I
    nop

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 278
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 279
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 282
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 284
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 416
    .local v0, "hashCode":I
    nop

    .line 417
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 418
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 419
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 422
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 424
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 566
    .local v0, "hashCode":I
    nop

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 568
    .local v1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 569
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 572
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 574
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 234
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 235
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 238
    :cond_0
    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 241
    :cond_1
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 242
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 243
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 244
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 245
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 368
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 369
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 372
    :cond_0
    if-eqz p2, :cond_1

    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 375
    :cond_1
    if-eqz p3, :cond_2

    .line 376
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 378
    :cond_2
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 379
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 380
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 381
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 382
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 512
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 513
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 516
    :cond_0
    if-eqz p2, :cond_1

    .line 517
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 519
    :cond_1
    if-eqz p3, :cond_2

    .line 520
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 522
    :cond_2
    if-eqz p4, :cond_3

    .line 523
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 525
    :cond_3
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 526
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 527
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 528
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 529
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 668
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 669
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 672
    :cond_0
    if-eqz p2, :cond_1

    .line 673
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 675
    :cond_1
    if-eqz p3, :cond_2

    .line 676
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 678
    :cond_2
    if-eqz p4, :cond_3

    .line 679
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 681
    :cond_3
    if-eqz p5, :cond_4

    .line 682
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 684
    :cond_4
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 685
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 686
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 687
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 688
    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 259
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 260
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 261
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 259
    :cond_2
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 397
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 398
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 399
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 397
    :cond_3
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 545
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 546
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 547
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_2

    if-eqz p4, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p5, v4, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 545
    :cond_4
    :goto_0
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;
    .param p6, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 704
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 705
    .local v0, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    nop

    .line 706
    invoke-virtual {v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 707
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 709
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p4, v4, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 710
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p5, v4, :cond_3

    if-eqz p5, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 711
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-eq p6, v4, :cond_5

    if-eqz p6, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    .line 705
    :cond_5
    :goto_0
    return v2
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 881
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)TV;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 188
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 189
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 190
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 192
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 193
    return-object v3

    .line 195
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 198
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 320
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 321
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 322
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 324
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 325
    return-object v3

    .line 327
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 330
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 461
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 462
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 463
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 464
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 466
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    invoke-virtual {v4, v2, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 467
    return-object v3

    .line 469
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3, p4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 472
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "key3":Ljava/lang/Object;, "TK;"
    .local p4, "key4":Ljava/lang/Object;, "TK;"
    .local p5, "key5":Ljava/lang/Object;, "TK;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p6

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 614
    .local v1, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 615
    .local v2, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v2

    .line 616
    .local v3, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 617
    iget v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 619
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 620
    return-object v4

    .line 622
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v4

    new-instance v11, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v1, v11, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 625
    const/4 v4, 0x0

    return-object v4
.end method

.method public put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;)TV;"
        }
    .end annotation

    .line 858
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 859
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;+TV;>;)V"
        }
    .end annotation

    .line 872
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 873
    .local v1, "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 874
    .end local v1    # "key":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    goto :goto_0

    .line 875
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->putAll(Ljava/util/Map;)V

    .line 876
    return-void
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;

    .line 725
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 726
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 727
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 729
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 730
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 732
    const/4 v0, 0x1

    .line 734
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_1
    goto :goto_0

    .line 735
    :cond_2
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 749
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 750
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 751
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 752
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 753
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 754
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 755
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    :goto_2
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 757
    const/4 v0, 0x1

    .line 759
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_2
    goto :goto_0

    .line 760
    :cond_3
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 775
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 776
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 777
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 778
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 779
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 780
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 781
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    const/4 v3, 0x2

    if-nez p3, :cond_2

    .line 782
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 783
    :goto_3
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 784
    const/4 v0, 0x1

    .line 786
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_3
    goto :goto_0

    .line 787
    :cond_4
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 803
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 804
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 805
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 806
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 807
    .local v2, "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 808
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 809
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v3, 0x2

    if-nez p3, :cond_2

    .line 810
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    const/4 v3, 0x3

    if-nez p4, :cond_3

    .line 811
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 812
    :goto_4
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    .line 813
    const/4 v0, 0x1

    .line 815
    .end local v2    # "multi":Lorg/apache/commons/collections4/keyvalue/MultiKey;, "Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;"
    :cond_4
    goto :goto_0

    .line 816
    :cond_5
    return v0
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 212
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 213
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 214
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 215
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 217
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 218
    return-object v4

    .line 220
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 221
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 223
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 344
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 345
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 346
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 347
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 348
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 350
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 351
    return-object v4

    .line 353
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 354
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 356
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 487
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 488
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 489
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 490
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 491
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 493
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 494
    return-object v4

    .line 496
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 497
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 499
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiKeyMap;, "Lorg/apache/commons/collections4/map/MultiKeyMap<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 642
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 643
    .local v1, "index":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 644
    .local v2, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    const/4 v3, 0x0

    .line 645
    .local v3, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<Lorg/apache/commons/collections4/keyvalue/MultiKey<+TK;>;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 646
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 648
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 649
    return-object v4

    .line 651
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v3, v2

    .line 652
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 654
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
