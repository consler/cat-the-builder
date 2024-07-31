.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 692
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectFloatMap;, "Lcom/badlogic/gdx/utils/ObjectFloatMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 689
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    .line 693
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 708
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 709
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    return v0

    .line 708
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 713
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 688
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    if-eqz v0, :cond_1

    .line 698
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 700
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    .line 701
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget v2, v2, v3

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    .line 702
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->currentIndex:I

    .line 703
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->findNextIndex()V

    .line 704
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    return-object v1

    .line 698
    .end local v0    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 688
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 717
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    .line 718
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 688
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;, "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

    return-void
.end method
