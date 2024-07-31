.class public Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "VerticalGroup.java"


# instance fields
.field private align:I

.field private columnAlign:I

.field private columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

.field private expand:Z

.field private fill:F

.field private lastPrefWidth:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private sizeInvalid:Z

.field private space:F

.field private wrap:Z

.field private wrapSpace:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 45
    const/4 v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 50
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 51
    return-void
.end method

.method private computeSize()V
    .locals 20

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 61
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 62
    .local v2, "n":I
    const/4 v3, 0x0

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 63
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v4, :cond_9

    .line 64
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 65
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 69
    :goto_0
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 70
    .local v4, "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v5, "space":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 71
    .local v6, "wrapSpace":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v7, v8

    .local v7, "pad":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    sub-float/2addr v8, v7

    .local v8, "groupHeight":F
    const/4 v9, 0x0

    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "y":F
    const/4 v11, 0x0

    .line 72
    .local v11, "columnWidth":F
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x1

    .line 73
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v14, :cond_1

    .line 74
    add-int/lit8 v12, v2, -0x1

    .line 75
    const/4 v2, -0x1

    .line 76
    const/4 v13, -0x1

    .line 78
    :cond_1
    :goto_1
    if-eq v12, v2, :cond_7

    .line 79
    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 82
    .local v14, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_3

    .line 83
    move-object v15, v14

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 84
    .local v15, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v16

    .line 85
    .local v16, "width":F
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v17

    .line 86
    .local v17, "height":F
    cmpl-float v18, v17, v8

    if-lez v18, :cond_2

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 87
    .end local v15    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_2
    move/from16 v3, v16

    goto :goto_2

    .line 88
    .end local v16    # "width":F
    .end local v17    # "height":F
    :cond_3
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v16

    .line 89
    .restart local v16    # "width":F
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v17

    move/from16 v3, v16

    .line 92
    .end local v16    # "width":F
    .local v3, "width":F
    .restart local v17    # "height":F
    :goto_2
    const/4 v15, 0x0

    cmpl-float v16, v10, v15

    if-lez v16, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    add-float v15, v17, v15

    .line 93
    .local v15, "incrY":F
    add-float v16, v10, v15

    cmpl-float v16, v16, v8

    if-lez v16, :cond_6

    const/16 v16, 0x0

    cmpl-float v19, v10, v16

    if-lez v19, :cond_6

    .line 94
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    move/from16 v16, v2

    .end local v2    # "n":I
    .local v16, "n":I
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    move/from16 v19, v5

    .end local v5    # "space":F
    .local v19, "space":F
    add-float v5, v10, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 97
    const/4 v2, 0x0

    cmpl-float v5, v9, v2

    if-lez v5, :cond_5

    add-float/2addr v9, v6

    .line 98
    :cond_5
    add-float/2addr v9, v11

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    move/from16 v15, v17

    goto :goto_4

    .line 93
    .end local v16    # "n":I
    .end local v19    # "space":F
    .restart local v2    # "n":I
    .restart local v5    # "space":F
    :cond_6
    move/from16 v16, v2

    move/from16 v19, v5

    .line 103
    .end local v2    # "n":I
    .end local v5    # "space":F
    .restart local v16    # "n":I
    .restart local v19    # "space":F
    :goto_4
    add-float/2addr v10, v15

    .line 104
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 78
    .end local v3    # "width":F
    .end local v14    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v15    # "incrY":F
    .end local v17    # "height":F
    add-int/2addr v12, v13

    move/from16 v2, v16

    move/from16 v5, v19

    const/4 v3, 0x0

    goto :goto_1

    .line 106
    .end local v16    # "n":I
    .end local v19    # "space":F
    .restart local v2    # "n":I
    .restart local v5    # "space":F
    :cond_7
    move/from16 v16, v2

    move/from16 v19, v5

    .end local v2    # "n":I
    .end local v5    # "space":F
    .restart local v16    # "n":I
    .restart local v19    # "space":F
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 107
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 108
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    add-float v3, v10, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 109
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_8

    add-float/2addr v9, v6

    .line 110
    :cond_8
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    add-float v3, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 111
    .end local v4    # "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v6    # "wrapSpace":F
    .end local v7    # "pad":F
    .end local v8    # "groupHeight":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "columnWidth":F
    .end local v12    # "i":I
    .end local v13    # "incr":I
    .end local v19    # "space":F
    move/from16 v2, v16

    goto :goto_7

    .line 112
    .end local v16    # "n":I
    .restart local v2    # "n":I
    :cond_9
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_b

    .line 114
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 115
    .local v4, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_a

    .line 116
    move-object v5, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 117
    .local v5, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 118
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 119
    .end local v5    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_6

    .line 120
    :cond_a
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 121
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 113
    .end local v4    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 125
    .end local v3    # "i":I
    :cond_b
    :goto_7
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 126
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    if-eqz v4, :cond_c

    .line 127
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 128
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 130
    :cond_c
    return-void
