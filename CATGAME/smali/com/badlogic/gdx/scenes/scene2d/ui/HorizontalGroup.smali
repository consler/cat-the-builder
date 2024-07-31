.class public Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "HorizontalGroup.java"


# instance fields
.field private align:I

.field private expand:Z

.field private fill:F

.field private lastPrefHeight:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private rowAlign:I

.field private rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

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

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 45
    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 50
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 51
    return-void
.end method

.method private computeSize()V
    .locals 20

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 61
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 62
    .local v2, "n":I
    const/4 v3, 0x0

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 63
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v4, :cond_9

    .line 64
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 65
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 69
    :goto_0
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 70
    .local v4, "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v5, "space":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 71
    .local v6, "wrapSpace":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    add-float/2addr v7, v8

    .local v7, "pad":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    sub-float/2addr v8, v7

    .local v8, "groupWidth":F
    const/4 v9, 0x0

    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "y":F
    const/4 v11, 0x0

    .line 72
    .local v11, "rowHeight":F
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x1

    .line 73
    .local v13, "incr":I
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

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
    cmpl-float v17, v16, v8

    if-lez v17, :cond_2

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 86
    :cond_2
    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v3

    .line 87
    .end local v15    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .local v3, "height":F
    goto :goto_2

    .line 88
    .end local v3    # "height":F
    .end local v16    # "width":F
    :cond_3
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v16

    .line 89
    .restart local v16    # "width":F
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    .line 92
    .restart local v3    # "height":F
    :goto_2
    const/4 v15, 0x0

    cmpl-float v18, v9, v15

    if-lez v18, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    add-float v15, v16, v15

    .line 93
    .local v15, "incrX":F
    add-float v18, v9, v15

    cmpl-float v18, v18, v8

    if-lez v18, :cond_6

    const/16 v17, 0x0

    cmpl-float v18, v9, v17

    if-lez v18, :cond_6

    .line 94
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    move/from16 v18, v2

    .end local v2    # "n":I
    .local v18, "n":I
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    move/from16 v19, v5

    .end local v5    # "space":F
    .local v19, "space":F
    add-float v5, v9, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 97
    const/4 v2, 0x0

    cmpl-float v5, v10, v2

    if-lez v5, :cond_5

    add-float/2addr v10, v6

    .line 98
    :cond_5
    add-float/2addr v10, v11

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    move/from16 v15, v16

    goto :goto_4

    .line 93
    .end local v18    # "n":I
    .end local v19    # "space":F
    .restart local v2    # "n":I
    .restart local v5    # "space":F
    :cond_6
    move/from16 v18, v2

    move/from16 v19, v5

    .line 103
    .end local v2    # "n":I
    .end local v5    # "space":F
    .restart local v18    # "n":I
    .restart local v19    # "space":F
    :goto_4
    add-float/2addr v9, v15

    .line 104
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 78
    .end local v3    # "height":F
    .end local v14    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v15    # "incrX":F
    .end local v16    # "width":F
    add-int/2addr v12, v13

    move/from16 v2, v18

    move/from16 v5, v19

    const/4 v3, 0x0

    goto :goto_1

    .line 106
    .end local v18    # "n":I
    .end local v19    # "space":F
    .restart local v2    # "n":I
    .restart local v5    # "space":F
    :cond_7
    move/from16 v18, v2

    move/from16 v19, v5

    .end local v2    # "n":I
    .end local v5    # "space":F
    .restart local v18    # "n":I
    .restart local v19    # "space":F
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 107
    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 108
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    add-float v3, v9, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 109
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_8

    add-float/2addr v10, v6

    .line 110
    :cond_8
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    add-float v3, v10, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 111
    .end local v4    # "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v6    # "wrapSpace":F
    .end local v7    # "pad":F
    .end local v8    # "groupWidth":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "rowHeight":F
    .end local v12    # "i":I
    .end local v13    # "incr":I
    .end local v19    # "space":F
    move/from16 v2, v18

    goto :goto_7

    .line 112
    .end local v18    # "n":I
    .restart local v2    # "n":I
    :cond_9
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

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
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 118
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 119
    .end local v5    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_6

    .line 120
    :cond_a
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 121
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 113
    .end local v4    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 125
    .end local v3    # "i":I
    :cond_b
    :goto_7
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 126
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    if-eqz v3, :cond_c

    .line 127
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    .line 128
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    .line 130
    :cond_c
    return-void
