.class public Lcom/badlogic/gdx/utils/IntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IntMap$MapIterator<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntMap;

    .line 797
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    .line 794
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 798
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 818
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 819
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->hasNext:Z

    return v0

    .line 818
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation

    .line 802
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_2

    .line 803
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 805
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 806
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    .line 807
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    .line 810
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    .line 812
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->currentIndex:I

    .line 813
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->findNextIndex()V

    .line 814
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntMap$Entry;

    return-object v1

    .line 803
    .end local v0    # "keyTable":[I
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 793
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 827
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->remove()V

    .line 828
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 793
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Entries;, "Lcom/badlogic/gdx/utils/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method
