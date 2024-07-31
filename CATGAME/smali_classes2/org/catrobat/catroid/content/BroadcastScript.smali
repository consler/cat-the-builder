.class public Lorg/catrobat/catroid/content/BroadcastScript;
.super Lorg/catrobat/catroid/content/Script;
.source "BroadcastScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private receivedMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "receivedMessage"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/BroadcastScript;->receivedMessage:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 60
    new-instance v0, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;

    iget-object v1, p0, Lorg/catrobat/catroid/content/BroadcastScript;->receivedMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/eventids/BroadcastEventId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBroadcastMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/BroadcastScript;->receivedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/BroadcastScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;-><init>(Lorg/catrobat/catroid/content/BroadcastScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/BroadcastScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/BroadcastScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public setBroadcastMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/content/BroadcastScript;->receivedMessage:Ljava/lang/String;

    .line 56
    return-void
.end method
