.class Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;
.super Ljava/util/AbstractList;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValuesView"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 458
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 474
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView$1;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView$1;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/ListOrderedMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method
