.class public Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p3, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    .local p2, "next":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p4, "key":Ljava/lang/Object;, "TK;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 622
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 623
    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    .line 624
    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    .line 625
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 679
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 680
    return v0

    .line 682
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 683
    return v2

    .line 686
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 687
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 688
    .local v3, "entryKey":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 689
    .local v4, "entryValue":Ljava/lang/Object;
    if-eqz v3, :cond_4

    if-nez v4, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v6, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 695
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 694
    :goto_0
    return v0

    .line 690
    :cond_4
    :goto_1
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 707
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 769
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method protected nullValue()V
    .locals 1

    .line 776
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    .line 777
    return-void
.end method

.method protected onPurge()V
    .locals 0

    .line 740
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)Z"
        }
    .end annotation

    .line 748
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .local p1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 749
    .local v0, "r":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v4, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    move v0, v2

    .line 750
    if-eqz v0, :cond_5

    .line 751
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v2, :cond_3

    .line 752
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 754
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v2, :cond_4

    .line 755
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_2

    .line 756
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$300(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 757
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->nullValue()V

    .line 760
    :cond_5
    :goto_2
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 661
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v2, :cond_0

    .line 662
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 664
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    .line 665
    return-object v0
.end method

.method protected toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;",
            "TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 723
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_0

    .line 724
    return-object p2

    .line 726
    :cond_0
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_1

    .line 727
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$SoftRef;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 729
    :cond_1
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_2

    .line 730
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 732
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method
