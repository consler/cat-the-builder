.class Lorg/apache/commons/collections4/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 336
    iput-object p2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 338
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 339
    iput-object p3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 340
    iput-object p4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 351
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;III",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    move-object v7, p0

    move v2, p2

    move v8, p3

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, v8, v2

    .line 377
    div-int/lit8 v0, v0, 0x2

    add-int v9, v2, v0

    const/4 v10, 0x1

    if-ge v2, v9, :cond_0

    .line 379
    new-instance v11, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v3, v9, -0x1

    move-object v0, v11

    move-object v1, p1

    move v2, p2

    move v4, v9

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v11, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0

    .line 381
    :cond_0
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    move-object/from16 v0, p5

    .line 382
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 384
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    sub-int v0, v9, p4

    .line 385
    iput v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-ge v9, v8, :cond_1

    .line 387
    new-instance v10, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v2, v9, 0x1

    move-object v0, v10

    move-object v1, p1

    move v3, p3

    move v4, v9

    move-object v5, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_1

    .line 389
    :cond_1
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    move-object/from16 v0, p6

    .line 390
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 392
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0

    .line 309
    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)Ljava/lang/Object;
    .locals 0

    .line 309
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 816
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 824
    iget v2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v2, v3, :cond_5

    .line 829
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    .line 835
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 837
    iget v6, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, p2

    move-object v7, p1

    :goto_0
    move v10, v6

    move v6, v4

    move v4, v10

    :goto_1
    if-eqz v7, :cond_1

    .line 839
    iget v8, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v9

    if-le v8, v9, :cond_1

    .line 841
    invoke-interface {v3, v7}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 842
    iget-object v7, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v7, :cond_0

    .line 844
    iget v6, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, v4

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    .line 851
    :cond_1
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 852
    invoke-direct {v0, v7, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    if-eqz v2, :cond_2

    .line 854
    invoke-direct {v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 855
    iget v1, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v8, p2, -0x1

    sub-int/2addr v1, v8

    iput v1, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_2
    if-eqz v7, :cond_3

    .line 858
    invoke-direct {v7}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    .line 859
    iput v4, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_3
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v6

    .line 861
    iput v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 862
    iget v1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    iput v1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 866
    :goto_2
    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 867
    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 868
    invoke-direct {p1, v0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 869
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-object v0

    .line 873
    :cond_5
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 875
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 877
    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    move-object v6, p0

    :goto_3
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_4
    if-eqz v6, :cond_7

    .line 879
    iget v7, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v8

    if-le v7, v8, :cond_7

    .line 881
    invoke-interface {v2, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 882
    iget-object v6, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v6, :cond_6

    .line 884
    iget v3, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v3, v4

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4

    .line 888
    :cond_7
    invoke-direct {v1, p1, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 889
    invoke-direct {v1, v6, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    if-eqz p1, :cond_8

    .line 891
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 892
    iget v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_8
    if-eqz v6, :cond_9

    .line 895
    invoke-direct {v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p1, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    sub-int/2addr v4, p2

    .line 896
    iput v4, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_9
    sub-int/2addr p2, v3

    .line 898
    iput p2, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 901
    :goto_5
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 902
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 903
    invoke-direct {p1, v1, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 904
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_5

    :cond_a
    return-object v1
.end method

.method private balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 691
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 694
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0

    .line 686
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 687
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 689
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 735
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    :goto_0
    return p1
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 540
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 707
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return p1
.end method

.method private getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 547
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private heightRightMinusLeft()I
    .locals 2

    .line 742
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 508
    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v0, -0x1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p1, v0, p2, p0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 513
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 514
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 516
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 523
    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p1, v1, p2, v0, p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 527
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_1

    sub-int/2addr p1, v1

    .line 528
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 530
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 531
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private recalcHeight()V
    .locals 3

    .line 727
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    .line 728
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    .line 726
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    return-void
.end method

.method private removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 600
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 601
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 603
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 604
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 608
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 612
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 613
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 615
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 616
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 625
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 628
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 629
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    .line 630
    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v3, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v3, v0

    iput v3, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 632
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 633
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 635
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 636
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    iget v4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 637
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 638
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 641
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_6

    .line 643
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 644
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 645
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v1, :cond_5

    .line 646
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 648
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 649
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_9

    add-int/2addr v0, v2

    .line 650
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0

    .line 654
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 655
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 656
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v1, :cond_7

    .line 657
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 659
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 660
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_8

    .line 664
    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 665
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 667
    :cond_8
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_9

    sub-int/2addr v0, v2

    .line 668
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 671
    :cond_9
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p0
.end method

.method private rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 747
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 749
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 750
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 751
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 753
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 754
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 756
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 757
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 758
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 764
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 766
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 767
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 768
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 770
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 771
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 773
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 774
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 775
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 786
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 787
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 788
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method private setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 717
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    .line 718
    iput p2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method private setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 798
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 799
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 800
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 418
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    .line 424
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 3

    .line 435
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v2, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return p2

    .line 444
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 498
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 501
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    .line 503
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method next()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 472
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 473
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method previous()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 484
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 485
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 575
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 578
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 582
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 583
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 587
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 588
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 591
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 592
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 458
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 461
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AVLNode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    .line 969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 970
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faedelung "

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
