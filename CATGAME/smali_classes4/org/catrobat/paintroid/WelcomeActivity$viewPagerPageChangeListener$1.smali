.class public final Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "WelcomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/WelcomeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "org/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1",
        "Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;",
        "pos",
        "",
        "getPos",
        "()I",
        "setPos",
        "(I)V",
        "onPageScrollStateChanged",
        "",
        "state",
        "onPageSelected",
        "position",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lorg/catrobat/paintroid/WelcomeActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/WelcomeActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPos()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .line 78
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 79
    if-nez p1, :cond_2

    .line 80
    invoke-static {}, Lorg/catrobat/paintroid/tools/ToolType;->values()[Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    .line 81
    .local v0, "toolTypes":[Lorg/catrobat/paintroid/tools/ToolType;
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v1

    iget v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    aget v1, v1, v2

    sget v2, Lorg/catrobat/paintroid/R$layout;->pocketpaint_slide_intro_possibilities:I

    if-ne v1, v2, :cond_0

    .line 82
    nop

    .line 83
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_possibilities_head:I

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.pocket\u2026intro_possibilities_head)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .local v1, "head":Landroidx/appcompat/widget/AppCompatTextView;
    nop

    .line 85
    iget-object v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_possibilities_text:I

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.pocket\u2026intro_possibilities_text)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .local v2, "description":Landroidx/appcompat/widget/AppCompatTextView;
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v3, v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->access$setUpUndoAndRedoButtons(Lorg/catrobat/paintroid/WelcomeActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 87
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v3, v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->access$setUpNavigationView(Lorg/catrobat/paintroid/WelcomeActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .end local v1    # "head":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v2    # "description":Landroidx/appcompat/widget/AppCompatTextView;
    goto :goto_1

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v1

    iget v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    aget v1, v1, v2

    sget v2, Lorg/catrobat/paintroid/R$layout;->pocketpaint_slide_intro_tools_selection:I

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_bottom_bar:I

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 91
    .local v4, "type":Lorg/catrobat/paintroid/tools/ToolType;
    invoke-virtual {v4}, Lorg/catrobat/paintroid/tools/ToolType;->getToolButtonID()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 92
    .local v5, "toolButton":Landroid/view/View;
    new-instance v6, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;

    invoke-direct {v6, p0, v4}, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;-><init>(Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .end local v5    # "toolButton":Landroid/view/View;
    :cond_1
    nop

    .end local v4    # "type":Lorg/catrobat/paintroid/tools/ToolType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "toolTypes":[Lorg/catrobat/paintroid/tools/ToolType;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    nop

    .line 106
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 65
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 66
    iput p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$addBottomDots(Lorg/catrobat/paintroid/WelcomeActivity;I)V

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getDotsIndex(Lorg/catrobat/paintroid/WelcomeActivity;I)I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnNext$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$string;->lets_go:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnSkip$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnNext$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$string;->next:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnSkip$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 74
    :goto_0
    nop

    .line 75
    return-void
.end method

.method public final setPos(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 62
    iput p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    return-void
.end method
