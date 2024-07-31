.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ProgressBar.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field private animateDuration:F

.field private animateFromValue:F

.field private animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private animateTime:F

.field disabled:Z

.field private max:F

.field private min:F

.field position:F

.field private round:Z

.field private stepSize:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field private value:F

.field final vertical:Z

.field private visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 3
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 74
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 53
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    .line 75
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 78
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 79
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 80
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 81
    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    .line 82
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setSize(FF)V

    .line 84
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stepSize must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max must be > min. min,max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 7
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string/jumbo v1, "vertical"

    goto :goto_0

    :cond_0
    const-string v1, "horizontal"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 58
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 7
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p6, "styleName"    # Ljava/lang/String;

    .line 61
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 62
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .line 100
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->act(F)V

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 102
    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 104
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 106
    .end local v0    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_0
    return-void
.end method

.method protected clamp(F)F
    .locals 2
    .param p1, "value"    # F

    .line 289
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 30
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 111
    .local v1, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 112
    .local v2, "disabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    .line 113
    .local v9, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    move-object/from16 v16, v3

    .line 114
    .local v16, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    move-object/from16 v17, v3

    .line 115
    .local v17, "knobBefore":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_2
    move-object/from16 v18, v3

    .line 117
    .local v18, "knobAfter":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    .line 118
    .local v8, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getX()F

    move-result v19

    .line 119
    .local v19, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getY()F

    move-result v20

    .line 120
    .local v20, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getWidth()F

    move-result v21

    .line 121
    .local v21, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getHeight()F

    move-result v22

    .line 122
    .local v22, "height":F
    const/4 v3, 0x0

    if-nez v9, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    :goto_3
    move/from16 v23, v4

    .line 123
    .local v23, "knobHeight":F
    if-nez v9, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    :goto_4
    move/from16 v24, v4

    .line 124
    .local v24, "knobWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v25

    .line 126
    .local v25, "percent":F
    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, p2

    move-object/from16 v15, p1

    invoke-interface {v15, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 128
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_f

    .line 129
    move/from16 v4, v22

    .line 131
    .local v4, "positionHeight":F
    const/4 v6, 0x0

    .local v6, "bgTopHeight":F
    const/4 v7, 0x0

    .line 132
    .local v7, "bgBottomHeight":F
    if-eqz v16, :cond_6

    .line 133
    iget-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v10, :cond_5

    .line 134
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    sub-float v10, v21, v10

    mul-float/2addr v10, v5

    add-float v10, v19, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v12, v10

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v14, v10

    move-object/from16 v10, v16

    move-object/from16 v11, p1

    move/from16 v13, v20

    move/from16 v15, v22

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_5

    .line 136
    :cond_5
    add-float v10, v19, v21

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v11

    mul-float/2addr v11, v5

    sub-float v12, v10, v11

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v14

    move-object/from16 v10, v16

    move-object/from16 v11, p1

    move/from16 v13, v20

    move/from16 v15, v22

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 137
    :goto_5
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    .line 138
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v7

    .line 139
    add-float v10, v6, v7

    sub-float/2addr v4, v10

    move/from16 v26, v4

    move/from16 v27, v6

    goto :goto_6

    .line 132
    :cond_6
    move/from16 v26, v4

    move/from16 v27, v6

    .line 142
    .end local v4    # "positionHeight":F
    .end local v6    # "bgTopHeight":F
    .local v26, "positionHeight":F
    .local v27, "bgTopHeight":F
    :goto_6
    const/4 v4, 0x0

    .line 143
    .local v4, "knobHeightHalf":F
    if-nez v9, :cond_8

    .line 144
    if-nez v17, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    mul-float/2addr v6, v5

    :goto_7
    move v4, v6

    .line 145
    sub-float v6, v26, v4

    mul-float v6, v6, v25

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 146
    sub-float v10, v26, v4

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v28, v4

    goto :goto_8

    .line 148
    :cond_8
    mul-float v4, v23, v5

    .line 149
    sub-float v6, v26, v23

    mul-float v6, v6, v25

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 150
    sub-float v10, v26, v23

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v6, v7

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v28, v4

    .line 152
    .end local v4    # "knobHeightHalf":F
    .local v28, "knobHeightHalf":F
    :goto_8
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 154
    if-eqz v17, :cond_a

    .line 155
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_9

    .line 156
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v21, v3

    mul-float/2addr v3, v5

    add-float v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v12, v3

    add-float v3, v20, v27

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v13, v3

    .line 157
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v14, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v3, v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v15, v3

    .line 156
    move-object/from16 v10, v17

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_9

    .line 159
    :cond_9
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v21, v3

    mul-float/2addr v3, v5

    add-float v12, v19, v3

    add-float v13, v20, v27

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v14

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v15, v3, v28

    move-object/from16 v10, v17

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 163
    :cond_a
    :goto_9
    if-eqz v18, :cond_c

    .line 164
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_b

    .line 165
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v21, v3

    mul-float/2addr v3, v5

    add-float v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v12, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v20, v3

    add-float v3, v3, v28

    .line 166
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v13, v3

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v14, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v3, v22, v3

    sub-float v3, v3, v28

    .line 167
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v15, v3

    .line 165
    move-object/from16 v10, v18

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_a

    .line 169
    :cond_b
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v21, v3

    mul-float/2addr v3, v5

    add-float v12, v19, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v20, v3

    add-float v13, v3, v28

    .line 170
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v14

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v3, v22, v3

    sub-float v15, v3, v28

    .line 169
    move-object/from16 v10, v18

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 173
    :cond_c
    :goto_a
    if-eqz v9, :cond_e

    .line 174
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_d

    .line 175
    sub-float v3, v21, v24

    mul-float/2addr v3, v5

    add-float v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v20, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v10, v3

    .line 176
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v11, v3

    .line 175
    move-object v3, v9

    move-object/from16 v4, p1

    move v12, v7

    .end local v7    # "bgBottomHeight":F
    .local v12, "bgBottomHeight":F
    move v7, v10

    move-object/from16 v29, v8

    .end local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    .local v29, "color":Lcom/badlogic/gdx/graphics/Color;
    move v8, v11

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_b

    .line 178
    .end local v12    # "bgBottomHeight":F
    .end local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v7    # "bgBottomHeight":F
    .restart local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_d
    move v12, v7

    move-object/from16 v29, v8

    .end local v7    # "bgBottomHeight":F
    .end local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v12    # "bgBottomHeight":F
    .restart local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    sub-float v3, v21, v24

    mul-float/2addr v3, v5

    add-float v5, v19, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v6, v20, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move/from16 v7, v24

    move/from16 v8, v23

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_b

    .line 173
    .end local v12    # "bgBottomHeight":F
    .end local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v7    # "bgBottomHeight":F
    .restart local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_e
    move v12, v7

    move-object/from16 v29, v8

    .line 180
    .end local v7    # "bgBottomHeight":F
    .end local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v26    # "positionHeight":F
    .end local v27    # "bgTopHeight":F
    .end local v28    # "knobHeightHalf":F
    .restart local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_b
    goto/16 :goto_12

    .line 181
    .end local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_f
    move-object/from16 v29, v8

    .end local v8    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v29    # "color":Lcom/badlogic/gdx/graphics/Color;
    move/from16 v4, v21

    .line 183
    .local v4, "positionWidth":F
    const/4 v6, 0x0

    .local v6, "bgLeftWidth":F
    const/4 v7, 0x0

    .line 184
    .local v7, "bgRightWidth":F
    if-eqz v16, :cond_11

    .line 185
    iget-boolean v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v8, :cond_10

    .line 186
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    sub-float v8, v22, v8

    mul-float/2addr v8, v5

    add-float v8, v20, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v13, v8

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v15, v8

    move-object/from16 v10, v16

    move-object/from16 v11, p1

    move/from16 v12, v19

    move/from16 v14, v21

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_c

    .line 188
    :cond_10
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    sub-float v8, v22, v8

    mul-float/2addr v8, v5

    add-float v13, v20, v8

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v15

    move-object/from16 v10, v16

    move-object/from16 v11, p1

    move/from16 v12, v19

    move/from16 v14, v21

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 189
    :goto_c
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    .line 190
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    .line 191
    add-float v8, v6, v7

    sub-float/2addr v4, v8

    move/from16 v26, v4

    move v8, v6

    move/from16 v27, v7

    goto :goto_d

    .line 184
    :cond_11
    move/from16 v26, v4

    move v8, v6

    move/from16 v27, v7

    .line 194
    .end local v4    # "positionWidth":F
    .end local v6    # "bgLeftWidth":F
    .end local v7    # "bgRightWidth":F
    .local v8, "bgLeftWidth":F
    .local v26, "positionWidth":F
    .local v27, "bgRightWidth":F
    :goto_d
    const/4 v4, 0x0

    .line 195
    .local v4, "knobWidthHalf":F
    if-nez v9, :cond_13

    .line 196
    if-nez v17, :cond_12

    move v6, v3

    goto :goto_e

    :cond_12
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    mul-float/2addr v6, v5

    :goto_e
    move v4, v6

    .line 197
    sub-float v6, v26, v4

    mul-float v6, v6, v25

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 198
    sub-float v7, v26, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v28, v4

    goto :goto_f

    .line 200
    :cond_13
    mul-float v4, v24, v5

    .line 201
    sub-float v6, v26, v24

    mul-float v6, v6, v25

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 202
    sub-float v7, v26, v24

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v6, v8

    iput v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move/from16 v28, v4

    .line 204
    .end local v4    # "knobWidthHalf":F
    .local v28, "knobWidthHalf":F
    :goto_f
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 206
    if-eqz v17, :cond_15

    .line 207
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_14

    .line 208
    add-float v3, v19, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v12, v3

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v22, v3

    mul-float/2addr v3, v5

    add-float v3, v20, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v13, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v3, v28

    .line 209
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v14, v3

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v15, v3

    .line 208
    move-object/from16 v10, v17

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_10

    .line 211
    :cond_14
    add-float v12, v19, v8

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v22, v3

    mul-float/2addr v3, v5

    add-float v13, v20, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v14, v3, v28

    .line 212
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v15

    .line 211
    move-object/from16 v10, v17

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 215
    :cond_15
    :goto_10
    if-eqz v18, :cond_17

    .line 216
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_16

    .line 217
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v19, v3

    add-float v3, v3, v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v12, v3

    .line 218
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v22, v3

    mul-float/2addr v3, v5

    add-float v3, v20, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v13, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v3, v21, v3

    sub-float v3, v3, v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v14, v3

    .line 219
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v15, v3

    .line 217
    move-object/from16 v10, v18

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_11

    .line 221
    :cond_16
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v19, v3

    add-float v12, v3, v28

    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v22, v3

    mul-float/2addr v3, v5

    add-float v13, v20, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float v3, v21, v3

    sub-float v14, v3, v28

    .line 222
    invoke-interface/range {v18 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v15

    .line 221
    move-object/from16 v10, v18

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 225
    :cond_17
    :goto_11
    if-eqz v9, :cond_19

    .line 226
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_18

    .line 227
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    sub-float v3, v22, v23

    mul-float/2addr v3, v5

    add-float v3, v20, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v10, v3

    .line 228
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v11, v3

    .line 227
    move-object v3, v9

    move-object/from16 v4, p1

    move v5, v6

    move v6, v7

    move v7, v10

    move v10, v8

    .end local v8    # "bgLeftWidth":F
    .local v10, "bgLeftWidth":F
    move v8, v11

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_12

    .line 230
    .end local v10    # "bgLeftWidth":F
    .restart local v8    # "bgLeftWidth":F
    :cond_18
    move v10, v8

    .end local v8    # "bgLeftWidth":F
    .restart local v10    # "bgLeftWidth":F
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v6, v19, v3

    sub-float v3, v22, v23

    mul-float/2addr v3, v5

    add-float v7, v20, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move v5, v6

    move v6, v7

    move/from16 v7, v24

    move/from16 v8, v23

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_12

    .line 225
    .end local v10    # "bgLeftWidth":F
    .restart local v8    # "bgLeftWidth":F
    :cond_19
    move v10, v8

    .line 233
    .end local v8    # "bgLeftWidth":F
    .end local v26    # "positionWidth":F
    .end local v27    # "bgRightWidth":F
    .end local v28    # "knobWidthHalf":F
    :goto_12
    return-void
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    return-object v0
.end method

.method protected getKnobPosition()F
    .locals 1

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 331
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 327
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    return v0
.end method

.method public getPercent()F
    .locals 3

    .line 246
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    sub-float/2addr v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v2, v1

    return v2
.end method

.method public getPrefHeight()F
    .locals 4

    .line 317
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_0

    .line 318
    const/high16 v0, 0x430c0000    # 140.0f

    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 321
    .local v0, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 322
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :goto_2
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getPrefWidth()F
    .locals 4

    .line 308
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 310
    .local v0, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 311
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    :goto_2
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 313
    .end local v0    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v1    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    const/high16 v0, 0x430c0000    # 140.0f

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 335
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public getVisualPercent()F
    .locals 4

    .line 251
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .locals 6

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0

    .line 242
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    return v0
.end method

.method public setAnimateDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .line 340
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    .line 341
    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 2
    .param p1, "animateInterpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 347
    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "animateInterpolation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 360
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 361
    return-void
.end method

.method public setRange(FF)V
    .locals 3
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 294
    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 295
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 296
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 297
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_0

    .line 299
    :cond_0
    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min must be <= max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    .line 357
    return-void
.end method

.method public setStepSize(F)V
    .locals 3
    .param p1, "stepSize"    # F

    .line 303
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 304
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 305
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->invalidateHierarchy()V

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(F)Z
    .locals 6
    .param p1, "value"    # F

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->clamp(F)F

    move-result p1

    .line 270
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 271
    .local v0, "oldValue":F
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    .line 273
    .local v1, "oldVisualValue":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 274
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 275
    .local v2, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    .line 276
    .local v3, "cancelled":Z
    if-eqz v3, :cond_1

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    goto :goto_0

    .line 278
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 279
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    .line 280
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 282
    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 283
    xor-int/lit8 v4, v3, 0x1

    return v4
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .line 351
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 352
    return-void
.end method
