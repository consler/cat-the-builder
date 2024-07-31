.class public Lorg/catrobat/catroid/content/actions/SceneTransitionAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SceneTransitionAction.java"


# instance fields
.field private sceneName:Ljava/lang/String;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sceneName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneName"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sceneName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 56
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sceneName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->releaseAllPointers()V

    .line 40
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SceneTransitionAction;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->transitionToScene(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
