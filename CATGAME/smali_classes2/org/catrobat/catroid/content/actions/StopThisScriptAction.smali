.class public Lorg/catrobat/catroid/content/actions/StopThisScriptAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "StopThisScriptAction.java"


# instance fields
.field private currentScript:Lorg/catrobat/catroid/content/Script;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lorg/catrobat/catroid/content/Look;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->stopThreadWithScript(Lorg/catrobat/catroid/content/Script;)V

    .line 44
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "currentScript"    # Lorg/catrobat/catroid/content/Script;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopThisScriptAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    .line 37
    return-void
.end method
