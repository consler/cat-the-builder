.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
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
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 751
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 752
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 755
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 756
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    return v0

    .line 755
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 769
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 749
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;

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

    .line 760
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_1

    .line 761
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 763
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->currentIndex:I

    .line 764
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->findNextIndex()V

    .line 765
    return-object v0

    .line 761
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 0

    .line 788
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    .line 789
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 749
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

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

    .line 774
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 775
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 777
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

    .line 782
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys<TK;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Keys;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    :cond_0
    return-object p1
.end method
