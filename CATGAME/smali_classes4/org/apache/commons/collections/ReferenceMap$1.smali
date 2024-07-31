.class Lorg/apache/commons/collections/ReferenceMap$1;
.super Ljava/util/AbstractSet;
.source "ReferenceMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    .line 618
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 621
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 622
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    return v0

    .line 623
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 624
    .local v1, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/ReferenceMap;->access$000(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v2

    .line 625
    .local v2, "e2":Lorg/apache/commons/collections/ReferenceMap$Entry;
    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 638
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 630
    .local v0, "r":Z
    if-eqz v0, :cond_0

    .line 631
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    .local v1, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .end local v1    # "e":Ljava/util/Map$Entry;
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 613
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 642
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$1;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "arr"    # [Ljava/lang/Object;

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 648
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 650
    .local v2, "e":Lorg/apache/commons/collections/ReferenceMap$Entry;
    new-instance v3, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v2    # "e":Lorg/apache/commons/collections/ReferenceMap$Entry;
    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
