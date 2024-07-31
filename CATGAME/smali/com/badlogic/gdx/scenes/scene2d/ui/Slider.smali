.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field draggingPointer:I

.field mouseOver:Z

.field private snapValues:[F

.field private threshold:F

.field private visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 7
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 49
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

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 50
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

    .line 53
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 54
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 44
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 103
    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 126
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 127
    .local v1, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 130
    .local v2, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 132
    .local v3, "oldPosition":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMinValue()F

    move-result v4

    .line 133
    .local v4, "min":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMaxValue()F

    move-result v5

    .line 135
    .local v5, "max":F
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v9

    sub-float/2addr v6, v9

    .line 137
    .local v6, "height":F
    if-nez v1, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    .line 138
    .local v9, "knobHeight":F
    :goto_1
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v10

    sub-float v10, p2, v10

    mul-float/2addr v7, v9

    sub-float/2addr v10, v7

    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 139
    sub-float v7, v5, v4

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float v12, v6, v9

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v4

    .line 140
    .local v7, "value":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 141
    sub-float v8, v6, v9

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 142
    .end local v6    # "height":F
    .end local v9    # "knobHeight":F
    goto :goto_3

    .line 143
    .end local v7    # "value":F
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    sub-float/2addr v6, v9

    .line 144
    .local v6, "width":F
    if-nez v1, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    .line 145
    .local v9, "knobWidth":F
    :goto_2
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    sub-float v10, p1, v10

    mul-float/2addr v7, v9

    sub-float/2addr v10, v7

    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 146
    sub-float v7, v5, v4

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float v12, v6, v9

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v4

    .line 147
    .restart local v7    # "value":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 148
    sub-float v8, v6, v9

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 151
    .end local v6    # "width":F
    .end local v9    # "knobWidth":F
    :goto_3
    move v6, v7

    .line 152
    .local v6, "oldValue":F
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x3b

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x3c

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snap(F)F

    move-result v7

    .line 153
    :cond_4
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    move-result v8

    .line 154
    .local v8, "valueSet":Z
    cmpl-float v9, v7, v6

    if-nez v9, :cond_5

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 155
    :cond_5
    return v8
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 119
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 119
    :goto_0
    return-object v1
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public isDragging()Z
    .locals 2

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSnapToValues([FF)V
    .locals 0
    .param p1, "values"    # [F
    .param p2, "threshold"    # F

    .line 178
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    .line 179
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    .line 180
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 106
    if-eqz p1, :cond_1

    .line 107
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style must be a SliderStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "style cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .line 190
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 191
    return-void
.end method

.method protected snap(F)F
    .locals 7
    .param p1, "value"    # F

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .local v0, "bestDiff":F
    const/4 v1, 0x0

    .line 162
    .local v1, "bestValue":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    array-length v4, v3

    const/high16 v5, -0x40800000    # -1.0f

    if-ge v2, v4, :cond_3

    .line 163
    aget v3, v3, v2

    .line 164
    .local v3, "snapValue":F
    sub-float v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 165
    .local v4, "diff":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_2

    .line 166
    cmpl-float v5, v0, v5

    if-eqz v5, :cond_1

    cmpg-float v5, v4, v0

    if-gez v5, :cond_2

    .line 167
    :cond_1
    move v0, v4

    .line 168
    move v1, v3

    .line 162
    .end local v3    # "snapValue":F
    .end local v4    # "diff":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_3
    cmpl-float v2, v0, v5

    if-nez v2, :cond_4

    move v2, p1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    return v2

    .line 160
    .end local v0    # "bestDiff":F
    .end local v1    # "bestValue":F
    :cond_5
    :goto_2
    return p1
.end method
