.class Lorg/apache/commons/collections/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 292
    iput-object p2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 293
    iput-boolean p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    .line 294
    iput-boolean p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 295
    iput-object p3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 296
    iput-object p4, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 0

    .line 266
    iget p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/list/TreeList$AVLNode;)Ljava/lang/Object;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 3

    .line 589
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

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

    .line 600
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_0

    .line 601
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 603
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0

    .line 595
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 598
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 644
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_0
    return p1
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 449
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 616
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return p1
.end method

.method private getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 456
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private heightRightMinusLeft()I
    .locals 2

    .line 651
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 3

    .line 414
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 415
    new-instance p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v0, -0x1

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p1, v0, p2, p0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 420
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 421
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 423
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    .line 424
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 3

    .line 431
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 432
    new-instance p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p1, v1, p2, v0, p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 436
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_1

    sub-int/2addr p1, v1

    .line 437
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 439
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    .line 440
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private max()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 465
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private min()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 474
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private recalcHeight()V
    .locals 3

    .line 635
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    return-void
.end method

.method private removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2

    .line 505
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 506
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 509
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 510
    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 512
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 513
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 2

    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 521
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 522
    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 524
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 525
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 6

    .line 534
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 537
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 538
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_2

    .line 539
    iget-object v4, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v5, v4, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    add-int/2addr v5, v0

    iput v5, v4, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 541
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0

    .line 544
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_5

    .line 545
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v4, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 546
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0

    .line 550
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 552
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 553
    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 554
    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v1, :cond_6

    .line 555
    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 557
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 558
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_a

    add-int/2addr v0, v3

    .line 559
    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_2

    .line 563
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 564
    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 565
    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v1, :cond_8

    .line 566
    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 568
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 569
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_9

    .line 573
    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 574
    iput-boolean v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 576
    :cond_9
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_a

    sub-int/2addr v0, v3

    .line 577
    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 580
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p0
.end method

.method private rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 6

    .line 655
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 656
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 658
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 659
    iget v3, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 660
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 662
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 663
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 665
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 666
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 667
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 6

    .line 672
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 673
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    .line 675
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 676
    iget v3, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 677
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 679
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 680
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 682
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 683
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    .line 684
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 696
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 697
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method private setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    .line 627
    iput p2, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method private setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 707
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 708
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 709
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 322
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    .line 328
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 332
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 3

    .line 339
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v2, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return p2

    .line 348
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 402
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 405
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    .line 407
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method next()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 376
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 377
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0
.end method

.method previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 388
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 389
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0
.end method

.method remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1

    .line 484
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 487
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    .line 490
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 491
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 492
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    .line 496
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 497
    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    .line 500
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    .line 501
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 362
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 768
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AVLNode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
