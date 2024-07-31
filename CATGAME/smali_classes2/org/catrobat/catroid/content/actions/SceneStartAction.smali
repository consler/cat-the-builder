.class public Lorg/catrobat/catroid/content/actions/SceneStartAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SceneStartAction.java"


# instance fields
.field private sceneName:Ljava/lang/String;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sceneName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneName"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sceneName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 55
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sceneName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->releaseAllPointers()V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SceneStartAction;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->startScene(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method
