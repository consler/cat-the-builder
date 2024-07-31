.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;
.super Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder<",
        "Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 141
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;-><init>(Landroid/view/View;)V

    .line 142
    return-void
.end method


# virtual methods
.method public build()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;
    .locals 8

    .line 145
    new-instance v7, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->view:Landroid/view/View;

    iget v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->showAnimatorResource:I

    iget v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->hideAnimatorResource:I

    iget v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->pivotX:F

    iget v5, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->pivotY:F

    iget v6, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->hideDelay:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;-><init>(Landroid/view/View;IIFFI)V

    return-object v7
.end method
