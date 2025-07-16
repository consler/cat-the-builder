.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

.field private final values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->key:Ljava/lang/Object;

    .line 754
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->values:Ljava/util/Collection;

    .line 755
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 761
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_0
    return-void
.end method
