.class public Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;
.super Ljava/lang/Object;
.source "SpriteController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

.field private scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

.field private soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

.field private uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    return-void
.end method


# virtual methods
.method public convert(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;
    .locals 1
    .param p1, "spriteToConvert"    # Lorg/catrobat/catroid/content/Sprite;

    .line 58
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->convert()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;
    .locals 7
    .param p1, "spriteToCopy"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "dstProject"    # Lorg/catrobat/catroid/content/Project;
    .param p3, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/catroid/ui/fragment/SpriteFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 65
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 66
    .local v3, "look":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v5, v3, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->copy(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v3    # "look":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/SoundInfo;

    .line 70
    .local v3, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-virtual {v5, v3, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->copy(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/NfcTagData;

    .line 74
    .local v3, "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/NfcTagData;->clone()Lorg/catrobat/catroid/common/NfcTagData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3    # "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 78
    .local v3, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v5, v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 81
    .local v3, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v5, v3}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 85
    .local v3, "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-object v6, v3

    check-cast v6, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;-><init>(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v3    # "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_5

    .line 88
    :cond_5
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 90
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    :try_start_0
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-virtual {v4, v3, p2, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->copy(Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Script;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_7

    .line 91
    :catch_0
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_7
    goto :goto_6

    .line 96
    :cond_6
    instance-of v2, p1, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v2, :cond_7

    .line 97
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/GroupItemSprite;

    move-object v3, p1

    check-cast v3, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/GroupItemSprite;->isCollapsed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/GroupItemSprite;->setCollapsed(Z)V

    .line 100
    :cond_7
    return-object v1
.end method

.method public copyForCloneBrick(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;
    .locals 11
    .param p1, "spriteToCopy"    # Lorg/catrobat/catroid/content/Sprite;

    .line 104
    new-instance v0, Lorg/catrobat/catroid/content/Sprite;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Lorg/catrobat/catroid/stage/StageActivity;->getAndIncrementNumberOfClonedSprites()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 107
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 109
    .local v2, "currentScene":Lorg/catrobat/catroid/content/Scene;
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;-><init>()V

    .line 111
    .local v3, "scriptController":Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    .line 112
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/catrobat/catroid/content/Sprite;->setActionFactory(Lorg/catrobat/catroid/content/ActionFactory;)V

    .line 114
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/common/LookData;

    .line 115
    .local v6, "look":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v6    # "look":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 122
    .local v6, "originalVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    new-instance v7, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v7, v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 123
    .local v7, "copyVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getDeviceKey()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setDeviceValueKey(Ljava/util/UUID;)V

    .line 124
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v6    # "originalVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v7    # "copyVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 128
    .local v6, "originalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    new-instance v7, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v7, v6}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 129
    .local v7, "copyList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->getDeviceKey()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/formulaeditor/UserList;->setDeviceListKey(Ljava/util/UUID;)V

    .line 130
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v9, v6}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v6    # "originalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v7    # "copyList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_2

    .line 133
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 134
    .local v6, "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-object v9, v6

    check-cast v9, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;-><init>(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v6    # "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_3

    .line 137
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Script;

    .line 139
    .local v6, "script":Lorg/catrobat/catroid/content/Script;
    :try_start_0
    invoke-virtual {v3, v6, v1, v2, v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->copy(Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Script;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_6

    .line 140
    :catch_0
    move-exception v7

    goto :goto_5

    :catch_1
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v8, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v6    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_4

    .line 145
    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->resetSprite()V

    .line 146
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 147
    .local v5, "currentLookDataIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 148
    iget-object v6, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 150
    :cond_5
    iget-object v6, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget-object v7, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Look;->copyTo(Lorg/catrobat/catroid/content/Look;)V

    .line 152
    iget-object v6, p1, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/PenConfiguration;->isPenDown()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 153
    iget-object v6, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v6, v4}, Lorg/catrobat/catroid/content/PenConfiguration;->setPenDown(Z)V

    .line 154
    iget-object v4, v0, Lorg/catrobat/catroid/content/Sprite;->penConfiguration:Lorg/catrobat/catroid/content/PenConfiguration;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/PenConfiguration;->addQueue()V

    .line 157
    :cond_6
    return-object v0
.end method

.method public delete(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 5
    .param p1, "spriteToDelete"    # Lorg/catrobat/catroid/content/Sprite;

    .line 161
    iget-boolean v0, p1, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    .line 167
    .local v1, "look":Lorg/catrobat/catroid/common/LookData;
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->delete(Lorg/catrobat/catroid/common/LookData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "look":Lorg/catrobat/catroid/common/LookData;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/SoundInfo;

    .line 175
    .local v1, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->delete(Lorg/catrobat/catroid/common/SoundInfo;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    goto :goto_3

    .line 176
    :catch_1
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_2

    .line 180
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 181
    .local v0, "currentScene":Lorg/catrobat/catroid/content/Scene;
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Scene;->removeSpriteFromCloneBricks(Lorg/catrobat/catroid/content/Sprite;)V

    .line 184
    :cond_2
    return-void

    .line 162
    .end local v0    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are deleting a clone: this means you also delete the files that are referenced by the original sprite because clones are shallow copies regarding files."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;
    .locals 7
    .param p1, "spriteToPack"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 188
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 193
    .local v3, "look":Lorg/catrobat/catroid/common/LookData;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v4, v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->packForSprite(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    .line 194
    .end local v3    # "look":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/SoundInfo;

    .line 197
    .local v3, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-virtual {v4, v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->packForSprite(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;

    .line 198
    .end local v3    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/NfcTagData;

    .line 201
    .local v3, "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/NfcTagData;->clone()Lorg/catrobat/catroid/common/NfcTagData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3    # "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    goto :goto_2

    .line 204
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 206
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :try_start_0
    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/Sprite;->addUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_4

    .line 207
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_4
    goto :goto_3

    .line 212
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 214
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    :try_start_1
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-virtual {v4, v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->packForSprite(Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Sprite;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    goto :goto_6

    .line 215
    :catch_1
    move-exception v4

    .line 216
    .restart local v4    # "e":Ljava/lang/CloneNotSupportedException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_6
    goto :goto_5

    .line 220
    :cond_4
    return-object v1
.end method

.method public unpack(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;
    .locals 7
    .param p1, "spriteToUnpack"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "dstProject"    # Lorg/catrobat/catroid/content/Project;
    .param p3, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    .line 228
    .local v3, "look":Lorg/catrobat/catroid/common/LookData;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->lookController:Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;

    invoke-virtual {v4, v3, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->unpackForSprite(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    .line 229
    .end local v3    # "look":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/SoundInfo;

    .line 232
    .local v3, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->soundController:Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-virtual {v4, v3, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->unpackForSprite(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;

    .line 233
    .end local v3    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/NfcTagData;

    .line 236
    .local v3, "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/NfcTagData;->clone()Lorg/catrobat/catroid/common/NfcTagData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v3    # "nfcTag":Lorg/catrobat/catroid/common/NfcTagData;
    goto :goto_2

    .line 239
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserDefinedBrickList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 241
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :try_start_0
    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/content/Sprite;->addUserDefinedBrick(Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_4

    .line 242
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_4
    goto :goto_3

    .line 247
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 249
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    :try_start_1
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-virtual {v4, v3, p2, p3, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->unpackForSprite(Lorg/catrobat/catroid/content/Script;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    goto :goto_6

    .line 250
    :catch_1
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/lang/CloneNotSupportedException;
    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_6
    goto :goto_5

    .line 255
    :cond_4
    return-object v1
.end method
