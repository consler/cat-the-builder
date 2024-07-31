.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 752
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 753
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 756
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 757
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    return v0

    .line 756
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 750
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 761
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_1

    .line 762
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 764
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->currentIndex:I

    .line 765
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->findNextIndex()V

    .line 766
    return-object v0

    .line 762
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 0

    .line 789
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    .line 790
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 750
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 776
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 778
    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 783
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    :cond_0
    return-object p1
.end method
