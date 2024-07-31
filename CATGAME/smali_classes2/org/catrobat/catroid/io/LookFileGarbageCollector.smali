.class public final Lorg/catrobat/catroid/io/LookFileGarbageCollector;
.super Ljava/lang/Object;
.source "LookFileGarbageCollector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/LookFileGarbageCollector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLookFileGarbageCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LookFileGarbageCollector.kt\norg/catrobat/catroid/io/LookFileGarbageCollector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,77:1\n1819#2,2:78\n1328#2:80\n1414#2,2:81\n1328#2:83\n1414#2,5:84\n1416#2,3:89\n1819#2,2:95\n3755#3:92\n4270#3,2:93\n*E\n*S KotlinDebug\n*F\n+ 1 LookFileGarbageCollector.kt\norg/catrobat/catroid/io/LookFileGarbageCollector\n*L\n37#1,2:78\n46#1:80\n46#1,2:81\n47#1:83\n47#1,5:84\n46#1,3:89\n59#1,2:95\n58#1:92\n58#1,2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/LookFileGarbageCollector;",
        "",
        "()V",
        "cleanUpUnusedLookFiles",
        "",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "deleteUnusedLookFiles",
        "scene",
        "Lorg/catrobat/catroid/content/Scene;",
        "fileNamesToKeep",
        "",
        "",
        "getAllFileNamesToKeep",
        "getLookDataFileNames",
        "getOtherFileNamesToKeep",
        "tryDeleteLookFile",
        "file",
        "Ljava/io/File;",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/io/LookFileGarbageCollector$Companion;

.field private static final LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/io/LookFileGarbageCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/LookFileGarbageCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->Companion:Lorg/catrobat/catroid/io/LookFileGarbageCollector$Companion;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLOCK$cp()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private final deleteUnusedLookFiles(Lorg/catrobat/catroid/content/Scene;Ljava/util/List;)V
    .locals 13
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "fileNamesToKeep"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Scene;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v0, "imageDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    .local v1, "imageDirectoryFileList":[Ljava/io/File;
    nop

    .line 59
    nop

    .line 58
    move-object v2, v1

    .local v2, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 93
    .local v6, "$i$f$filterTo":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    const-string v9, "file"

    if-ge v8, v7, :cond_1

    aget-object v10, v5, v8

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 58
    .local v12, "$i$a$-filter-LookFileGarbageCollector$deleteUnusedLookFiles$1":I
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "$i$a$-filter-LookFileGarbageCollector$deleteUnusedLookFiles$1":I
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 92
    nop

    .end local v2    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 59
    move-object v2, v4

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 95
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/io/File;

    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 59
    .local v7, "$i$a$-forEach-LookFileGarbageCollector$deleteUnusedLookFiles$2":I
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->tryDeleteLookFile(Ljava/io/File;)V

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "$i$a$-forEach-LookFileGarbageCollector$deleteUnusedLookFiles$2":I
    goto :goto_1

    .line 96
    :cond_2
    nop

    .line 60
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    return-void

    .line 57
    .end local v1    # "imageDirectoryFileList":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method private final getAllFileNamesToKeep(Lorg/catrobat/catroid/content/Scene;)Ljava/util/List;
    .locals 2
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Scene;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->getLookDataFileNames(Lorg/catrobat/catroid/content/Scene;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->getOtherFileNamesToKeep()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getLookDataFileNames(Lorg/catrobat/catroid/content/Scene;)Ljava/util/List;
    .locals 20
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Scene;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    const-string v1, "scene.spriteList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 81
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 82
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/Sprite;

    .local v7, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v8, 0x0

    .line 47
    .local v8, "$i$a$-flatMap-LookFileGarbageCollector$getLookDataFileNames$1":I
    const-string v9, "sprite"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v9

    const-string v10, "sprite.lookList"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 83
    .local v10, "$i$f$flatMap":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 84
    .local v13, "$i$f$flatMapTo":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 85
    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v0

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v16, "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object v0, v15

    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    .local v0, "lookData":Lorg/catrobat/catroid/common/LookData;
    const/16 v17, 0x0

    .line 48
    .local v17, "$i$a$-flatMap-LookFileGarbageCollector$getLookDataFileNames$1$1":I
    move/from16 v18, v1

    .end local v1    # "$i$f$flatMap":I
    .local v18, "$i$f$flatMap":I
    const-string v1, "lookData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    move-object/from16 v19, v0

    .end local v0    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .local v19, "lookData":Lorg/catrobat/catroid/common/LookData;
    const-string v0, "lookData.file"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .end local v17    # "$i$a$-flatMap-LookFileGarbageCollector$getLookDataFileNames$1$1":I
    .end local v19    # "lookData":Lorg/catrobat/catroid/common/LookData;
    check-cast v0, Ljava/lang/Iterable;

    .line 86
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v11, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 84
    .end local v0    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    move/from16 v1, v18

    goto :goto_1

    .line 88
    .end local v16    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$flatMap":I
    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v1    # "$i$f$flatMap":I
    :cond_0
    move-object/from16 v16, v0

    move/from16 v18, v1

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$flatMapTo":I
    .restart local v16    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v18    # "$i$f$flatMap":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 83
    nop

    .end local v7    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v8    # "$i$a$-flatMap-LookFileGarbageCollector$getLookDataFileNames$1":I
    .end local v9    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$flatMap":I
    check-cast v0, Ljava/lang/Iterable;

    .line 89
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 81
    .end local v0    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    goto :goto_0

    .line 91
    .end local v16    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$flatMap":I
    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v1    # "$i$f$flatMap":I
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    .restart local v16    # "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 80
    nop

    .line 46
    .end local v1    # "$i$f$flatMap":I
    .end local v16    # "$this$flatMap$iv":Ljava/lang/Iterable;
    return-object v0
.end method

.method private final getOtherFileNamesToKeep()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    const-string v0, ".nomedia"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final tryDeleteLookFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 63
    nop

    .line 64
    :try_start_0
    invoke-static {p1}, Lorg/catrobat/catroid/io/StorageOperations;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    nop

    .line 67
    sget-object v1, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while deleting file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cleanup of unused LookFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 66
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 71
    return-void
.end method


# virtual methods
.method public final cleanUpUnusedLookFiles(Lorg/catrobat/catroid/content/Project;)V
    .locals 9
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-synchronized-LookFileGarbageCollector$cleanUpUnusedLookFiles$1":I
    :try_start_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    const-string v3, "project.sceneList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 78
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/Scene;

    .local v6, "scene":Lorg/catrobat/catroid/content/Scene;
    const/4 v7, 0x0

    .line 38
    .local v7, "$i$a$-forEach-LookFileGarbageCollector$cleanUpUnusedLookFiles$1$1":I
    const-string v8, "scene"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->getAllFileNamesToKeep(Lorg/catrobat/catroid/content/Scene;)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->deleteUnusedLookFiles(Lorg/catrobat/catroid/content/Scene;Ljava/util/List;)V

    .line 39
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v7    # "$i$a$-forEach-LookFileGarbageCollector$cleanUpUnusedLookFiles$1$1":I
    goto :goto_0

    .line 79
    :cond_0
    nop

    .line 40
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .end local v1    # "$i$a$-synchronized-LookFileGarbageCollector$cleanUpUnusedLookFiles$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    .line 41
    return-void

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