.end method

.method private layoutWrapped()V
    .locals 30

    .line 206
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getPrefWidth()F

    move-result v1

    .line 207
    .local v1, "prefWidth":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 208
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->invalidateHierarchy()V

    .line 212
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 213
    .local v2, "align":I
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 214
    .local v3, "round":Z
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v4, "space":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .local v5, "padLeft":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .local v6, "fill":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 215
    .local v7, "wrapSpace":F
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v8, v9

    .line 216
    .local v8, "maxHeight":F
    move v9, v5

    .local v9, "columnX":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v10

    .line 217
    .local v10, "groupHeight":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v11, v12

    add-float/2addr v11, v4

    .local v11, "yStart":F
    const/4 v12, 0x0

    .local v12, "y":F
    const/4 v13, 0x0

    .line 219
    .local v13, "columnWidth":F
    and-int/lit8 v14, v2, 0x10

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v14, :cond_1

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v14

    sub-float/2addr v14, v1

    add-float/2addr v9, v14

    goto :goto_0

    .line 221
    :cond_1
    and-int/lit8 v14, v2, 0x8

    if-nez v14, :cond_2

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v14

    sub-float/2addr v14, v1

    div-float/2addr v14, v15

    add-float/2addr v9, v14

    .line 224
    :cond_2
    :goto_0
    and-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_3

    .line 225
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v14, v10, v14

    add-float/2addr v11, v14

    goto :goto_1

    .line 226
    :cond_3
    and-int/lit8 v14, v2, 0x4

    if-nez v14, :cond_4

    .line 227
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v14, v10, v14

    div-float/2addr v14, v15

    add-float/2addr v11, v14

    .line 229
    :cond_4
    :goto_1
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v10, v14

    .line 230
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 232
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 233
    .local v14, "columnSizes":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v15

    .line 234
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/16 v17, 0x0

    move/from16 v18, v1

    .end local v1    # "prefWidth":F
    .local v17, "i":I
    .local v18, "prefWidth":F
    iget v1, v15, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v1, "n":I
    const/16 v19, 0x1

    .line 235
    .local v19, "incr":I
    move/from16 v20, v5

    .end local v5    # "padLeft":F
    .local v20, "padLeft":F
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v5, :cond_5

    .line 236
    add-int/lit8 v17, v1, -0x1

    .line 237
    const/4 v1, -0x1

    .line 238
    const/16 v19, -0x1

    .line 240
    :cond_5
    const/4 v5, 0x0

    move/from16 v29, v17

    move/from16 v17, v3

    move/from16 v3, v29

    .local v3, "i":I
    .local v5, "r":I
    .local v17, "round":Z
    :goto_2
    if-eq v3, v1, :cond_13

    .line 241
    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    .end local v1    # "n":I
    .local v22, "n":I
    move-object/from16 v1, v21

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 244
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v21, 0x0

    .line 245
    .local v21, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    move-object/from16 v23, v15

    .end local v15    # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .local v23, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    instance-of v15, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_7

    .line 246
    move-object/from16 v21, v1

    check-cast v21, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 247
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    .line 248
    .local v15, "width":F
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v24

    .line 249
    .local v24, "height":F
    cmpl-float v25, v24, v10

    if-lez v25, :cond_6

    move/from16 v25, v15

    .end local v15    # "width":F
    .local v25, "width":F
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v15, v25

    goto :goto_3

    .end local v25    # "width":F
    .restart local v15    # "width":F
    :cond_6
    move/from16 v25, v15

    .end local v15    # "width":F
    .restart local v25    # "width":F
    :goto_3
    move/from16 v29, v24

    move/from16 v24, v10

    move/from16 v10, v29

    goto :goto_4

    .line 251
    .end local v24    # "height":F
    .end local v25    # "width":F
    :cond_7
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    .line 252
    .restart local v15    # "width":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v24

    move/from16 v29, v24

    move/from16 v24, v10

    move/from16 v10, v29

    .line 255
    .local v10, "height":F
    .local v24, "groupHeight":F
    :goto_4
    sub-float v25, v12, v10

    sub-float v25, v25, v4

    move/from16 v26, v12

    .end local v12    # "y":F
    .local v26, "y":F
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    cmpg-float v12, v25, v12

    if-ltz v12, :cond_9

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v12, v26

    goto :goto_7

    .line 256
    :cond_9
    :goto_5
    move v12, v11

    .line 257
    .end local v26    # "y":F
    .restart local v12    # "y":F
    and-int/lit8 v25, v2, 0x4

    if-eqz v25, :cond_a

    .line 258
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v25

    sub-float v25, v8, v25

    sub-float v12, v12, v25

    goto :goto_6

    .line 259
    :cond_a
    and-int/lit8 v25, v2, 0x2

    if-nez v25, :cond_b

    .line 260
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v25

    sub-float v25, v8, v25

    const/high16 v16, 0x40000000    # 2.0f

    div-float v25, v25, v16

    sub-float v12, v12, v25

    .line 261
    :cond_b
    :goto_6
    if-lez v5, :cond_c

    .line 262
    add-float/2addr v9, v7

    .line 263
    add-float/2addr v9, v13

    .line 265
    :cond_c
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    .line 266
    .end local v13    # "columnWidth":F
    .local v0, "columnWidth":F
    add-int/lit8 v5, v5, 0x2

    move v13, v0

    .line 269
    .end local v0    # "columnWidth":F
    .restart local v13    # "columnWidth":F
    :goto_7
    const/4 v0, 0x0

    cmpl-float v25, v6, v0

    if-lez v25, :cond_d

    mul-float v15, v13, v6

    .line 271
    :cond_d
    if-eqz v21, :cond_e

    .line 272
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 273
    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v0

    .line 274
    .local v0, "maxWidth":F
    const/16 v25, 0x0

    cmpl-float v25, v0, v25

    if-lez v25, :cond_e

    cmpl-float v25, v15, v0

    if-lez v25, :cond_e

    move v15, v0

    .line 277
    .end local v0    # "maxWidth":F
    :cond_e
    move v0, v9

    .line 278
    .local v0, "x":F
    and-int/lit8 v25, v2, 0x10

    if-eqz v25, :cond_f

    .line 279
    sub-float v25, v13, v15

    add-float v0, v0, v25

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_8

    .line 280
    :cond_f
    and-int/lit8 v25, v2, 0x8

    if-nez v25, :cond_10

    .line 281
    sub-float v25, v13, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v25, v25, v16

    add-float v0, v0, v25

    goto :goto_8

    .line 280
    :cond_10
    const/high16 v16, 0x40000000    # 2.0f

    .line 283
    :goto_8
    add-float v25, v10, v4

    sub-float v12, v12, v25

    .line 284
    if-eqz v17, :cond_11

    .line 285
    move/from16 v25, v2

    .end local v2    # "align":I
    .local v25, "align":I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v27, v4

    .end local v4    # "space":F
    .local v27, "space":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    move/from16 v26, v5

    .end local v5    # "r":I
    .local v26, "r":I
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v28, v6

    .end local v6    # "fill":F
    .local v28, "fill":F
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_9

    .line 287
    .end local v25    # "align":I
    .end local v26    # "r":I
    .end local v27    # "space":F
    .end local v28    # "fill":F
    .restart local v2    # "align":I
    .restart local v4    # "space":F
    .restart local v5    # "r":I
    .restart local v6    # "fill":F
    :cond_11
    move/from16 v25, v2

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .end local v2    # "align":I
    .end local v4    # "space":F
    .end local v5    # "r":I
    .end local v6    # "fill":F
    .restart local v25    # "align":I
    .restart local v26    # "r":I
    .restart local v27    # "space":F
    .restart local v28    # "fill":F
    invoke-virtual {v1, v0, v12, v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 289
    :goto_9
    if-eqz v21, :cond_12

    invoke-interface/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 240
    .end local v0    # "x":F
    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "height":F
    .end local v15    # "width":F
    .end local v21    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_12
    add-int v3, v3, v19

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v15, v23

    move/from16 v10, v24

    move/from16 v2, v25

    move/from16 v5, v26

    move/from16 v4, v27

    move/from16 v6, v28

    goto/16 :goto_2

    .line 291
    .end local v22    # "n":I
    .end local v23    # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v24    # "groupHeight":F
    .end local v25    # "align":I
    .end local v26    # "r":I
    .end local v27    # "space":F
    .end local v28    # "fill":F
    .local v1, "n":I
    .restart local v2    # "align":I
    .restart local v4    # "space":F
    .restart local v6    # "fill":F
    .local v10, "groupHeight":F
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    :cond_13
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "align"    # I

    .line 401
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 402
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 427
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 428
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 429
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 407
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 408
    return-object p0
.end method

.method public columnAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "columnAlign"    # I

    .line 508
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 509
    return-object p0
.end method

.method public columnBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 536
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 537
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 538
    return-object p0
.end method

.method public columnCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 514
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 515
    return-object p0
.end method

.method public columnLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 528
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 529
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 530
    return-object p0
.end method

.method public columnRight()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 543
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 544
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 545
    return-object p0
.end method

.method public columnTop()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 521
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 522
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 523
    return-object p0
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 12
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 549
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 550
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 551
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 552
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float v7, v0, v1

    .line 554
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getRotation()F

    move-result v11

    .line 553
    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    .line 555
    return-void
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 460
    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "expand"    # Z

    .line 465
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 466
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 444
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 445
    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "fill"    # F

    .line 450
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 451
    return-object p0
.end method

.method public getAlign()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return v0
.end method

.method public getExpand()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    return v0
.end method

.method public getFill()F
    .locals 1

    .line 455
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 387
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .locals 1

    .line 395
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 301
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 295
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .locals 1

    .line 332
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    return v0
.end method

.method public getWrap()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    return v0
.end method

.method public getWrapSpace()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    .line 476
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 477
    return-object p0
.end method

.method public invalidate()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 56
    return-void
.end method

.method public layout()V
    .locals 23

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 135
    :cond_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->layoutWrapped()V

    .line 137
    return-void

    .line 140
    :cond_1
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 141
    .local v1, "round":Z
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 142
    .local v2, "align":I
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .local v3, "space":F
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .local v4, "padLeft":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 143
    .local v5, "fill":F
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v6

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    :goto_0
    sub-float/2addr v6, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v6, v7

    .local v6, "columnWidth":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    .line 145
    .local v7, "y":F
    and-int/lit8 v8, v2, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    add-float/2addr v7, v8

    goto :goto_1

    .line 147
    :cond_3
    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_4

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 151
    :cond_4
    :goto_1
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_5

    .line 152
    move v8, v4

    .local v8, "startX":F
    goto :goto_2

    .line 153
    .end local v8    # "startX":F
    :cond_5
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_6

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    .restart local v8    # "startX":F
    goto :goto_2

    .line 156
    .end local v8    # "startX":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v8

    sub-float/2addr v8, v4

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 158
    .restart local v8    # "startX":F
    :goto_2
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v10

    .line 161
    .local v10, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v10, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v12, "n":I
    const/4 v13, 0x1

    .line 162
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    if-eqz v14, :cond_7

    .line 163
    add-int/lit8 v11, v12, -0x1

    .line 164
    const/4 v12, -0x1

    .line 165
    const/4 v13, -0x1

    .line 167
    :cond_7
    const/4 v14, 0x0

    .local v14, "r":I
    :goto_3
    if-eq v11, v12, :cond_10

    .line 168
    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 171
    .local v15, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v16, 0x0

    .line 172
    .local v16, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    instance-of v9, v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v9, :cond_8

    .line 173
    move-object/from16 v16, v15

    check-cast v16, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 174
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v9

    .line 175
    .local v9, "width":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v18

    move/from16 v0, v18

    .local v18, "height":F
    goto :goto_4

    .line 177
    .end local v9    # "width":F
    .end local v18    # "height":F
    :cond_8
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    .line 178
    .restart local v9    # "width":F
    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v18

    move/from16 v0, v18

    .line 181
    .local v0, "height":F
    :goto_4
    const/16 v18, 0x0

    cmpl-float v19, v5, v18

    if-lez v19, :cond_9

    mul-float v9, v6, v5

    .line 183
    :cond_9
    if-eqz v16, :cond_a

    .line 184
    move/from16 v19, v4

    .end local v4    # "padLeft":F
    .local v19, "padLeft":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 185
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v4

    .line 186
    .local v4, "maxWidth":F
    cmpl-float v18, v4, v18

    if-lez v18, :cond_b

    cmpl-float v18, v9, v4

    if-lez v18, :cond_b

    move v9, v4

    goto :goto_5

    .line 183
    .end local v19    # "padLeft":F
    .local v4, "padLeft":F
    :cond_a
    move/from16 v19, v4

    .line 189
    .end local v4    # "padLeft":F
    .restart local v19    # "padLeft":F
    :cond_b
    :goto_5
    move v4, v8

    .line 190
    .local v4, "x":F
    and-int/lit8 v18, v2, 0x10

    if-eqz v18, :cond_c

    .line 191
    sub-float v18, v6, v9

    add-float v4, v4, v18

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_6

    .line 192
    :cond_c
    and-int/lit8 v18, v2, 0x8

    if-nez v18, :cond_d

    .line 193
    sub-float v18, v6, v9

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v18, v17

    add-float v4, v4, v18

    goto :goto_6

    .line 192
    :cond_d
    const/high16 v17, 0x40000000    # 2.0f

    .line 195
    :goto_6
    add-float v18, v0, v3

    sub-float v7, v7, v18

    .line 196
    if-eqz v1, :cond_e

    .line 197
    move/from16 v18, v1

    .end local v1    # "round":Z
    .local v18, "round":Z
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move/from16 v20, v2

    .end local v2    # "align":I
    .local v20, "align":I
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v21, v3

    .end local v3    # "space":F
    .local v21, "space":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v22, v5

    .end local v5    # "fill":F
    .local v22, "fill":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v15, v1, v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_7

    .line 199
    .end local v18    # "round":Z
    .end local v20    # "align":I
    .end local v21    # "space":F
    .end local v22    # "fill":F
    .restart local v1    # "round":Z
    .restart local v2    # "align":I
    .restart local v3    # "space":F
    .restart local v5    # "fill":F
    :cond_e
    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v5

    .end local v1    # "round":Z
    .end local v2    # "align":I
    .end local v3    # "space":F
    .end local v5    # "fill":F
    .restart local v18    # "round":Z
    .restart local v20    # "align":I
    .restart local v21    # "space":F
    .restart local v22    # "fill":F
    invoke-virtual {v15, v4, v7, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 201
    :goto_7
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 167
    .end local v0    # "height":F
    .end local v4    # "x":F
    .end local v9    # "width":F
    .end local v15    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v16    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_f
    add-int/2addr v11, v13

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v1, v18

    move/from16 v4, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_3

    .line 203
    .end local v14    # "r":I
    .end local v18    # "round":Z
    .end local v19    # "padLeft":F
    .end local v20    # "align":I
    .end local v21    # "space":F
    .end local v22    # "fill":F
    .restart local v1    # "round":Z
    .restart local v2    # "align":I
    .restart local v3    # "space":F
    .local v4, "padLeft":F
    .restart local v5    # "fill":F
    :cond_10
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 421
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 422
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "pad"    # F

    .line 347
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 348
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 349
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 350
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 351
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F

    .line 355
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 356
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 357
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 358
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 359
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padBottom"    # F

    .line 373
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 374
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padLeft"    # F

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 369
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padRight"    # F

    .line 378
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 379
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padTop"    # F

    .line 363
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 364
    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .line 312
    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "reverse"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .line 318
    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 434
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 435
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 436
    return-object p0
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .line 306
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 307
    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "space"    # F

    .line 327
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    .line 328
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 414
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 415
    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    .line 492
    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "wrap"    # Z

    .line 496
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    .line 497
    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "wrapSpace"    # F

    .line 337
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 338
    return-object p0
.end method
