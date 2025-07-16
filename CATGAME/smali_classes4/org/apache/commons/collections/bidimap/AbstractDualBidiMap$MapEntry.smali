.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapEntry"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 625
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 629
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-super {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
