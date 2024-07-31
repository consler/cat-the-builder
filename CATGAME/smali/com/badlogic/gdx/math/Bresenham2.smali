.class public Lcom/badlogic/gdx/math/Bresenham2;
.super Ljava/lang/Object;
.source "Bresenham2.java"


# instance fields
.field private final points:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field

.field private final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Bresenham2$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Bresenham2$1;-><init>(Lcom/badlogic/gdx/math/Bresenham2;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method


# virtual methods
.method public line(IIII)Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 54
    iget-object v6, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v7, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 14
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 67
    .local p5, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/math/GridPoint2;>;"
    .local p6, "output":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/GridPoint2;>;"
    move-object/from16 v0, p6

    sub-int v1, p3, p1

    .line 68
    .local v1, "w":I
    sub-int v2, p4, p2

    .line 69
    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "dx1":I
    const/4 v4, 0x0

    .local v4, "dy1":I
    const/4 v5, 0x0

    .local v5, "dx2":I
    const/4 v6, 0x0

    .line 70
    .local v6, "dy2":I
    if-gez v1, :cond_0

    .line 71
    const/4 v3, -0x1

    .line 72
    const/4 v5, -0x1

    goto :goto_0

    .line 73
    :cond_0
    if-lez v1, :cond_1

    .line 74
    const/4 v3, 0x1

    .line 75
    const/4 v5, 0x1

    .line 77
    :cond_1
    :goto_0
    if-gez v2, :cond_2

    .line 78
    const/4 v4, -0x1

    goto :goto_1

    .line 79
    :cond_2
    if-lez v2, :cond_3

    const/4 v4, 0x1

    .line 80
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 81
    .local v7, "longest":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 82
    .local v8, "shortest":I
    if-gt v7, v8, :cond_6

    .line 83
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 84
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 85
    if-gez v2, :cond_4

    .line 86
    const/4 v6, -0x1

    goto :goto_2

    .line 87
    :cond_4
    if-lez v2, :cond_5

    const/4 v6, 0x1

    .line 88
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 90
    :cond_6
    shr-int/lit8 v9, v7, 0x1

    .line 91
    .local v9, "numerator":I
    const/4 v10, 0x0

    move v11, v9

    move v12, v10

    move v9, p1

    move/from16 v10, p2

    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .local v9, "startX":I
    .local v10, "startY":I
    .local v11, "numerator":I
    .local v12, "i":I
    :goto_3
    if-gt v12, v7, :cond_8

    .line 92
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/GridPoint2;

    .line 93
    .local v13, "point":Lcom/badlogic/gdx/math/GridPoint2;
    invoke-virtual {v13, v9, v10}, Lcom/badlogic/gdx/math/GridPoint2;->set(II)Lcom/badlogic/gdx/math/GridPoint2;

    .line 94
    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 95
    add-int/2addr v11, v8

    .line 96
    if-le v11, v7, :cond_7

    .line 97
    sub-int/2addr v11, v7

    .line 98
    add-int/2addr v9, v3

    .line 99
    add-int/2addr v10, v4

    goto :goto_4

    .line 101
    :cond_7
    add-int/2addr v9, v5

    .line 102
    add-int/2addr v10, v6

    .line 91
    .end local v13    # "point":Lcom/badlogic/gdx/math/GridPoint2;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 105
    .end local v12    # "i":I
    :cond_8
    return-object v0
.end method

.method public line(Lcom/badlogic/gdx/math/GridPoint2;Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "start"    # Lcom/badlogic/gdx/math/GridPoint2;
    .param p2, "end"    # Lcom/badlogic/gdx/math/GridPoint2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v2, p2, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v3, p2, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIII)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method
