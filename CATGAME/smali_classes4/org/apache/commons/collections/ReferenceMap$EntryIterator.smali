.class Lorg/apache/commons/collections/ReferenceMap$EntryIterator;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 1

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    .line 833
    invoke-virtual {p1}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    .line 836
    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 865
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 866
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 872
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

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
.method public hasNext()Z
    .locals 2

    .line 841
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 842
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 844
    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    :goto_1
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 847
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_1

    .line 849
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 850
    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 852
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 853
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    .line 856
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 857
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 858
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 1

    .line 876
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 877
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 878
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 879
    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 880
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 883
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 884
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 894
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 895
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 898
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 899
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
