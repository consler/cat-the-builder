.class public Lorg/apache/commons/collections4/list/TreeList;
.super Ljava/util/AbstractList;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;,
        Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList;

    .line 62
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList;

    .line 62
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    return v0
.end method

.method private checkInterval(III)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 291
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 294
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 212
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    .line 213
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    .line 232
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$1;)V

    .line 233
    .local v0, "cTree":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$300(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 234
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method public clear()V
    .locals 1

    .line 276
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    .line 279
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 152
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;-><init>(Lorg/apache/commons/collections4/list/TreeList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 265
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 267
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    .line 268
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 250
    .local v0, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$400(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, "result":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    .line 252
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 189
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList;, "Lorg/apache/commons/collections4/list/TreeList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 190
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v1, :cond_0

    .line 191
    invoke-static {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 193
    :cond_0
    return-object v0
.end method
