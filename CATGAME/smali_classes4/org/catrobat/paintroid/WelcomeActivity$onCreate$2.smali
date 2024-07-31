.class final Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lorg/catrobat/paintroid/WelcomeActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "it"    # Landroid/view/View;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "finished":Z
    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getItem(Lorg/catrobat/paintroid/WelcomeActivity;I)I

    move-result v1

    .line 181
    .local v1, "current":I
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/WelcomeActivity;->getLayouts()[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    .line 182
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    move-object v5, v3

    check-cast v5, Landroid/content/Context;

    invoke-static {v3, v5}, Lorg/catrobat/paintroid/WelcomeActivity;->access$isRTL(Lorg/catrobat/paintroid/WelcomeActivity;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    const/4 v5, -0x1

    invoke-static {v3, v5}, Lorg/catrobat/paintroid/WelcomeActivity;->access$getItem(Lorg/catrobat/paintroid/WelcomeActivity;I)I

    move-result v1

    .line 184
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    move v0, v2

    .line 186
    :cond_2
    if-eqz v0, :cond_3

    .line 187
    iget-object v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/WelcomeActivity;->finish()V

    goto :goto_2

    .line 189
    :cond_3
    iget-object v2, p0, Lorg/catrobat/paintroid/WelcomeActivity$onCreate$2;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/WelcomeActivity;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 190
    .end local v0    # "finished":Z
    .end local v1    # "current":I
    :goto_2
    nop

    .line 191
    return-void
.end method
