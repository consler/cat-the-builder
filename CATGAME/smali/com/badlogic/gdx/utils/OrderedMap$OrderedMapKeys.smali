.class public Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;
.super Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedMapKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 198
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 199
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    if-eqz v0, :cond_2

    .line 208
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->valid:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    .line 211
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 212
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 213
    return-object v0

    .line 208
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 217
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    if-ltz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->removeIndex(I)Ljava/lang/Object;

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->currentIndex:I

    .line 221
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 202
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;, "Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys<TK;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->nextIndex:I

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;->hasNext:Z

    .line 204
    return-void
.end method
