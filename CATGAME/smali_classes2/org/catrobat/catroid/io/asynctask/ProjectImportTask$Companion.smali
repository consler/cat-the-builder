.class public final Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;
.super Ljava/lang/Object;
.source "ProjectImportTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0013R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "copyProject",
        "",
        "projectDir",
        "Ljava/io/File;",
        "destinationDirectory",
        "projectName",
        "errorWhileImporting",
        "getProjectName",
        "importProject",
        "",
        "task",
        "files",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 63
    invoke-direct {p0}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;-><init>()V

    return-void
.end method

.method private final copyProject(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .param p3, "projectName"    # Ljava/lang/String;

    .line 106
    invoke-static {p1, p2}, Lorg/catrobat/catroid/io/StorageOperations;->copyDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 107
    nop

    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "code.xml"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-static {v0, p3}, Lorg/catrobat/catroid/io/XstreamSerializer;->renameProject(Ljava/io/File;Ljava/lang/String;)Z

    .line 109
    return-void
.end method

.method private final errorWhileImporting(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;

    .line 112
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Folder exists, trying to delete folder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    nop

    .line 115
    :try_start_0
    invoke-static {p1}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "deleteException":Ljava/io/IOException;
    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "deleteException":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 120
    return-void
.end method

.method private final getProjectName(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "projectDir"    # Ljava/io/File;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "code.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 94
    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No xml file found for project "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v2

    .line 97
    :cond_0
    nop

    .line 98
    :try_start_0
    new-instance v1, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;

    move-result-object v1

    const-string v3, "ProjectMetaDataParser(xmlFile).projectMetaData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "Cannot extract projectName from xml"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    nop

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2
.end method

.method private final importProject(Ljava/io/File;)Z
    .locals 7
    .param p1, "projectDir"    # Ljava/io/File;

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getProjectName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    .local v0, "projectName":Ljava/lang/String;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .line 78
    sget-object v3, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniqueNameProvider().get\u2026.DEFAULT_ROOT_DIRECTORY))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 79
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 80
    invoke-static {v0}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v2, "destinationDirectory":Ljava/io/File;
    nop

    .line 82
    :try_start_0
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-direct {v3, p1, v2, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->copyProject(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/io/IOException;
    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-virtual {v4}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->getTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something went wrong while importing project "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-direct {v4, p1, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->errorWhileImporting(Ljava/io/File;Ljava/io/File;)V

    .line 87
    nop

    .line 81
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 76
    .end local v0    # "projectName":Ljava/lang/String;
    .end local v2    # "destinationDirectory":Ljava/io/File;
    :cond_0
    return v1
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final task(Ljava/util/List;)Z
    .locals 4
    .param p1, "files"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "success":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 69
    .local v2, "projectDir":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 70
    if-eqz v0, :cond_0

    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->importProject(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 68
    .end local v2    # "projectDir":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 72
    :cond_2
    return v0
.end method
