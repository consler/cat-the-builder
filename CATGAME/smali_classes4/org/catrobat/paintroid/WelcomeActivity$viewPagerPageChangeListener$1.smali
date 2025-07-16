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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lorg/catrobat/paintroid/WelcomeActivity;


# direct methods
.method public static synthetic $r8$lambda$qnqA_nzedMh58WwGj0yYSjKK3ds(Lorg/catrobat/paintroid/WelcomeActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->onPageScrollStateChanged$lambda-0(Lorg/catrobat/paintroid/WelcomeActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/catrobat/paintroid/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    .line 61
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method private static final onPageScrollStateChanged$lambda-0(Lorg/catrobat/paintroid/WelcomeActivity;Lorg/catrobat/paintroid/tools/ToolType;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_textview_intro_tools_header:I

    invoke-virtual {p0, p2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 97
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_tools_info_description:I

    invoke-virtual {p0, p2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getHelpTextResource()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 100
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_tools_info_icon:I

    invoke-virtual {p0, p2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->getDrawableResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

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

    .line 78
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_2

    .line 80
    invoke-static {}, Lorg/catrobat/paintroid/tools/ToolType;->values()[Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v0

    iget v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    aget v0, v0, v1

    sget v1, Lorg/catrobat/paintroid/R$layout;->pocketpaint_slide_intro_possibilities:I

    if-ne v0, v1, :cond_0

    .line 83
    iget-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_possibilities_head:I

    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.pocket\u2026intro_possibilities_head)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_possibilities_text:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocket\u2026intro_possibilities_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v1, p1, v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$setUpUndoAndRedoButtons(Lorg/catrobat/paintroid/WelcomeActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 87
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {v1, p1, v0}, Lorg/catrobat/paintroid/WelcomeActivity;->access$setUpNavigationView(Lorg/catrobat/paintroid/WelcomeActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v0

    iget v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    aget v0, v0, v1

    sget v1, Lorg/catrobat/paintroid/R$layout;->pocketpaint_slide_intro_tools_selection:I

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_intro_bottom_bar:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 91
    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->getToolButtonID()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v5, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    new-instance v6, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v3}, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/WelcomeActivity;Lorg/catrobat/paintroid/tools/ToolType;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

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

    move-result p1

    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "btnSkip"

    const-string v2, "btnNext"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 69
    iget-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnNext$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$string;->lets_go:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 70
    iget-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnSkip$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnNext$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    sget v0, Lorg/catrobat/paintroid/R$string;->next:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 73
    iget-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-static {p1}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getBtnSkip$p(Lorg/catrobat/paintroid/WelcomeActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final setPos(I)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->pos:I

    return-void
.end method
