.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiValuedMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V
    .locals 1

    .line 674
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->current:Ljava/util/Map$Entry;

    .line 675
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->it:Ljava/util/Iterator;

    .line 676
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 699
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 680
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->current:Ljava/util/Map$Entry;

    .line 686
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 707
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 708
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 712
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.MultiValuedMapIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$MultiValuedMapIterator;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 715
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
