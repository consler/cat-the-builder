.class public Lorg/catrobat/catroid/content/actions/SetVisibleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetVisibleAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 49
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 52
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->visible:Z

    .line 53
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "delta"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-boolean v1, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->visible:Z

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->setLookVisible(Z)V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v0

    .line 41
    .local v0, "actor":Lorg/catrobat/catroid/stage/ShowBubbleActor;
    if-eqz v0, :cond_0

    .line 42
    iget-boolean v1, p0, Lorg/catrobat/catroid/content/actions/SetVisibleAction;->visible:Z

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/ShowBubbleActor;->setVisible(Z)V

    .line 45
    .end local v0    # "actor":Lorg/catrobat/catroid/stage/ShowBubbleActor;
    :cond_0
    return-void
.end method
