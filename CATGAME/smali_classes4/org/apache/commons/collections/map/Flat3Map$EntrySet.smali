.class Lorg/apache/commons/collections/map/Flat3Map$EntrySet;
.super Ljava/util/AbstractSet;
.source "Flat3Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 0

    .line 700
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 701
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 709
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 728
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 730
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 713
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 716
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 717
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 718
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/Flat3Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public size()I
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    return v0
.end method
