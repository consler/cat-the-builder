.class public Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;
.super Ljava/lang/Object;
.source "ProjectUntilLanguageVersion0999.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "program"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private header:Lorg/catrobat/catroid/content/XmlHeader;

.field private programListOfLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private programMultiplayerVariableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private programVariableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/XmlHeader;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->header:Lorg/catrobat/catroid/content/XmlHeader;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->settings:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programVariableList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programMultiplayerVariableList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programListOfLists:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->scenes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 89
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->header:Lorg/catrobat/catroid/content/XmlHeader;

    .line 90
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/XmlHeader;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
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

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programMultiplayerVariableList:Ljava/util/List;

    return-object v0
.end method

.method public getSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->scenes:Ljava/util/List;

    return-object v0
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

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->settings:Ljava/util/List;

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

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programListOfLists:Ljava/util/List;

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

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->programVariableList:Ljava/util/List;

    return-object v0
.end method

.method public getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->header:Lorg/catrobat/catroid/content/XmlHeader;

    return-object v0
.end method

.method public toProject()Lorg/catrobat/catroid/content/Project;
    .locals 8

    .line 57
    new-instance v0, Lorg/catrobat/catroid/content/Project;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/Project;-><init>()V

    .line 58
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Project;->setXmlHeader(Lorg/catrobat/catroid/content/XmlHeader;)V

    .line 59
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getUserVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;

    .line 66
    .local v2, "legacyScene":Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;
    new-instance v3, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/catrobat/catroid/content/Scene;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 68
    .local v3, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->getSpriteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .line 69
    .local v5, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5}, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->getSpriteUserVariables(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5}, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->getSpriteUserLists(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 72
    .end local v5    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 75
    .end local v2    # "legacyScene":Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;
    .end local v3    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 77
    :cond_1
    return-object v0
.end method
