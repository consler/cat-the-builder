.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceEntrySetIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

.field previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V
    .locals 1

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    .line 729
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    .line 732
    iget p1, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 762
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1

    .line 785
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 786
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 736
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 737
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 739
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    :goto_1
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 742
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_1

    .line 744
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 745
    iput v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 748
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    .line 751
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    .line 752
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    .line 753
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 790
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1

    .line 771
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 772
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 775
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 776
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 777
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 779
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    .line 780
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 794
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 795
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 800
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 801
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    return-void

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
