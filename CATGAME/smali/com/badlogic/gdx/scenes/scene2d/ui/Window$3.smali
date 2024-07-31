.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastX:F

.field lastY:F

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    .line 91
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method

.method private updateEdge(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 96
    .local v0, "border":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v1

    .local v1, "width":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    .line 97
    .local v2, "height":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v3

    .local v3, "padTop":F
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v4

    .local v4, "padLeft":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadBottom()F

    move-result v5

    .local v5, "padBottom":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v6

    .line 98
    .local v6, "padRight":F
    move v7, v4

    .local v7, "left":F
    sub-float v8, v1, v6

    .local v8, "right":F
    move v9, v5

    .line 99
    .local v9, "bottom":F
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v11, 0x0

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 100
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    if-eqz v10, :cond_6

    sub-float v10, v7, v0

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_6

    add-float v10, v8, v0

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_6

    sub-float v10, v9, v0

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_6

    .line 101
    add-float v10, v7, v0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_0

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 102
    :cond_0
    sub-float v10, v8, v0

    cmpl-float v10, p1, v10

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 103
    :cond_1
    add-float v10, v9, v0

    cmpg-float v10, p2, v10

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 104
    :cond_2
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-eqz v10, :cond_3

    const/high16 v10, 0x41c80000    # 25.0f

    add-float/2addr v0, v10

    .line 105
    :cond_3
    add-float v10, v7, v0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_4

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 106
    :cond_4
    sub-float v10, v8, v0

    cmpl-float v10, p1, v10

    if-lez v10, :cond_5

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 107
    :cond_5
    add-float v10, v9, v0

    cmpg-float v10, p2, v10

    if-gez v10, :cond_6

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 109
    :cond_6
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-nez v10, :cond_7

    cmpg-float v10, p2, v2

    if-gtz v10, :cond_7

    sub-float v10, v2, v3

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_7

    cmpl-float v10, p1, v7

    if-ltz v10, :cond_7

    cmpg-float v10, p1, v8

    if-gtz v10, :cond_7

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/16 v11, 0x20

    iput v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    .line 110
    :cond_7
    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"    # C

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->updateEdge(FF)V

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "amount"    # I

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->updateEdge(FF)V

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 116
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    .line 117
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    sub-float v2, p2, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    sub-float v2, p3, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 16
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez v1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v1

    .local v1, "width":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    .line 131
    .local v2, "height":F
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v3

    .local v3, "windowX":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v4

    .line 133
    .local v4, "windowY":F
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinWidth()F

    move-result v5

    .local v5, "minWidth":F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxWidth()F

    move-result v6

    .line 134
    .local v6, "maxWidth":F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinHeight()F

    move-result v7

    .local v7, "minHeight":F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxHeight()F

    move-result v8

    .line 135
    .local v8, "maxHeight":F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v9

    .line 136
    .local v9, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v11

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 138
    .local v10, "clampPosition":Z
    :goto_0
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_2

    .line 139
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v11, p2, v11

    .local v11, "amountX":F
    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v12, p3, v12

    .line 140
    .local v12, "amountY":F
    add-float/2addr v3, v11

    .line 141
    add-float/2addr v4, v12

    .line 143
    .end local v11    # "amountX":F
    .end local v12    # "amountY":F
    :cond_2
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 144
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v11, p2, v11

    .line 145
    .restart local v11    # "amountX":F
    sub-float v13, v1, v11

    cmpg-float v13, v13, v5

    if-gez v13, :cond_3

    sub-float v13, v5, v1

    neg-float v11, v13

    .line 146
    :cond_3
    if-eqz v10, :cond_4

    add-float v13, v3, v11

    cmpg-float v13, v13, v12

    if-gez v13, :cond_4

    neg-float v11, v3

    .line 147
    :cond_4
    sub-float/2addr v1, v11

    .line 148
    add-float/2addr v3, v11

    .line 150
    .end local v11    # "amountX":F
    :cond_5
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_8

    .line 151
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v11, p3, v11

    .line 152
    .local v11, "amountY":F
    sub-float v13, v2, v11

    cmpg-float v13, v13, v7

    if-gez v13, :cond_6

    sub-float v13, v7, v2

    neg-float v11, v13

    .line 153
    :cond_6
    if-eqz v10, :cond_7

    add-float v13, v4, v11

    cmpg-float v12, v13, v12

    if-gez v12, :cond_7

    neg-float v11, v4

    .line 154
    :cond_7
    sub-float/2addr v2, v11

    .line 155
    add-float/2addr v4, v11

    .line 157
    .end local v11    # "amountY":F
    :cond_8
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_b

    .line 158
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    sub-float v11, p2, v11

    sub-float/2addr v11, v1

    .line 159
    .local v11, "amountX":F
    add-float v12, v1, v11

    cmpg-float v12, v12, v5

    if-gez v12, :cond_9

    sub-float v11, v5, v1

    .line 160
    :cond_9
    if-eqz v10, :cond_a

    add-float v12, v3, v1

    add-float/2addr v12, v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v12

    sub-float/2addr v12, v3

    sub-float v11, v12, v1

    .line 161
    :cond_a
    add-float/2addr v1, v11

    .line 163
    .end local v11    # "amountX":F
    :cond_b
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->edge:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_e

    .line 164
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    sub-float v11, p3, v11

    sub-float/2addr v11, v2

    .line 165
    .local v11, "amountY":F
    add-float v12, v2, v11

    cmpg-float v12, v12, v7

    if-gez v12, :cond_c

    sub-float v11, v7, v2

    .line 166
    :cond_c
    if-eqz v10, :cond_d

    add-float v12, v4, v2

    add-float/2addr v12, v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_d

    .line 167
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v12

    sub-float/2addr v12, v4

    sub-float v11, v12, v2

    .line 168
    :cond_d
    add-float/2addr v2, v11

    .line 170
    .end local v11    # "amountY":F
    :cond_e
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBounds(FFFF)V

    .line 171
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 126
    return-void
.end method
