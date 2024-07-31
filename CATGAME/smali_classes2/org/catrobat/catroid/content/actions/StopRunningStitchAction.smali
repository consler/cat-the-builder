.class public Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StopRunningStitchAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 40
    return-void
.end method

.method protected update(F)V
    .locals 1
    .param p1, "delta"    # F

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopRunningStitchAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/RunningStitch;->deactivate()V

    .line 36
    return-void
.end method
