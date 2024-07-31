.class public Lorg/apache/commons/collections/map/MultiKeyMap;
.super Ljava/lang/Object;
.source "MultiKeyMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# instance fields
.field protected final map:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 114
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .param p1, "map"    # Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 127
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/map/AbstractHashedMap;)Lorg/apache/commons/collections/map/MultiKeyMap;
    .locals 2
    .param p0, "map"    # Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 98
    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected checkKey(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 805
    if-eqz p1, :cond_1

    .line 808
    instance-of v0, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-eqz v0, :cond_0

    .line 811
    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Key must be a MultiKey"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 884
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 819
    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 867
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 157
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 159
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 160
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    return v2

    .line 163
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 165
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 286
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 287
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 288
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/4 v2, 0x1

    return v2

    .line 291
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 293
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

    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 424
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 425
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 426
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v2, 0x1

    return v2

    .line 429
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 431
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

    .line 571
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 572
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 573
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 574
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/4 v2, 0x1

    return v2

    .line 577
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 579
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 899
    if-ne p1, p0, :cond_0

    .line 900
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 140
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 141
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 144
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 146
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 266
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 267
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 268
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 271
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 273
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

    .line 402
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 404
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 405
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 408
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 410
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

    .line 549
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 550
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 551
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 552
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 555
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 557
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 232
    :cond_1
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 233
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 234
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 235
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 236
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 360
    :cond_0
    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 363
    :cond_1
    if-eqz p3, :cond_2

    .line 364
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 366
    :cond_2
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 367
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 368
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 369
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 370
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 501
    :cond_0
    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 504
    :cond_1
    if-eqz p3, :cond_2

    .line 505
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 507
    :cond_2
    if-eqz p4, :cond_3

    .line 508
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 510
    :cond_3
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 511
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 512
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 513
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 514
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "h":I
    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 652
    :cond_0
    if-eqz p2, :cond_1

    .line 653
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 655
    :cond_1
    if-eqz p3, :cond_2

    .line 656
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 658
    :cond_2
    if-eqz p4, :cond_3

    .line 659
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 661
    :cond_3
    if-eqz p5, :cond_4

    .line 662
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 664
    :cond_4
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 665
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 666
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 667
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 668
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 249
    .local v0, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 384
    .local v0, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_0

    if-nez v1, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p4, :cond_2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;

    .line 528
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 529
    .local v0, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_0

    if-nez v1, :cond_4

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p4, :cond_2

    if-nez v1, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p5, :cond_3

    if-nez v1, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    return v2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "key1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "key3"    # Ljava/lang/Object;
    .param p5, "key4"    # Ljava/lang/Object;
    .param p6, "key5"    # Ljava/lang/Object;

    .line 683
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 684
    .local v0, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p4, :cond_2

    if-nez v1, :cond_5

    goto :goto_2

    :cond_2
    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p5, :cond_3

    if-nez v1, :cond_5

    goto :goto_3

    :cond_3
    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p6, :cond_4

    if-nez v1, :cond_5

    goto :goto_4

    :cond_4
    invoke-virtual {p6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_4
    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    return v2
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 855
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 833
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 179
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 180
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 181
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 183
    .local v3, "oldValue":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v4, v2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 184
    return-object v3

    .line 186
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v4, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 308
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 309
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 310
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 312
    .local v3, "oldValue":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v4, v2, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 313
    return-object v3

    .line 315
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v4, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 319
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "value"    # Ljava/lang/Object;

    .line 445
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 446
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 447
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 448
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 449
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 451
    .local v3, "oldValue":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v4, v2, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 452
    return-object v3

    .line 454
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 457
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v4, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v4, p1, p2, p3, p4}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v4, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 458
    const/4 v3, 0x0

    return-object v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;
    .param p6, "value"    # Ljava/lang/Object;

    .line 594
    move-object v7, p0

    move-object/from16 v8, p6

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 595
    .local v9, "hashCode":I
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v9, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v10

    .line 596
    .local v10, "index":I
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v10

    move-object v11, v0

    .line 597
    .local v11, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v11, :cond_1

    .line 598
    iget v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v9, :cond_0

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v11}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 600
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v11, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 601
    return-object v0

    .line 603
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v11, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v12, Lorg/apache/commons/collections/keyvalue/MultiKey;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v10, v9, v12, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 846
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 848
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    .line 849
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 850
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 851
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 879
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 202
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 203
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 204
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v3, 0x0

    .line 205
    .local v3, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 206
    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 208
    .local v4, "oldValue":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 209
    return-object v4

    .line 211
    .end local v4    # "oldValue":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 212
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 214
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 332
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 333
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 334
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v3, 0x0

    .line 335
    .local v3, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 336
    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 338
    .local v4, "oldValue":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 339
    return-object v4

    .line 341
    .end local v4    # "oldValue":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 342
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 344
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 471
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 472
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 473
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 474
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v3, 0x0

    .line 475
    .local v3, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 476
    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 478
    .local v4, "oldValue":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v5, v2, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 479
    return-object v4

    .line 481
    .end local v4    # "oldValue":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 482
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 484
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;
    .param p5, "key5"    # Ljava/lang/Object;

    .line 621
    move-object v7, p0

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 622
    .local v8, "hashCode":I
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v9

    .line 623
    .local v9, "index":I
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v9

    .line 624
    .local v0, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v1, 0x0

    move-object v10, v0

    move-object v11, v1

    .line 625
    .end local v0    # "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .local v10, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .local v11, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v10, :cond_1

    .line 626
    iget v0, v10, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v8, :cond_0

    move-object v0, p0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v10}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v10, v9, v11}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 629
    return-object v0

    .line 631
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_0
    move-object v11, v10

    .line 632
    iget-object v10, v10, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 634
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 706
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 708
    .local v2, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 710
    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 711
    const/4 v0, 0x1

    .line 713
    .end local v2    # "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    :cond_1
    goto :goto_0

    .line 714
    :cond_2
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 730
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 732
    .local v2, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    :goto_2
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 736
    const/4 v0, 0x1

    .line 738
    .end local v2    # "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    :cond_2
    goto :goto_0

    .line 739
    :cond_3
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;

    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 756
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 757
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 758
    .local v2, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_1

    if-nez v3, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    :goto_3
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 763
    const/4 v0, 0x1

    .line 765
    .end local v2    # "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    :cond_3
    goto :goto_0

    .line 766
    :cond_4
    return v0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "key3"    # Ljava/lang/Object;
    .param p4, "key4"    # Ljava/lang/Object;

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 784
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 785
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 786
    .local v2, "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_0

    if-nez v3, :cond_4

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_1

    if-nez v3, :cond_4

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_2

    if-nez v3, :cond_4

    goto :goto_3

    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p4, :cond_3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_3
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 791
    :goto_4
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 792
    const/4 v0, 0x1

    .line 794
    .end local v2    # "multi":Lorg/apache/commons/collections/keyvalue/MultiKey;
    :cond_4
    goto :goto_0

    .line 795
    :cond_5
    return v0
.end method

.method public size()I
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 910
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
