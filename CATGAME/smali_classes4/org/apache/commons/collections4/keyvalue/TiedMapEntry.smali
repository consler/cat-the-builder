.class public Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;
.super Ljava/lang/Object;
.source "TiedMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections4/KeyValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75522d64c63ee025L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 109
    return v2

    .line 111
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    if-nez v3, :cond_3

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    .line 113
    :goto_2
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v1, v2

    .line 128
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eq p1, p0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set value to this map entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;, "Lorg/apache/commons/collections4/keyvalue/TiedMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
