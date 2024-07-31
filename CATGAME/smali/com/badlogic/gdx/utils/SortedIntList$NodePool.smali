.class Lcom/badlogic/gdx/utils/SortedIntList$NodePool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SortedIntList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/SortedIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NodePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList$NodePool;, "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<TE;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList$NodePool;, "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<TE;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList$Node;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .line 176
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList$NodePool;, "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<TE;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->newObject()Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .locals 1
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;TE;I)",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList$NodePool;, "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<TE;>;"
    .local p1, "p":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    .local p2, "n":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 184
    .local v0, "newNode":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    iput-object p1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->p:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 185
    iput-object p2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 186
    iput-object p3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    .line 187
    iput p4, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    .line 188
    return-object v0
.end method
