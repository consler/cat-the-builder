.class public Lorg/catrobat/catroid/content/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "program"
.end annotation

.annotation runtime Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    value = {
        "header",
        "settings",
        "scenes",
        "programVariableList",
        "programListOfLists",
        "programMultiplayerVariableList"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient broadcastMessageContainer:Lorg/catrobat/catroid/common/BroadcastMessageContainer;

.field private transient directory:Ljava/io/File;

.field private multiplayerVariables:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "programMultiplayerVariableList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private sceneList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "scenes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Setting;",
            ">;"
        }
    .end annotation
.end field

.field private userLists:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "programListOfLists"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private userVariables:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "programVariableList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "header"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/XmlHeader;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->settings:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    .line 86
    new-instance v0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->broadcastMessageContainer:Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/content/Project;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "landscapeMode"    # Z

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/catrobat/catroid/content/Project;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "landscapeMode"    # Z
    .param p4, "isCastProject"    # Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/XmlHeader;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->settings:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    .line 86
    new-instance v0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->broadcastMessageContainer:Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/XmlHeader;->setProjectName(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setDescription(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setNotesAndCredits(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/XmlHeader;->setlandscapeMode(Z)V

    .line 97
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-eqz v0, :cond_0

    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/ScreenValueHandler;->updateScreenWidthAndHeight(Landroid/content/Context;)V

    .line 100
    :cond_1
    if-eqz p3, :cond_2

    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-ge v0, v1, :cond_2

    .line 101
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 102
    .local v0, "tmp":I
    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sput v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 103
    sput v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .end local v0    # "tmp":I
    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-le v0, v1, :cond_3

    .line 105
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 106
    .restart local v0    # "tmp":I
    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sput v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 107
    sput v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    goto :goto_1

    .line 104
    .end local v0    # "tmp":I
    :cond_3
    :goto_0
    nop

    .line 110
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    iput v1, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    iput v1, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 113
    const/4 v0, 0x1

    if-eqz p4, :cond_4

    .line 114
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const/16 v2, 0x2d0

    iput v2, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 115
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const/16 v2, 0x500

    iput v2, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 116
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/XmlHeader;->setlandscapeMode(Z)V

    .line 117
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/XmlHeader;->setIsCastProject(Z)V

    .line 120
    :cond_4
    new-instance v1, Lorg/catrobat/catroid/content/Scene;

    const v2, 0x7f12024f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/catrobat/catroid/content/Scene;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 121
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v2, Lorg/catrobat/catroid/content/Sprite;

    const v3, 0x7f120052

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "backgroundSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 123
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 125
    iget-object v3, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v3, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    iput-boolean v0, v3, Lorg/catrobat/catroid/content/XmlHeader;->scenesEnabled:Z

    .line 128
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Project;->setDeviceData(Landroid/content/Context;)V

    .line 129
    return-void
.end method


# virtual methods
.method public addMultiplayerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z
    .locals 1
    .param p1, "multiplayerVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 348
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addScene(Lorg/catrobat/catroid/content/Scene;)V
    .locals 1
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 164
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z
    .locals 1
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 302
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z
    .locals 1
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 260
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public checkEquality(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 194
    .local p1, "newUserData":Ljava/lang/Object;, "TT;"
    .local p2, "oldUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-ne v0, v2, :cond_0

    .line 197
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 198
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->hasSameValue(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    move-result v2

    return v2

    .line 200
    .end local v0    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 201
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->hasSameListSize(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    move-result v2

    return v2

    .line 204
    .end local v0    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public checkForInvisibleSprites()V
    .locals 2

    .line 527
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 528
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->checkForInvisibleSprites()V

    .line 529
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method public checkIfSpriteNameEqualBackground(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    .line 542
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSpriteListWithClones()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 543
    .local v0, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Project;->getSpriteNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, "spriteNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, "sprite":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 545
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\\s]*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120052

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 548
    .local v3, "name":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "newSpriteName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5, v4}, Lorg/catrobat/catroid/content/Sprite;->setName(Ljava/lang/String;)V

    .line 550
    return-void

    .line 544
    .end local v3    # "name":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    .end local v4    # "newSpriteName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v2    # "sprite":I
    :cond_1
    return-void
.end method

.method public deselectElements(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 508
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData<*>;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 509
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/Scene;->deselectElements(Ljava/util/List;)V

    .line 510
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method

.method public fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V
    .locals 3
    .param p1, "event"    # Lorg/catrobat/catroid/content/EventWrapper;

    .line 372
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSpriteListWithClones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 373
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/content/Look;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 374
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->broadcastMessageContainer:Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    return-object v0
.end method

.method public getCatrobatLanguageVersion()D
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getCatrobatLanguageVersion()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultScene()Lorg/catrobat/catroid/content/Scene;
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Scene;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->directory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 142
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->directory:Ljava/io/File;

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getMultiplayerVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 336
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    return-object v1

    .line 339
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiplayerVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    return-object v0
.end method

.method public getMultiplayerVariablesCopy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "multiplayerVariablesCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 321
    .local v2, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v2    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_0

    .line 324
    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getProjectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotesAndCredits()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    .locals 9

    .line 424
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    .line 426
    .local v0, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 429
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/physics/content/ActionPhysicsFactory;

    invoke-direct {v1}, Lorg/catrobat/catroid/physics/content/ActionPhysicsFactory;-><init>()V

    .line 430
    .local v1, "physicsActionFactory":Lorg/catrobat/catroid/content/ActionFactory;
    new-instance v2, Lorg/catrobat/catroid/content/ActionFactory;

    invoke-direct {v2}, Lorg/catrobat/catroid/content/ActionFactory;-><init>()V

    .line 432
    .local v2, "actionFactory":Lorg/catrobat/catroid/content/ActionFactory;
    iget-object v3, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Scene;

    .line 433
    .local v4, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Sprite;

    .line 434
    .local v6, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/Sprite;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 435
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 436
    invoke-virtual {v6, v1}, Lorg/catrobat/catroid/content/Sprite;->setActionFactory(Lorg/catrobat/catroid/content/ActionFactory;)V

    .line 437
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 439
    :cond_1
    invoke-virtual {v6, v2}, Lorg/catrobat/catroid/content/Sprite;->setActionFactory(Lorg/catrobat/catroid/content/ActionFactory;)V

    .line 441
    .end local v6    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :goto_2
    goto :goto_1

    .line 442
    .end local v4    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    goto :goto_0

    .line 443
    :cond_3
    return-object v0
.end method

.method public getSceneByName(Ljava/lang/String;)Lorg/catrobat/catroid/content/Scene;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 482
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    return-object v1

    .line 485
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_0
    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    return-object v0
.end method

.method public getSceneNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Scene;

    .line 158
    .local v2, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 160
    :cond_0
    return-object v0
.end method

.method public getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 7

    .line 418
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 419
    .local v0, "virtualScreenWidth":I
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 420
    .local v1, "virtualScreenHeight":I
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    return-object v2
.end method

.method public getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Setting;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->settings:Ljava/util/List;

    return-object v0
.end method

.method public getSpriteListWithClones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->getSpritesFromStage()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteNames(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 533
    .local p1, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v0, "spriteNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "sprite":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 535
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "sprite":I
    :cond_0
    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 294
    .local v1, "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    return-object v1

    .line 297
    .end local v1    # "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    return-object v0
.end method

.method public getUserListsCopy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    .line 284
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "userListsCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 286
    .local v2, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_0

    .line 289
    :cond_1
    return-object v0
.end method

.method public getUserVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 252
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    return-object v1

    .line 255
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    return-object v0
.end method

.method public getUserVariablesCopy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    .line 221
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "userVariablesCopy":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 223
    .local v2, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_0

    .line 227
    :cond_1
    return-object v0
.end method

.method public getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    return-object v0
.end method

.method public hasMultiplayerVariables()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScene()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 180
    .local p1, "newUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "oldUserData":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 181
    return v2

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, p2}, Lorg/catrobat/catroid/content/Project;->checkEquality(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    return v2

    .line 188
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isCastProject()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->isCastProject()Z

    move-result v0

    return v0
.end method

.method public isGlobalVariable(Lorg/catrobat/catroid/formulaeditor/UserData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)Z"
        }
    .end annotation

    .line 522
    .local p1, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 522
    :goto_1
    return v0
.end method

.method public removeScene(Lorg/catrobat/catroid/content/Scene;)V
    .locals 1
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public removeUserList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 307
    .local v1, "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 310
    .end local v1    # "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeUserVariable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 265
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 268
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public resetUserData()V
    .locals 2

    .line 352
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 353
    .local v1, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->reset()V

    .line 354
    .end local v1    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->userLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 356
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->reset()V

    .line 357
    .end local v1    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    goto :goto_1

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->multiplayerVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 359
    .local v1, "multiplayerVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->reset()V

    .line 360
    .end local v1    # "multiplayerVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    goto :goto_2

    .line 361
    :cond_2
    return-void
.end method

.method public restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 231
    .local p1, "currentUserDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "userDataListToRestore":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "userData":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 233
    .local v3, "userDataToRestore":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-ne v4, v5, :cond_1

    .line 234
    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 235
    .local v4, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 236
    .local v5, "newUserVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 239
    .end local v4    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v5    # "newUserVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_2

    .line 240
    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 241
    .local v4, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 242
    .local v5, "newUserList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->setValue(Ljava/util/List;)V

    .line 246
    .end local v3    # "userDataToRestore":Ljava/lang/Object;, "TT;"
    .end local v4    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v5    # "newUserList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_2
    :goto_2
    goto :goto_1

    .line 247
    .end local v1    # "userData":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 248
    :cond_4
    return-void
.end method

.method public setCatrobatLanguageVersion(D)V
    .locals 1
    .param p1, "catrobatLanguageVersion"    # D

    .line 447
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/content/XmlHeader;->setCatrobatLanguageVersion(D)V

    .line 448
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/XmlHeader;->setDescription(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setDeviceData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 451
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setPlatform(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setPlatformVersion(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setDeviceName(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const-wide v1, 0x3ff1c28f5c28f5c3L    # 1.11

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/XmlHeader;->setCatrobatLanguageVersion(D)V

    .line 456
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationBuildName(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationBuildNumber(I)V

    .line 459
    if-nez p1, :cond_0

    .line 460
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationVersion(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationName(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationVersion(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    const v1, 0x7f12004c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationName(Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void
.end method

.method public setDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .line 148
    iput-object p1, p0, Lorg/catrobat/catroid/content/Project;->directory:Ljava/io/File;

    .line 149
    return-void
.end method

.method public setListeningLanguageTag()V
    .locals 3

    .line 514
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getListeningLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    sget-object v1, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/XmlHeader;->setListeningLanguageTag(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/XmlHeader;->setProjectName(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setNotesAndCredits(Ljava/lang/String;)V
    .locals 1
    .param p1, "notesAndCredits"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/XmlHeader;->setNotesAndCredits(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V
    .locals 1
    .param p1, "screenMode"    # Lorg/catrobat/catroid/common/ScreenModes;

    .line 406
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/XmlHeader;->setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V

    .line 407
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/XmlHeader;->setTags(Ljava/util/List;)V

    .line 474
    return-void
.end method

.method public setXmlHeader(Lorg/catrobat/catroid/content/XmlHeader;)V
    .locals 0
    .param p1, "xmlHeader"    # Lorg/catrobat/catroid/content/XmlHeader;

    .line 498
    iput-object p1, p0, Lorg/catrobat/catroid/content/Project;->xmlHeader:Lorg/catrobat/catroid/content/XmlHeader;

    .line 499
    return-void
.end method

.method public updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .line 502
    .local p3, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Project;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 503
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1, p1, p2, p3}, Lorg/catrobat/catroid/content/Scene;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 504
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method
