.class Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;
.super Ljava/lang/Object;
.source "FormulaEditorIntroDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntroSlide"
.end annotation


# instance fields
.field summaryStringId:I

.field targetViewId:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

.field titleStringId:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;III)V
    .locals 0
    .param p2, "titleStringId"    # I
    .param p3, "summaryStringId"    # I
    .param p4, "targetViewId"    # I

    .line 123
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p2, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->titleStringId:I

    .line 125
    iput p3, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->summaryStringId:I

    .line 126
    iput p4, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->targetViewId:I

    .line 127
    return-void
.end method

.method private getViewYCoordinates(I)I
    .locals 8
    .param p1, "resourceId"    # I

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v0, "rectangle":Landroid/graphics/Rect;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 156
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 157
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 158
    .local v2, "statusBarHeight":I
    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 159
    .local v3, "contentViewTop":I
    sub-int v4, v3, v2

    .line 161
    .local v4, "titleBarHeight":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 162
    .local v5, "location":[I
    iget-object v6, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-static {v6}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->access$200(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 163
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 164
    const/4 v7, 0x1

    aget v7, v5, v7

    add-int/2addr v7, v4

    return v7
.end method

.method private setAnimation()V
    .locals 4

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->access$200(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->targetViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "targetView":Landroid/view/View;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    .local v1, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 148
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method

.method private setPosition()V
    .locals 5

    .line 168
    const v0, 0x7f0a03a4

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->getViewYCoordinates(I)I

    move-result v0

    .line 169
    .local v0, "keyboardLocation":I
    iget v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->targetViewId:I

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->getViewYCoordinates(I)I

    move-result v1

    .line 170
    .local v1, "targetViewLocation":I
    const v2, 0x7f0a0393

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->getViewYCoordinates(I)I

    move-result v2

    .line 172
    .local v2, "toolbarLocation":I
    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 173
    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 174
    .local v3, "dialogLayoutParams":Landroid/view/WindowManager$LayoutParams;
    if-lt v1, v0, :cond_0

    .line 175
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 177
    :cond_0
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 179
    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    return-void
.end method

.method private setText()V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->access$000(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->titleStringId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->access$100(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->summaryStringId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    return-void
.end method


# virtual methods
.method applySlide()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->setText()V

    .line 131
    iget v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->targetViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->setAnimation()V

    .line 133
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->setPosition()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog$IntroSlide;->this$0:Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 137
    :goto_0
    return-void
.end method
