.class public interface abstract Lorg/apache/commons/collections/map/CompositeMap$MapMutator;
.super Ljava/lang/Object;
.source "CompositeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/CompositeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapMutator"
.end annotation


# virtual methods
.method public abstract put(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract putAll(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V
.end method

.method public abstract resolveCollision(Lorg/apache/commons/collections/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V
.end method
