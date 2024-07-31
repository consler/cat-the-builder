.class Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;
.super Ljava/lang/Object;
.source "FormulaEditorPopupMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->getOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    .line 105
    iput-object p1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->this$0:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 133
    return v1

    .line 128
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 129
    .local v0, "x":I
    iget v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchY:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 130
    .local v1, "y":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->this$0:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->access$000(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v4

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 131
    return v3

    .line 123
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 126
    :cond_2
    return v3

    .line 115
    :cond_3
    new-array v0, v2, [I

    .line 116
    .local v0, "location":[I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->this$0:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->access$000(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 117
    aget v1, v0, v1

    iput v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialX:I

    .line 118
    aget v1, v0, v3

    iput v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialY:I

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchX:F

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$1;->initialTouchY:F

    .line 121
    return v3
.end method
