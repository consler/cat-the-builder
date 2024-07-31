.class public Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;
.super Ljava/lang/Object;
.source "LegacyProjectWithoutScenes.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "program"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

.field private header:Lorg/catrobat/catroid/content/XmlHeader;

.field private objectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/XmlHeader;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->header:Lorg/catrobat/catroid/content/XmlHeader;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->objectList:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->settings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 116
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->header:Lorg/catrobat/catroid/content/XmlHeader;

    .line 117
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/XmlHeader;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method public getProjectUserLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->projectLists:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->projectLists:Ljava/util/List;

    return-object v0

    .line 135
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjectUserVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->projectVariables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->projectVariables:Ljava/util/List;

    return-object v0

    .line 128
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

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

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->settings:Ljava/util/List;

    return-object v0
.end method

.method public getSpriteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->objectList:Ljava/util/List;

    return-object v0
.end method

.method public getSpriteUserLists(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteListOfLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteListOfLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteUserVariables(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 142
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->header:Lorg/catrobat/catroid/content/XmlHeader;

    return-object v0
.end method

.method public toProject(Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "projectDir":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/content/Project;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/Project;-><init>()V

    .line 67
    .local v1, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Project;->setXmlHeader(Lorg/catrobat/catroid/content/XmlHeader;)V

    .line 68
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getProjectUserVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getProjectUserLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 74
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getSpriteUserVariables(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getSpriteUserLists(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 78
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/content/Scene;

    const v3, 0x7f12024f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/catrobat/catroid/content/Scene;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 79
    .local v2, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->getSpriteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Project;->addScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 82
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/io/StorageOperations;->createSceneDirectory(Ljava/io/File;)V

    .line 84
    new-instance v3, Ljava/io/File;

    const-string v4, "automatic_screenshot.png"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v3, "automaticScreenshot":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "manual_screenshot.png"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v4, "manualScreenshot":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "images"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    .line 88
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v5, v7}, Lorg/catrobat/catroid/io/StorageOperations;->copyDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 89
    new-instance v5, Ljava/io/File;

    const-string v7, "sounds"

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    .line 90
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-static {v5, v8}, Lorg/catrobat/catroid/io/StorageOperations;->copyDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 96
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 101
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V

    .line 102
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V

    .line 104
    return-object v1
.end method
