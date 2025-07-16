.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeysMultiSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V
    .locals 0

    .line 554
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 588
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V

    .line 589
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 581
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->size()I

    move-result v0

    return v0
.end method

.method protected uniqueElements()I
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
