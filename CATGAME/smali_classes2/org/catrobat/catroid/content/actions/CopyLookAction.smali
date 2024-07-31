.class public final Lorg/catrobat/catroid/content/actions/CopyLookAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "CopyLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u000e\u0010\t\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n \u0017*\u0004\u0018\u00010\u00160\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/CopyLookAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "nextLookAction",
        "Lorg/catrobat/catroid/content/actions/SetNextLookAction;",
        "getNextLookAction",
        "()Lorg/catrobat/catroid/content/actions/SetNextLookAction;",
        "setNextLookAction",
        "(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "xstreamSerializer",
        "Lorg/catrobat/catroid/io/XstreamSerializer;",
        "kotlin.jvm.PlatformType",
        "act",
        "",
        "delta",
        "",
        "copyLook",
        "",
        "copyLookFile",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 47
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-void
.end method

.method private final copyLook()V
    .locals 3

    .line 60
    nop

    .line 61
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/CopyLookAction;->copyLookFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CopyLookAction"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 65
    return-void
.end method

.method private final copyLookFile()V
    .locals 15

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 69
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_4

    .line 70
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 71
    .local v2, "currentLookData":Lorg/catrobat/catroid/common/LookData;
    iget-object v3, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 72
    .local v3, "currentLookDataFile":Ljava/io/File;
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "lookDataName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v7, "sprite.look"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 74
    .local v5, "currentLookDataIndex":I
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v6

    const-string v8, "ProjectManager.getInstance()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v6

    .line 75
    .local v6, "currentScene":Lorg/catrobat/catroid/content/Scene;
    new-instance v9, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v9}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UniqueNameProvider().get\u2026ataName, sprite.lookList)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v9

    .line 77
    nop

    .line 78
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 79
    invoke-static {v3}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 80
    .local v7, "copiedLookDataFile":Ljava/io/File;
    new-instance v9, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v9, v4, v7}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 81
    .local v9, "copiedLookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-interface {v10, v11, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {v9}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v10

    invoke-virtual {v10}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .end local v7    # "copiedLookDataFile":Ljava/io/File;
    .end local v9    # "copiedLookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 84
    :cond_0
    new-instance v9, Ljava/io/File;

    const-string v10, "currentScene"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "images"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v9, "imageDirectory":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v10, "copiedLookDataFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 88
    new-instance v11, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v11, v10}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V

    .line 89
    .local v11, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lorg/catrobat/catroid/common/LookData;->getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 90
    new-instance v12, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v12, v4, v10}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 91
    .local v12, "copiedLookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v13

    iget-object v14, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Look;->getLookListIndexBeforeLookRequest()I

    move-result v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    invoke-interface {v13, v7, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v14}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setChange(I)V

    .line 93
    :cond_1
    invoke-virtual {v12}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v9    # "imageDirectory":Ljava/io/File;
    .end local v10    # "copiedLookDataFile":Ljava/io/File;
    .end local v11    # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "copiedLookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/io/IOException;
    move-object v9, v7

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "CopyLookAction"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v7    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 98
    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->xstreamSerializer:Lorg/catrobat/catroid/io/XstreamSerializer;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 99
    return-void

    .line 71
    .end local v3    # "currentLookDataFile":Ljava/io/File;
    .end local v4    # "lookDataName":Ljava/lang/String;
    .end local v5    # "currentLookDataIndex":I
    .end local v6    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    return-void

    .line 70
    .end local v2    # "currentLookData":Lorg/catrobat/catroid/common/LookData;
    :cond_3
    return-void

    .line 69
    .end local v1    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_4
    return-void

    .line 68
    .end local v0    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_5
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/actions/SetNextLookAction;->setChange(I)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/CopyLookAction;->copyLook()V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getNextLookAction()Lorg/catrobat/catroid/content/actions/SetNextLookAction;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final nextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V
    .locals 1
    .param p1, "nextLookAction"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    const-string v0, "nextLookAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 57
    return-void
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setNextLookAction(Lorg/catrobat/catroid/content/actions/SetNextLookAction;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->nextLookAction:Lorg/catrobat/catroid/content/actions/SetNextLookAction;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/CopyLookAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
