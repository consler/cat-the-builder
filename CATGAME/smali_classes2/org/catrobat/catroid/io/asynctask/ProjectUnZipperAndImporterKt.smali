.class public final Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt;
.super Ljava/lang/Object;
.source "ProjectUnZipperAndImporter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUnZipperAndImporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUnZipperAndImporter.kt\norg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,71:1\n13506#2,2:72\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUnZipperAndImporter.kt\norg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt\n*L\n54#1,2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0019\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0010\n\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "unzipAndImportProject",
        "",
        "projectDir",
        "Ljava/io/File;",
        "unzipAndImportProjects",
        "files",
        "",
        "([Ljava/io/File;)Z",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static final unzipAndImportProject(Ljava/io/File;)Z
    .locals 4
    .param p0, "projectDir"    # Ljava/io/File;

    .line 60
    nop

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v0, "cachedProjectDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V

    .line 65
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/io/ZipArchiver;

    invoke-direct {v1}, Lorg/catrobat/catroid/io/ZipArchiver;-><init>()V

    invoke-virtual {v1, p0, v0}, Lorg/catrobat/catroid/io/ZipArchiver;->unzip(Ljava/io/File;Ljava/io/File;)V

    .line 66
    sget-object v1, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->task(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cachedProjectDir":Ljava/io/File;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot unzip project "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v1, 0x0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 70
    return v1
.end method

.method public static final unzipAndImportProjects([Ljava/io/File;)Z
    .locals 10
    .param p0, "files"    # [Ljava/io/File;

    const-string v0, "files"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "success":Z
    move-object v1, p0

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "projectDir":Ljava/io/File;
    const/4 v8, 0x0

    .line 55
    .local v8, "$i$a$-forEach-ProjectUnZipperAndImporterKt$unzipAndImportProjects$1":I
    if-eqz v0, :cond_0

    invoke-static {v7}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt;->unzipAndImportProject(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v4

    :goto_1
    move v0, v9

    .line 56
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "projectDir":Ljava/io/File;
    .end local v8    # "$i$a$-forEach-ProjectUnZipperAndImporterKt$unzipAndImportProjects$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :cond_1
    nop

    .line 57
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    return v0
.end method
