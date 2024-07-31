.class public Lorg/catrobat/catroid/content/actions/CloneAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "CloneAction.java"


# instance fields
.field private sprite:Lorg/catrobat/catroid/content/Sprite;


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

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/CloneAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 46
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CloneAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/CloneAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->cloneSpriteAndAddToStage(Lorg/catrobat/catroid/content/Sprite;)V

    .line 42
    return-void
.end method
