.class public Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
.super Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;
.source "DefaultKeyValue.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1

    .line 74
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 1

    .line 64
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 140
    :cond_1
    check-cast p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
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
    .locals 1

    if-eq p1, p0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->key:Ljava/lang/Object;

    return-object v0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DefaultKeyValue may not contain itself as a key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eq p1, p0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;->value:Ljava/lang/Object;

    return-object v0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DefaultKeyValue may not contain itself as a value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMapEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 119
    new-instance v0, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Lorg/apache/commons/collections/KeyValue;)V

    return-object v0
.end method
