.class final Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;
.super Ljava/lang/Object;
.source "DefaultToolOptionsViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->show()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->access$getBottomNavigation$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->access$getMainToolOptions$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 91
    .local v0, "yPos":F
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->access$getMainToolOptions$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController$show$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;->access$getMainToolOptions$p(Lorg/catrobat/paintroid/ui/tools/DefaultToolOptionsViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 93
    .end local v0    # "yPos":F
    return-void
.end method
