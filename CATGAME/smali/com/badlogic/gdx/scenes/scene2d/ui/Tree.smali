.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field iconSpacingLeft:F

.field iconSpacingRight:F

.field indentSpacing:F

.field private overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field paddingLeft:F

.field paddingRight:F

.field private prefHeight:F

.field private prefWidth:F

.field rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final rootNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation
.end field

.field private sizeInvalid:Z

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field ySpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 59
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"    # Ljava/lang/String;

    .line 63
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    .line 51
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 67
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 79
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setMultiple(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V

    .line 83
    return-void
.end method

.method static collapseAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 519
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 520
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 521
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 518
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method private computeSize()V
    .locals 3

    .line 195
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 196
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 198
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 199
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 200
    return-void
.end method

.method private computeSize(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 9
    .param p2, "indent"    # F
    .param p3, "plusMinusWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 204
    .local v0, "ySpacing":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v1, v2

    .line 205
    .local v1, "spacing":F
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 206
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 207
    .local v4, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    add-float v5, p2, p3

    .line 208
    .local v5, "rowWidth":F
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 209
    .local v6, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_0

    .line 210
    move-object v7, v6

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 211
    .local v7, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v8

    add-float/2addr v5, v8

    .line 212
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v8

    iput v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 213
    .end local v7    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    goto :goto_1

    .line 214
    :cond_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    .line 215
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 217
    :goto_1
    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_1

    .line 218
    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    add-float/2addr v7, v1

    add-float/2addr v5, v7

    .line 219
    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    iget-object v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 221
    :cond_1
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 222
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    iget v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    add-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 223
    iget-boolean v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v8, p2

    invoke-direct {p0, v7, v8, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 205
    .end local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v5    # "rowWidth":F
    .end local v6    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    return-void
.end method

.method private draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 27
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "indent"    # F
    .param p4, "plusMinusWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p2, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getCullingArea()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v12

    .line 268
    .local v12, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    const/4 v0, 0x0

    .local v0, "cullBottom":F
    const/4 v1, 0x0

    .line 269
    .local v1, "cullTop":F
    if-eqz v12, :cond_0

    .line 270
    iget v0, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 271
    iget v2, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v0, v2

    move v13, v0

    move v14, v1

    goto :goto_0

    .line 269
    :cond_0
    move v13, v0

    move v14, v1

    .line 273
    .end local v0    # "cullBottom":F
    .end local v1    # "cullTop":F
    .local v13, "cullBottom":F
    .local v14, "cullTop":F
    :goto_0
    iget-object v15, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 274
    .local v15, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v16

    .local v16, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v17

    .local v17, "y":F
    add-float v18, v16, p3

    .local v18, "expandX":F
    add-float v0, v18, v11

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    add-float v7, v0, v1

    .line 275
    .local v7, "iconX":F
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    .local v6, "n":I
    :goto_1
    if-ge v5, v6, :cond_9

    .line 276
    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 277
    .local v4, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 278
    .local v3, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v19

    .local v19, "actorY":F
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 279
    .local v2, "height":F
    if-eqz v12, :cond_3

    add-float v0, v19, v2

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_1

    cmpg-float v0, v19, v14

    if-gtz v0, :cond_1

    goto :goto_2

    .line 298
    :cond_1
    cmpg-float v0, v19, v13

    if-gez v0, :cond_2

    .line 299
    return-void

    .line 298
    :cond_2
    move/from16 v25, v2

    move-object/from16 v21, v3

    move-object v10, v4

    move/from16 v26, v5

    move/from16 v22, v6

    move v6, v7

    goto/16 :goto_4

    .line 280
    :cond_3
    :goto_2
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    .line 281
    iget-object v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v17, v19

    move-object/from16 v21, v1

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v20

    sub-float v22, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v23

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v24, v2, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v25, v2

    .end local v2    # "height":F
    .local v25, "height":F
    move-object/from16 v2, v21

    move-object/from16 v21, v3

    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v21, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v3, p1

    move-object v10, v4

    .end local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .local v10, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    move/from16 v4, v16

    move/from16 v26, v5

    .end local v5    # "i":I
    .local v26, "i":I
    move/from16 v5, v22

    move/from16 v22, v6

    .end local v6    # "n":I
    .local v22, "n":I
    move/from16 v6, v23

    move/from16 v23, v7

    .end local v7    # "iconX":F
    .local v23, "iconX":F
    move/from16 v7, v24

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_3

    .line 280
    .end local v10    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v21    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v22    # "n":I
    .end local v23    # "iconX":F
    .end local v25    # "height":F
    .end local v26    # "i":I
    .restart local v2    # "height":F
    .restart local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .restart local v5    # "i":I
    .restart local v6    # "n":I
    .restart local v7    # "iconX":F
    :cond_4
    move/from16 v25, v2

    move-object/from16 v21, v3

    move-object v10, v4

    move/from16 v26, v5

    move/from16 v22, v6

    move/from16 v23, v7

    .line 282
    .end local v2    # "height":F
    .end local v3    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v5    # "i":I
    .end local v6    # "n":I
    .end local v7    # "iconX":F
    .restart local v10    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .restart local v21    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v22    # "n":I
    .restart local v23    # "iconX":F
    .restart local v25    # "height":F
    .restart local v26    # "i":I
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne v10, v0, :cond_5

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    .line 283
    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v17, v19

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v20

    sub-float v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v7, v25, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 286
    :cond_5
    :goto_3
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_6

    .line 287
    add-float v0, v17, v19

    iget-object v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v2, v25, v1

    div-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 288
    .local v6, "iconY":F
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 289
    iget-object v2, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move/from16 v4, v23

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    .line 290
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v9, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 293
    .end local v6    # "iconY":F
    :cond_6
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_7

    .line 294
    move/from16 v6, v23

    .end local v23    # "iconX":F
    .local v6, "iconX":F
    invoke-virtual {v8, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    .line 295
    .local v7, "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    add-float v0, v17, v19

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v2, v25, v1

    div-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v20, v0, v1

    .line 296
    .local v20, "iconY":F
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v4, v18

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    .line 297
    .end local v7    # "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v20    # "iconY":F
    goto :goto_4

    .line 293
    .end local v6    # "iconX":F
    .restart local v23    # "iconX":F
    :cond_7
    move/from16 v6, v23

    .line 301
    .end local v23    # "iconX":F
    .restart local v6    # "iconX":F
    :goto_4
    iget-boolean v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_8

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float v1, p3, v1

    invoke-direct {v8, v9, v0, v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 275
    .end local v10    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v19    # "actorY":F
    .end local v21    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v25    # "height":F
    :cond_8
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v10, p2

    move v7, v6

    move/from16 v6, v22

    .end local v26    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1

    .line 303
    .end local v5    # "i":I
    .end local v6    # "iconX":F
    .end local v22    # "n":I
    .local v7, "iconX":F
    :cond_9
    return-void
.end method

.method static expandAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandAll()V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method static findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 5
    .param p1, "values"    # Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array;",
            ")Z"
        }
    .end annotation

    .line 486
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .line 487
    .local v0, "expanded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 488
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 489
    .local v3, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 487
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method static findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;"
        }
    .end annotation

    .line 501
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 502
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 503
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 501
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 506
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 507
    .restart local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v3

    .line 508
    .local v3, "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-eqz v3, :cond_2

    return-object v3

    .line 505
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .end local v3    # "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 510
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 6
    .param p2, "y"    # F
    .param p3, "rowY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)F"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 350
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 351
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 352
    .local v3, "height":F
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v4

    sub-float/2addr v4, v3

    sub-float/2addr p3, v4

    .line 353
    sub-float v4, p3, v3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    sub-float/2addr v4, v5

    cmpl-float v4, p2, v4

    const/high16 v5, -0x40800000    # -1.0f

    if-ltz v4, :cond_0

    cmpg-float v4, p2, p3

    if-gez v4, :cond_0

    .line 354
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 355
    return v5

    .line 357
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v4, v3

    sub-float/2addr p3, v4

    .line 358
    iget-boolean v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_1

    .line 359
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v4, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    .line 360
    cmpl-float v4, p3, v5

    if-nez v4, :cond_1

    return v5

    .line 349
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v3    # "height":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    return p3
.end method

.method private initialize()V
    .locals 1

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 137
    return-void
.end method

.method private layout(Lcom/badlogic/gdx/utils/Array;FFF)F
    .locals 8
    .param p2, "indent"    # F
    .param p3, "y"    # F
    .param p4, "plusMinusWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FFF)F"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 234
    .local v0, "ySpacing":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v1, v2

    .line 235
    .local v1, "spacing":F
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 236
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 237
    .local v4, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    add-float v5, p2, p4

    .line 238
    .local v5, "x":F
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    add-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 239
    :cond_0
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v6, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->pack()V

    .line 240
    :cond_1
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v6

    sub-float/2addr p3, v6

    .line 241
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 242
    sub-float/2addr p3, v0

    .line 243
    iget-boolean v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    move-result p3

    .line 235
    .end local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v5    # "x":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    return p3
.end method

.method private plusMinusWidth()F
    .locals 2

    .line 188
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 189
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 191
    :cond_1
    return v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 148
    return-void
.end method

.method public clearChildren()V
    .locals 1

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    .line 176
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .line 514
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 515
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 249
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 250
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 251
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 252
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 253
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 254
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 258
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 260
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 261
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 263
    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_0
    return-void
.end method

.method protected drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .param p2, "expandIcon"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 315
    return-void
.end method

.method protected drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .param p2, "icon"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 319
    return-void
.end method

.method protected drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .param p2, "over"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 311
    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .param p2, "selection"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 307
    return-void
.end method

.method public expandAll()V
    .locals 1

    .line 526
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 527
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 472
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    .line 473
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .line 536
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method protected getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 4
    .param p2, "iconX"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;F)",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    const/4 v0, 0x0

    .line 327
    .local v0, "over":Z
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 328
    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 329
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 332
    .local v1, "mouseX":F
    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 334
    .end local v1    # "mouseX":F
    :cond_1
    if-eqz v0, :cond_3

    .line 335
    iget-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 336
    .local v1, "icon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    .line 338
    .end local v1    # "icon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    iget-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    return-object v1
.end method

.method public getIndentSpacing()F
    .locals 1

    .line 443
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    return v0
.end method

.method public getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .param p1, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TN;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getOverNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getOverValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .line 467
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 468
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .line 462
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 463
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return v0
.end method

.method public getRootNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSelectedNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 388
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    .locals 1

    .line 392
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    return-object v0
.end method

.method public getYSpacing()F
    .locals 1

    .line 452
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 152
    .local v0, "existingIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ge v0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 153
    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 156
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    .line 158
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 185
    return-void
.end method

.method public layout()V
    .locals 5

    .line 228
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    .line 230
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 166
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 167
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    .line 168
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 476
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 477
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 478
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz v2, :cond_0

    .line 479
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 480
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 476
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 4
    .param p2, "low"    # F
    .param p3, "high"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 368
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 369
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    goto :goto_2

    .line 370
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->add(Ljava/lang/Object;)V

    .line 372
    :cond_2
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v3, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 367
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    :goto_2
    return-void
.end method

.method public setIconSpacing(FF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F

    .line 457
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 458
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    .line 459
    return-void
.end method

.method public setIndentSpacing(F)V
    .locals 0
    .param p1, "indentSpacing"    # F

    .line 438
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 439
    return-void
.end method

.method public setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 422
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    .local p1, "overNode":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 423
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .line 427
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 428
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    .line 429
    return-void
.end method

.method public setPadding(FF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F

    .line 433
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 434
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    .line 435
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 140
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 144
    :cond_0
    return-void
.end method

.method public setYSpacing(F)V
    .locals 0
    .param p1, "ySpacing"    # F

    .line 448
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 449
    return-void
.end method

.method public updateRootNodes()V
    .locals 3

    .line 403
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 404
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 403
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method
