.class Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FormulaEditorEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorAndSelection(IZ)V

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$200(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->updateCurrentSelection(Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;)V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$300(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$300(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 72
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 77
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$400(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 79
    invoke-static {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->show(IIZ)V

    .line 80
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 85
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_9

    .line 87
    iget-object v2, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getLineHeight()I

    move-result v2

    int-to-float v2, v2

    .line 88
    .local v2, "lineHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 89
    .local v3, "yCoordinate":I
    const/4 v4, 0x0

    .line 91
    .local v4, "cursorY":I
    iget-object v5, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getPaddingLeft()I

    move-result v5

    .line 93
    .local v5, "paddingLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    .line 95
    .local v6, "cursorXOffset":I
    iget-object v7, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getScrollY()I

    move-result v7

    .line 96
    .local v7, "initialScrollY":I
    int-to-float v8, v7

    rem-float/2addr v8, v2

    float-to-int v8, v8

    .line 97
    .local v8, "firstLineSize":I
    iget-object v9, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v9}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v9, v9

    .line 99
    .local v9, "numberOfVisibleLines":I
    int-to-float v10, v3

    int-to-float v11, v8

    sub-float v11, v2, v11

    cmpg-float v10, v10, v11

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    if-gtz v10, :cond_1

    .line 101
    iget-object v10, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    int-to-float v13, v7

    cmpl-float v13, v13, v2

    if-lez v13, :cond_0

    const/high16 v13, -0x40800000    # -1.0f

    int-to-float v14, v8

    div-float v12, v2, v12

    add-float/2addr v14, v12

    mul-float/2addr v14, v13

    goto :goto_0

    :cond_0
    mul-int/lit8 v12, v8, -0x1

    int-to-float v14, v12

    :goto_0
    float-to-int v12, v14

    invoke-virtual {v10, v11, v12}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->scrollBy(II)V

    .line 103
    const/4 v4, 0x0

    goto :goto_2

    .line 104
    :cond_1
    int-to-float v10, v3

    int-to-float v13, v9

    mul-float/2addr v13, v2

    div-float v14, v2, v12

    sub-float/2addr v13, v14

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_3

    .line 105
    int-to-float v10, v3

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v2

    iget-object v14, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getScrollY()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget-object v14, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v10, v10, v13

    if-gtz v10, :cond_2

    .line 106
    iget-object v10, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    int-to-float v13, v8

    sub-float v13, v2, v13

    div-float v12, v2, v12

    add-float/2addr v13, v12

    float-to-int v12, v13

    invoke-virtual {v10, v11, v12}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->scrollBy(II)V

    .line 108
    :cond_2
    move v4, v9

    goto :goto_2

    .line 110
    :cond_3
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-gt v10, v9, :cond_5

    .line 111
    int-to-float v12, v3

    int-to-float v13, v8

    sub-float v13, v2, v13

    iget-object v14, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v10

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_4

    .line 112
    move v4, v10

    .line 113
    goto :goto_2

    .line 110
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 118
    .end local v10    # "i":I
    :cond_5
    :goto_2
    int-to-float v10, v7

    div-float/2addr v10, v2

    float-to-int v10, v10

    .line 120
    .local v10, "linesDown":I
    :goto_3
    add-int v12, v4, v10

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    if-lt v12, v13, :cond_6

    .line 121
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 124
    :cond_6
    add-int v12, v4, v10

    int-to-float v13, v6

    invoke-virtual {v1, v12, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v12

    .line 126
    .local v12, "tempCursorPosition":I
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v13

    if-le v12, v13, :cond_7

    .line 127
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v12

    .line 130
    :cond_7
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->isDoNotMoveCursorOnTab()Z

    move-result v13

    if-nez v13, :cond_8

    .line 131
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13, v12}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$002(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;I)I

    .line 133
    :cond_8
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I

    move-result v14

    iget-object v15, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v15}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$002(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;I)I

    .line 134
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelection(I)V

    .line 135
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->postInvalidate()V

    .line 137
    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v13

    iget-object v14, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v14}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorAndSelection(IZ)V

    .line 139
    iget-object v11, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 140
    iget-object v11, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$200(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    move-result-object v11

    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v13

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->updateCurrentSelection(Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;)V

    .line 141
    iget-object v11, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v11}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$200(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    move-result-object v11

    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->updateCurrentCursor(I)V

    .line 143
    iget-object v11, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    iget-object v11, v11, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    iget-object v13, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v13}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v13

    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternFormulaString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 144
    iget-object v11, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    iget-object v11, v11, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v11}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 146
    .end local v2    # "lineHeight":F
    .end local v3    # "yCoordinate":I
    .end local v4    # "cursorY":I
    .end local v5    # "paddingLeft":I
    .end local v6    # "cursorXOffset":I
    .end local v7    # "initialScrollY":I
    .end local v8    # "firstLineSize":I
    .end local v9    # "numberOfVisibleLines":I
    .end local v10    # "linesDown":I
    .end local v12    # "tempCursorPosition":I
    :cond_9
    const/4 v2, 0x1

    return v2
.end method
