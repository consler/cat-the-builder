.class public Lorg/catrobat/catroid/content/actions/StampAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StampAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StampAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 42
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "delta"    # F

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StampAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/PenConfiguration;->setStamp(Z)V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getPenActor()Lorg/catrobat/catroid/stage/PenActor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/PenActor;->stampToFrameBuffer()V

    .line 38
    return-void
.end method
