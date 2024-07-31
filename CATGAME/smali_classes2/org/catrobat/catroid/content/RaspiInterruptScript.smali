.class public Lorg/catrobat/catroid/content/RaspiInterruptScript;
.super Lorg/catrobat/catroid/content/Script;
.source "RaspiInterruptScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eventValue:Ljava/lang/String;

.field private pin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->pin:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->eventValue:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 70
    new-instance v0, Lorg/catrobat/catroid/content/eventids/RaspiEventId;

    iget-object v1, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->pin:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->eventValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/eventids/RaspiEventId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEventValue()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->eventValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;-><init>(Lorg/catrobat/catroid/content/RaspiInterruptScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public setEventValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventValue"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->eventValue:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/content/RaspiInterruptScript;->pin:Ljava/lang/String;

    .line 54
    return-void
.end method
