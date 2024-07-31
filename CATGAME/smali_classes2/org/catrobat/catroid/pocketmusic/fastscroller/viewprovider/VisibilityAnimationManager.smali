.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;,
        Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    }
.end annotation


# instance fields
.field protected hideAnimator:Landroid/animation/AnimatorSet;

.field private pivotXRelative:F

.field private pivotYRelative:F

.field protected showAnimator:Landroid/animation/AnimatorSet;

.field protected final view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;IIFFI)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "showAnimator"    # I
    .param p3, "hideAnimator"    # I
    .param p4, "pivotXRelative"    # F
    .param p5, "pivotYRelative"    # F
    .param p6, "hideDelay"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    .line 49
    iput p4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->pivotXRelative:F

    .line 50
    iput p5, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->pivotYRelative:F

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    .line 52
    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->showAnimator:Landroid/animation/AnimatorSet;

    .line 55
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$1;-><init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->updatePivot()V

    .line 77
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->updatePivot()V

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 91
    return-void
.end method

.method public show()V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hideAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->updatePivot()V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->showAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    :cond_0
    return-void
.end method

.method protected updatePivot()V
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->pivotXRelative:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->view:Landroid/view/View;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->pivotYRelative:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 96
    return-void
.end method
