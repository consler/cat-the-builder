.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;
.super Ljava/lang/Object;
.source "DefaultHandleBehavior.java"

# interfaces
.implements Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;


# instance fields
.field private final animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;)V
    .locals 0
    .param p1, "animationManager"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;->animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    .line 32
    return-void
.end method


# virtual methods
.method public onHandleGrabbed()V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;->animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->show()V

    .line 37
    return-void
.end method

.method public onHandleReleased()V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;->animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hide()V

    .line 42
    return-void
.end method

.method public onScrollFinished()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;->animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->hide()V

    .line 52
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;->animationManager:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;->show()V

    .line 47
    return-void
.end method
