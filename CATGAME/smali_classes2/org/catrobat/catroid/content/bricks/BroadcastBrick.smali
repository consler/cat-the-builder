.class public Lorg/catrobat/catroid/content/bricks/BroadcastBrick;
.super Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
.source "BroadcastBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected broadcastMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;->broadcastMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;->broadcastMessage:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 60
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;->broadcastMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createBroadcastAction(Ljava/lang/String;Z)Lorg/catrobat/catroid/content/actions/EventAction;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 61
    return-void
.end method

.method public getBroadcastMessage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;->broadcastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 55
    const v0, 0x7f0d003c

    return v0
.end method

.method public setBroadcastMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;->broadcastMessage:Ljava/lang/String;

    .line 51
    return-void
.end method
