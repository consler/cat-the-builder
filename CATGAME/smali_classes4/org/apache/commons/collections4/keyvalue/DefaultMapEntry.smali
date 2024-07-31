.class public final Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;
.source "DefaultMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;, "Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;, "Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/KeyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/KeyValue<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;, "Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry<TK;TV;>;"
    .local p1, "pair":Lorg/apache/commons/collections4/KeyValue;, "Lorg/apache/commons/collections4/KeyValue<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method
