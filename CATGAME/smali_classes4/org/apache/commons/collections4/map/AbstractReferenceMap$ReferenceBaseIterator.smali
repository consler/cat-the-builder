.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceBaseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 802
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 804
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 807
    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    .line 808
    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 836
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 839
    return-void

    .line 837
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 842
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

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
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 860
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 861
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 811
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 812
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 814
    .local v0, "e":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 815
    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 816
    add-int/lit8 v1, v1, -0x1

    .line 817
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_1

    .line 819
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 820
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 821
    if-nez v0, :cond_1

    .line 822
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 823
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 824
    const/4 v2, 0x0

    return v2

    .line 826
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 827
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 828
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 831
    .end local v0    # "e":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "i":I
    :cond_2
    goto :goto_0

    .line 832
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 846
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 847
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 850
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 851
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 852
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 855
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 856
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 865
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 866
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 871
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 872
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    .line 874
    return-void

    .line 867
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
