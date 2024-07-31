.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;
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
    name = "SkylineStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;
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

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 16
    .param p1, "packer"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 653
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 654
    .local v2, "padding":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .local v3, "pageWidth":I
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    .line 655
    .local v4, "pageHeight":I
    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    add-int/2addr v5, v2

    .local v5, "rectWidth":I
    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    add-int/2addr v6, v2

    .line 656
    .local v6, "rectHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v8, "n":I
    :goto_0
    if-ge v7, v8, :cond_a

    .line 657
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;

    .line 658
    .local v9, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;
    const/4 v10, 0x0

    .line 660
    .local v10, "bestRow":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    const/4 v11, 0x0

    .local v11, "ii":I
    iget-object v12, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;->rows:Lcom/badlogic/gdx/utils/Array;

    iget v12, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v12, v12, -0x1

    .local v12, "nn":I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 661
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;->rows:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;

    .line 662
    .local v13, "row":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    add-int/2addr v14, v5

    if-lt v14, v3, :cond_0

    goto :goto_2

    .line 663
    :cond_0
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    add-int/2addr v14, v6

    if-lt v14, v4, :cond_1

    goto :goto_2

    .line 664
    :cond_1
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    if-le v6, v14, :cond_2

    goto :goto_2

    .line 665
    :cond_2
    if-eqz v10, :cond_3

    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    iget v15, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    if-ge v14, v15, :cond_4

    :cond_3
    move-object v10, v13

    .line 660
    .end local v13    # "row":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 667
    .end local v11    # "ii":I
    .end local v12    # "nn":I
    :cond_5
    if-nez v10, :cond_8

    .line 669
    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;->rows:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;

    .line 670
    .local v11, "row":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    add-int/2addr v12, v6

    if-lt v12, v4, :cond_6

    goto :goto_4

    .line 671
    :cond_6
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    add-int/2addr v12, v5

    if-ge v12, v3, :cond_7

    .line 672
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    .line 673
    move-object v10, v11

    goto :goto_3

    .line 674
    :cond_7
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    add-int/2addr v12, v13

    add-int/2addr v12, v6

    if-ge v12, v4, :cond_8

    .line 676
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;

    invoke-direct {v12}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;-><init>()V

    move-object v10, v12

    .line 677
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    add-int/2addr v12, v13

    iput v12, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    .line 678
    iput v6, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    .line 679
    iget-object v12, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;->rows:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 682
    .end local v11    # "row":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    .line 683
    iget v11, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    int-to-float v11, v11

    iput v11, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 684
    iget v11, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    int-to-float v11, v11

    iput v11, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 685
    iget v11, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    add-int/2addr v11, v5

    iput v11, v10, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    .line 686
    return-object v9

    .line 656
    .end local v9    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;
    .end local v10    # "bestRow":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    :cond_9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 690
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_a
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;

    invoke-direct {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    .line 691
    .local v7, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 692
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;-><init>()V

    .line 693
    .local v8, "row":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;
    add-int v9, v2, v5

    iput v9, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->x:I

    .line 694
    iput v2, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->y:I

    .line 695
    iput v6, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage$Row;->height:I

    .line 696
    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$SkylinePage;->rows:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 697
    int-to-float v9, v2

    iput v9, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 698
    int-to-float v9, v2

    iput v9, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 699
    return-object v7
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

    .line 642
    .local p1, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/Pixmap;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;->comparator:Ljava/util/Comparator;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;->comparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 650
    return-void
.end method