.end method

.method private layoutWrapped()V
    .locals 29

    .line 206
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getPrefHeight()F

    move-result v1

    .line 207
    .local v1, "prefHeight":F
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->lastPrefHeight:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 208
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->lastPrefHeight:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->invalidateHierarchy()V

    .line 212
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 213
    .local v2, "align":I
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 214
    .local v3, "round":Z
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v4, "space":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .local v5, "padBottom":F
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .local v6, "fill":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 215
    .local v7, "wrapSpace":F
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float/2addr v8, v9

    .line 216
    .local v8, "maxWidth":F
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float v9, v1, v9

    .local v9, "rowY":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v10

    .local v10, "groupWidth":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .local v11, "xStart":F
    const/4 v12, 0x0

    .local v12, "x":F
    const/4 v13, 0x0

    .line 218
    .local v13, "rowHeight":F
    and-int/lit8 v14, v2, 0x2

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v14, :cond_1

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v14

    sub-float/2addr v14, v1

    add-float/2addr v9, v14

    goto :goto_0

    .line 220
    :cond_1
    and-int/lit8 v14, v2, 0x4

    if-nez v14, :cond_2

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v14

    sub-float/2addr v14, v1

    div-float/2addr v14, v15

    add-float/2addr v9, v14

    .line 223
    :cond_2
    :goto_0
    and-int/lit8 v14, v2, 0x10

    if-eqz v14, :cond_3

    .line 224
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float v14, v10, v14

    add-float/2addr v11, v14

    goto :goto_1

    .line 225
    :cond_3
    and-int/lit8 v14, v2, 0x8

    if-nez v14, :cond_4

    .line 226
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float v14, v10, v14

    div-float/2addr v14, v15

    add-float/2addr v11, v14

    .line 228
    :cond_4
    :goto_1
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float/2addr v10, v14

    .line 229
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 231
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 232
    .local v14, "rowSizes":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v15

    .line 233
    .local v15, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/16 v17, 0x0

    move/from16 v18, v1

    .end local v1    # "prefHeight":F
    .local v17, "i":I
    .local v18, "prefHeight":F
    iget v1, v15, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v1, "n":I
    const/16 v19, 0x1

    .line 234
    .local v19, "incr":I
    move/from16 v20, v5

    .end local v5    # "padBottom":F
    .local v20, "padBottom":F
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    if-eqz v5, :cond_5

    .line 235
    add-int/lit8 v17, v1, -0x1

    .line 236
    const/4 v1, -0x1

    .line 237
    const/16 v19, -0x1

    .line 239
    :cond_5
    const/4 v5, 0x0

    move/from16 v0, v17

    .end local v17    # "i":I
    .local v0, "i":I
    .local v5, "r":I
    :goto_2
    if-eq v0, v1, :cond_14

    .line 240
    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v21, v1

    .end local v1    # "n":I
    .local v21, "n":I
    move-object/from16 v1, v17

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 243
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/16 v17, 0x0

    .line 244
    .local v17, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    move/from16 v22, v13

    .end local v13    # "rowHeight":F
    .local v22, "rowHeight":F
    instance-of v13, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v13, :cond_7

    .line 245
    move-object/from16 v17, v1

    check-cast v17, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 246
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v13

    .line 247
    .local v13, "width":F
    cmpl-float v23, v13, v10

    if-lez v23, :cond_6

    move/from16 v23, v13

    .end local v13    # "width":F
    .local v23, "width":F
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .end local v23    # "width":F
    .restart local v13    # "width":F
    goto :goto_3

    :cond_6
    move/from16 v23, v13

    .line 248
    :goto_3
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v23

    .local v23, "height":F
    goto :goto_4

    .line 250
    .end local v13    # "width":F
    .end local v23    # "height":F
    :cond_7
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v13

    .line 251
    .restart local v13    # "width":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v23

    .line 254
    .restart local v23    # "height":F
    :goto_4
    add-float v24, v12, v13

    cmpl-float v24, v24, v10

    if-gtz v24, :cond_9

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v24, v8

    goto :goto_7

    .line 255
    :cond_9
    :goto_5
    move v12, v11

    .line 256
    and-int/lit8 v24, v2, 0x10

    if-eqz v24, :cond_a

    .line 257
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v24

    sub-float v24, v8, v24

    add-float v12, v12, v24

    goto :goto_6

    .line 258
    :cond_a
    and-int/lit8 v24, v2, 0x8

    if-nez v24, :cond_b

    .line 259
    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v24

    sub-float v24, v8, v24

    const/high16 v16, 0x40000000    # 2.0f

    div-float v24, v24, v16

    add-float v12, v12, v24

    .line 260
    :cond_b
    :goto_6
    move/from16 v24, v8

    .end local v8    # "maxWidth":F
    .local v24, "maxWidth":F
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    .line 261
    .end local v22    # "rowHeight":F
    .local v8, "rowHeight":F
    if-lez v5, :cond_c

    sub-float/2addr v9, v7

    .line 262
    :cond_c
    sub-float/2addr v9, v8

    .line 263
    add-int/lit8 v5, v5, 0x2

    move/from16 v22, v8

    .line 266
    .end local v8    # "rowHeight":F
    .restart local v22    # "rowHeight":F
    :goto_7
    const/4 v8, 0x0

    cmpl-float v25, v6, v8

    if-lez v25, :cond_d

    mul-float v23, v22, v6

    :cond_d
    move/from16 v8, v23

    .line 268
    .end local v23    # "height":F
    .local v8, "height":F
    if-eqz v17, :cond_e

    .line 269
    move/from16 v23, v5

    .end local v5    # "r":I
    .local v23, "r":I
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 270
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v5

    .line 271
    .local v5, "maxHeight":F
    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_f

    cmpl-float v25, v8, v5

    if-lez v25, :cond_f

    move v8, v5

    goto :goto_8

    .line 268
    .end local v23    # "r":I
    .local v5, "r":I
    :cond_e
    move/from16 v23, v5

    .line 274
    .end local v5    # "r":I
    .restart local v23    # "r":I
    :cond_f
    :goto_8
    move v5, v9

    .line 275
    .local v5, "y":F
    and-int/lit8 v25, v2, 0x2

    if-eqz v25, :cond_10

    .line 276
    sub-float v25, v22, v8

    add-float v5, v5, v25

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_9

    .line 277
    :cond_10
    and-int/lit8 v25, v2, 0x4

    if-nez v25, :cond_11

    .line 278
    sub-float v25, v22, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v25, v25, v16

    add-float v5, v5, v25

    goto :goto_9

    .line 277
    :cond_11
    const/high16 v16, 0x40000000    # 2.0f

    .line 280
    :goto_9
    if-eqz v3, :cond_12

    .line 281
    move/from16 v25, v2

    .end local v2    # "align":I
    .local v25, "align":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v26, v3

    .end local v3    # "round":Z
    .local v26, "round":Z
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v27, v6

    .end local v6    # "fill":F
    .local v27, "fill":F
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    move/from16 v28, v7

    .end local v7    # "wrapSpace":F
    .local v28, "wrapSpace":F
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_a

    .line 283
    .end local v25    # "align":I
    .end local v26    # "round":Z
    .end local v27    # "fill":F
    .end local v28    # "wrapSpace":F
    .restart local v2    # "align":I
    .restart local v3    # "round":Z
    .restart local v6    # "fill":F
    .restart local v7    # "wrapSpace":F
    :cond_12
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, v7

    .end local v2    # "align":I
    .end local v3    # "round":Z
    .end local v6    # "fill":F
    .end local v7    # "wrapSpace":F
    .restart local v25    # "align":I
    .restart local v26    # "round":Z
    .restart local v27    # "fill":F
    .restart local v28    # "wrapSpace":F
    invoke-virtual {v1, v12, v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 284
    :goto_a
    add-float v2, v13, v4

    add-float/2addr v12, v2

    .line 286
    if-eqz v17, :cond_13

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 239
    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5    # "y":F
    .end local v8    # "height":F
    .end local v13    # "width":F
    .end local v17    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_13
    add-int v0, v0, v19

    move/from16 v1, v21

    move/from16 v13, v22

    move/from16 v5, v23

    move/from16 v8, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_2

    .line 288
    .end local v21    # "n":I
    .end local v22    # "rowHeight":F
    .end local v23    # "r":I
    .end local v24    # "maxWidth":F
    .end local v25    # "align":I
    .end local v26    # "round":Z
    .end local v27    # "fill":F
    .end local v28    # "wrapSpace":F
    .local v1, "n":I
    .restart local v2    # "align":I
    .restart local v3    # "round":Z
    .restart local v6    # "fill":F
    .restart local v7    # "wrapSpace":F
    .local v8, "maxWidth":F
    .local v13, "rowHeight":F
    :cond_14
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "align"    # I

    .line 398
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 399
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 425
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 426
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 405
    return-object p0
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 12
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 546
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 547
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 549
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    sub-float v7, v0, v1

    .line 551
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getRotation()F

    move-result v11

    .line 550
    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    .line 552
    return-void
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 457
    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "expand"    # Z

    .line 462
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 463
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 441
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 442
    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "fill"    # F

    .line 447
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 448
    return-object p0
.end method

.method public getAlign()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    return v0
.end method

.method public getExpand()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    return v0
.end method

.method public getFill()F
    .locals 1

    .line 452
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 384
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .locals 1

    .line 392
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .locals 1

    .line 380
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 298
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 293
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .locals 1

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    return v0
.end method

.method public getWrap()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    return v0
.end method

.method public getWrapSpace()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    .line 473
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 474
    return-object p0
.end method

.method public invalidate()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    .line 56
    return-void
.end method

.method public layout()V
    .locals 23

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->sizeInvalid:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->computeSize()V

    .line 135
    :cond_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->layoutWrapped()V

    .line 137
    return-void

    .line 140
    :cond_1
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 141
    .local v1, "round":Z
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 142
    .local v2, "align":I
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .local v3, "space":F
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .local v4, "padBottom":F
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->fill:F

    .line 143
    .local v5, "fill":F
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->expand:Z

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v6

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefHeight:F

    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    .local v6, "rowHeight":F
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 145
    .local v7, "x":F
    and-int/lit8 v8, v2, 0x10

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float/2addr v8, v10

    add-float/2addr v7, v8

    goto :goto_1

    .line 147
    :cond_3
    and-int/lit8 v8, v2, 0x8

    if-nez v8, :cond_4

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->prefWidth:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 151
    :cond_4
    :goto_1
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_5

    .line 152
    move v8, v4

    .local v8, "startY":F
    goto :goto_2

    .line 153
    .end local v8    # "startY":F
    :cond_5
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_6

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    .restart local v8    # "startY":F
    goto :goto_2

    .line 156
    .end local v8    # "startY":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getHeight()F

    move-result v8

    sub-float/2addr v8, v4

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 158
    .restart local v8    # "startY":F
    :goto_2
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

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
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

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

    .line 181
    .restart local v18    # "height":F
    :goto_4
    const/16 v19, 0x0

    cmpl-float v20, v5, v19

    if-lez v20, :cond_9

    mul-float v18, v6, v5

    :cond_9
    move/from16 v0, v18

    .line 183
    .end local v18    # "height":F
    .local v0, "height":F
    if-eqz v16, :cond_a

    .line 184
    move/from16 v18, v4

    .end local v4    # "padBottom":F
    .local v18, "padBottom":F
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 185
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v4

    .line 186
    .local v4, "maxHeight":F
    cmpl-float v19, v4, v19

    if-lez v19, :cond_b

    cmpl-float v19, v0, v4

    if-lez v19, :cond_b

    move v0, v4

    goto :goto_5

    .line 183
    .end local v18    # "padBottom":F
    .local v4, "padBottom":F
    :cond_a
    move/from16 v18, v4

    .line 189
    .end local v4    # "padBottom":F
    .restart local v18    # "padBottom":F
    :cond_b
    :goto_5
    move v4, v8

    .line 190
    .local v4, "y":F
    and-int/lit8 v19, v2, 0x2

    if-eqz v19, :cond_c

    .line 191
    sub-float v19, v6, v0

    add-float v4, v4, v19

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_6

    .line 192
    :cond_c
    and-int/lit8 v19, v2, 0x4

    if-nez v19, :cond_d

    .line 193
    sub-float v19, v6, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v19, v19, v17

    add-float v4, v4, v19

    goto :goto_6

    .line 192
    :cond_d
    const/high16 v17, 0x40000000    # 2.0f

    .line 195
    :goto_6
    if-eqz v1, :cond_e

    .line 196
    move/from16 v19, v1

    .end local v1    # "round":Z
    .local v19, "round":Z
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move/from16 v20, v2

    .end local v2    # "align":I
    .local v20, "align":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v21, v5

    .end local v5    # "fill":F
    .local v21, "fill":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v22, v6

    .end local v6    # "rowHeight":F
    .local v22, "rowHeight":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15, v1, v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_7

    .line 198
    .end local v19    # "round":Z
    .end local v20    # "align":I
    .end local v21    # "fill":F
    .end local v22    # "rowHeight":F
    .restart local v1    # "round":Z
    .restart local v2    # "align":I
    .restart local v5    # "fill":F
    .restart local v6    # "rowHeight":F
    :cond_e
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v5

    move/from16 v22, v6

    .end local v1    # "round":Z
    .end local v2    # "align":I
    .end local v5    # "fill":F
    .end local v6    # "rowHeight":F
    .restart local v19    # "round":Z
    .restart local v20    # "align":I
    .restart local v21    # "fill":F
    .restart local v22    # "rowHeight":F
    invoke-virtual {v15, v7, v4, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 199
    :goto_7
    add-float v1, v9, v3

    add-float/2addr v7, v1

    .line 201
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 167
    .end local v0    # "height":F
    .end local v4    # "y":F
    .end local v9    # "width":F
    .end local v15    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v16    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :cond_f
    add-int/2addr v11, v13

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v4, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_3

    .line 203
    .end local v14    # "r":I
    .end local v18    # "padBottom":F
    .end local v19    # "round":Z
    .end local v20    # "align":I
    .end local v21    # "fill":F
    .end local v22    # "rowHeight":F
    .restart local v1    # "round":Z
    .restart local v2    # "align":I
    .local v4, "padBottom":F
    .restart local v5    # "fill":F
    .restart local v6    # "rowHeight":F
    :cond_10
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 417
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 418
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 419
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "pad"    # F

    .line 344
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 345
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 346
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 347
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 348
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F

    .line 352
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 353
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 354
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 355
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 356
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "padBottom"    # F

    .line 370
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padBottom:F

    .line 371
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "padLeft"    # F

    .line 365
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padLeft:F

    .line 366
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "padRight"    # F

    .line 375
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padRight:F

    .line 376
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "padTop"    # F

    .line 360
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->padTop:F

    .line 361
    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    .line 309
    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "reverse"    # Z

    .line 314
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->reverse:Z

    .line 315
    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 432
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 433
    return-object p0
.end method

.method public rowAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "rowAlign"    # I

    .line 505
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 506
    return-object p0
.end method

.method public rowBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 533
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 534
    return-object p0
.end method

.method public rowCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 511
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 512
    return-object p0
.end method

.method public rowLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 525
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 526
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 527
    return-object p0
.end method

.method public rowRight()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 540
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 541
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 542
    return-object p0
.end method

.method public rowTop()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 517
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 518
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->rowAlign:I

    .line 519
    return-object p0
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .line 303
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->round:Z

    .line 304
    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "space"    # F

    .line 324
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->space:F

    .line 325
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 410
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 411
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->align:I

    .line 412
    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    .line 489
    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "wrap"    # Z

    .line 493
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrap:Z

    .line 494
    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0
    .param p1, "wrapSpace"    # F

    .line 334
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->wrapSpace:F

    .line 335
    return-object p0
.end method
