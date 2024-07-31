.class public Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;
.super Lorg/catrobat/catroid/content/actions/WaitAction;
.source "WaitForBubbleBrickAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WaitAction;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method protected end()V
    .locals 2

    .line 34
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->getBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/stage/ShowBubbleActor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WaitForBubbleBrickAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/StageListener;->removeBubbleActorForSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 37
    :cond_0
    return-void
.end method
