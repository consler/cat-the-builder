.class Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedMapEntry"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 620
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 625
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 629
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
