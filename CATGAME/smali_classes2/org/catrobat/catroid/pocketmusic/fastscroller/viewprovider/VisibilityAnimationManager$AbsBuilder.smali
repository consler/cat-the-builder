.class public abstract Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected hideAnimatorResource:I

.field protected hideDelay:I

.field protected pivotX:F

.field protected pivotY:F

.field protected showAnimatorResource:I

.field protected final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 106
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const v0, 0x7f020012

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    .line 101
    const v0, 0x7f020011

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    .line 102
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    .line 103
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    .line 104
    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    .line 107
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->view:Landroid/view/View;

    .line 108
    return-void
.end method


# virtual methods
.method public abstract build()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withHideAnimator(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "hideAnimatorResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    .line 117
    return-object p0
.end method

.method public withHideDelay(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "hideDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    .line 122
    return-object p0
.end method

.method public withPivotX(F)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "pivotX"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    .line 127
    return-object p0
.end method

.method public withPivotY(F)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "pivotY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    .line 132
    return-object p0
.end method

.method public withShowAnimator(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "showAnimatorResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    .line 112
    return-object p0
.end method
