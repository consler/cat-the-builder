.class public Lorg/catrobat/catroid/content/WhenNfcScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenNfcScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private matchAll:Z

.field private nfcTag:Lorg/catrobat/catroid/common/NfcTagData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->matchAll:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/common/NfcTagData;)V
    .locals 1
    .param p1, "nfcTag"    # Lorg/catrobat/catroid/common/NfcTagData;

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->matchAll:Z

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->nfcTag:Lorg/catrobat/catroid/common/NfcTagData;

    .line 44
    return-void
.end method


# virtual methods
.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "resourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 56
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Script;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 58
    return-void
.end method

.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 74
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->matchAll:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->nfcTag:Lorg/catrobat/catroid/common/NfcTagData;

    if-eqz v0, :cond_1

    .line 77
    new-instance v1, Lorg/catrobat/catroid/content/eventids/NfcEventId;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/NfcTagData;->getNfcTagUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/eventids/NfcEventId;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "We want to identify a specific NfcTag, but null is given."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNfcTag()Lorg/catrobat/catroid/common/NfcTagData;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->nfcTag:Lorg/catrobat/catroid/common/NfcTagData;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;-><init>(Lorg/catrobat/catroid/content/WhenNfcScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method

.method public setMatchAll(Z)V
    .locals 0
    .param p1, "matchAll"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->matchAll:Z

    .line 62
    return-void
.end method

.method public setNfcTag(Lorg/catrobat/catroid/common/NfcTagData;)V
    .locals 0
    .param p1, "nfcTag"    # Lorg/catrobat/catroid/common/NfcTagData;

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/content/WhenNfcScript;->nfcTag:Lorg/catrobat/catroid/common/NfcTagData;

    .line 70
    return-void
.end method
