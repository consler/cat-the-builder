.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuillotineStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    }
.end annotation


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    .locals 5
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    .param p2, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 575
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->full:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v0

    .line 577
    .local v0, "newNode":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v0

    .line 578
    :cond_0
    return-object v0

    .line 580
    .end local v0    # "newNode":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    :cond_1
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->full:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 581
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    return-object p1

    .line 582
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto/16 :goto_1

    .line 584
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    .line 585
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    .line 587
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v0, v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 588
    .local v0, "deltaWidth":I
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v1, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 589
    .local v1, "deltaHeight":I
    if-le v0, v1, :cond_5

    .line 590
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 591
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 592
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 593
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 595
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 596
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 597
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 598
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_0

    .line 600
    :cond_5
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 601
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 602
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 603
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 605
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 606
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 607
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 608
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 611
    :goto_0
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v2

    return-object v2

    .line 582
    .end local v0    # "deltaWidth":I
    .end local v1    # "deltaHeight":I
    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 8
    .param p1, "packer"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 550
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    .line 553
    .local v0, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    .end local v0    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    .line 559
    .restart local v0    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 560
    .local v1, "padding":I
    iget v2, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v3, v1

    add-float/2addr v2, v3

    iput v2, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 561
    iget v2, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    int-to-float v3, v1

    add-float/2addr v2, v3

    iput v2, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 562
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {p0, v2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v2

    .line 563
    .local v2, "node":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    if-nez v2, :cond_1

    .line 565
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    invoke-direct {v3, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    move-object v0, v3

    .line 566
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 567
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {p0, v3, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v2

    .line 569
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->full:Z

    .line 570
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    invoke-virtual {p3, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 571
    return-object v0
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p1, "pixmaps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Pixmap;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->comparator:Ljava/util/Comparator;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->comparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 546
    return-void
.end method
