.class public Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
.super Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;
.source "DefaultKeyValue.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 74
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 2
    .param p1, "pair"    # Lorg/apache/commons/collections/KeyValue;

    .line 64
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 134
    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 137
    return v2

    .line 140
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    .line 141
    .local v1, "other":Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 86
    if-eq p1, p0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    .line 91
    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    .line 92
    return-object v0

    .line 87
    .end local v0    # "old":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefaultKeyValue may not contain itself as a key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 103
    if-eq p1, p0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    .line 108
    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    .line 109
    return-object v0

    .line 104
    .end local v0    # "old":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefaultKeyValue may not contain itself as a value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toMapEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 119
    new-instance v0, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Lorg/apache/commons/collections/KeyValue;)V

    return-object v0
.end method
