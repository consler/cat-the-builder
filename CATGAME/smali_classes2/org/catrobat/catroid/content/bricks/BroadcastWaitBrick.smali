.class public Lorg/catrobat/catroid/content/bricks/BroadcastWaitBrick;
.super Lorg/catrobat/catroid/content/bricks/BroadcastBrick;
.source "BroadcastWaitBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 47
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastWaitBrick;->broadcastMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createBroadcastAction(Ljava/lang/String;Z)Lorg/catrobat/catroid/content/actions/EventAction;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 48
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 42
    const v0, 0x7f0d003e

    return v0
.end method
