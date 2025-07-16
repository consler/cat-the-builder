.class public Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 575
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    .line 576
    iget p2, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p0, p2, p4, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    .line 577
    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p0, p1, p5, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 628
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 632
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 633
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 634
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    .line 640
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 652
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 3

    .line 680
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 681
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 683
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez p1, :cond_3

    .line 684
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 686
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez p1, :cond_4

    .line 687
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_2

    .line 688
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-boolean p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 689
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    :cond_5
    :goto_2
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 607
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_0

    .line 609
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 611
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected toReference(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 669
    new-instance p1, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    .line 670
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 668
    :cond_1
    new-instance p1, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    :cond_2
    return-object p2
.end method
