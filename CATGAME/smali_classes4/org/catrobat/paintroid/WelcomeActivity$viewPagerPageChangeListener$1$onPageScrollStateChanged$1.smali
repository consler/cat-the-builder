.class final Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $type:Lorg/catrobat/paintroid/tools/ToolType;

.field final synthetic this$0:Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;

    iput-object p2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->$type:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 93
    nop

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;

    iget-object v0, v0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_textview_intro_tools_header:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .local v0, "toolName":Landroidx/appcompat/widget/AppCompatTextView;
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->$type:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 96
    nop

    .line 97
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;

    iget-object v1, v1, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_tools_info_description:I

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .local v1, "toolDescription":Landroidx/appcompat/widget/AppCompatTextView;
    iget-object v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->$type:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/ToolType;->getHelpTextResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 99
    nop

    .line 100
    iget-object v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;

    iget-object v2, v2, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_tools_info_icon:I

    invoke-virtual {v2, v3}, Lorg/catrobat/paintroid/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    .local v2, "icon":Landroidx/appcompat/widget/AppCompatImageView;
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$viewPagerPageChangeListener$1$onPageScrollStateChanged$1;->$type:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->getDrawableResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 102
    .end local v0    # "toolName":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v1    # "toolDescription":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v2    # "icon":Landroidx/appcompat/widget/AppCompatImageView;
    return-void
.end method
