.class public abstract Lcom/badlogic/gdx/utils/FlushablePool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "FlushablePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected obtained:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    .line 35
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 46
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 48
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 53
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    .local p1, "objects":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z

    .line 59
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 60
    return-void
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/badlogic/gdx/utils/FlushablePool;, "Lcom/badlogic/gdx/utils/FlushablePool<TT;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/FlushablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 41
    return-object v0
.end method
