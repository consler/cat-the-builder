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
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

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

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    :cond_0
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 0

    .line 62
    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/list/TreeList;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/list/TreeList;)I
    .locals 0

    .line 62
    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    return p0
.end method

.method private checkInterval(III)V
    .locals 1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 205
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

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

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 212
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

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
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

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
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$300(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 234
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 276
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->modCount:I

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/TreeList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 167
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1
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

    const/4 v0, 0x0

    .line 127
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

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 152
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/TreeList$TreeListIterator;-><init>(Lorg/apache/commons/collections4/list/TreeList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 263
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
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 267
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/list/TreeList;->checkInterval(III)V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 250
    invoke-static {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$400(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TreeList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList;->root:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v1, :cond_0

    .line 191
    invoke-static {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_0
    return-object v0
.end method
