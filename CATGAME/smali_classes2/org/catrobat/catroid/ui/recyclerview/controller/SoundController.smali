.class public final Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;
.super Ljava/lang/Object;
.source "SoundController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoundController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoundController.kt\norg/catrobat/catroid/ui/recyclerview/controller/SoundController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1819#2,2:128\n1819#2,2:130\n1819#2,2:132\n*E\n*S KotlinDebug\n*F\n+ 1 SoundController.kt\norg/catrobat/catroid/ui/recyclerview/controller/SoundController\n*L\n49#1,2:128\n78#1,2:130\n102#1,2:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J$\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ$\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bJ\u001a\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J$\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J$\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;",
        "",
        "()V",
        "uniqueNameProvider",
        "Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;",
        "compareByChecksum",
        "",
        "file1",
        "Ljava/io/File;",
        "file2",
        "copy",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        "soundToCopy",
        "dstScene",
        "Lorg/catrobat/catroid/content/Scene;",
        "dstSprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "delete",
        "",
        "soundToDelete",
        "findOrCopy",
        "getSoundDir",
        "scene",
        "pack",
        "soundToPack",
        "packForSprite",
        "unpack",
        "soundToUnpack",
        "unpackForSprite",
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
.field private final uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    return-void
.end method

.method private final compareByChecksum(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .line 119
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "checksum1":Ljava/lang/String;
    invoke-static {p2}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "checksum2":Ljava/lang/String;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 120
    .end local v0    # "checksum1":Ljava/lang/String;
    .end local v1    # "checksum2":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final getSoundDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;
    .locals 3
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 112
    new-instance v0, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "sounds"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final copy(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 4
    .param p1, "soundToCopy"    # Lorg/catrobat/catroid/common/SoundInfo;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    nop

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 40
    nop

    .line 42
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->getSoundDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;

    move-result-object v2

    .line 43
    .local v2, "dstDir":Ljava/io/File;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    :cond_2
    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "file":Ljava/io/File;
    new-instance v3, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-direct {v3, v0, v1}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v3
.end method

.method public final delete(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 1
    .param p1, "soundToDelete"    # Lorg/catrobat/catroid/common/SoundInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteFile(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method public final findOrCopy(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 8
    .param p1, "soundToCopy"    # Lorg/catrobat/catroid/common/SoundInfo;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/common/SoundInfo;

    .local v4, "it":Lorg/catrobat/catroid/common/SoundInfo;
    const/4 v5, 0x0

    .line 50
    .local v5, "$i$a$-forEach-SoundController$findOrCopy$1":I
    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->compareByChecksum(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    return-object v4

    .line 53
    :cond_1
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v5    # "$i$a$-forEach-SoundController$findOrCopy$1":I
    goto :goto_0

    .line 129
    :cond_2
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    goto :goto_2

    :cond_3
    nop

    .line 54
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->copy(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;

    move-result-object v0

    .line 55
    .local v0, "copiedSound":Lorg/catrobat/catroid/common/SoundInfo;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_4
    return-object v0
.end method

.method public final pack(Lorg/catrobat/catroid/common/SoundInfo;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 5
    .param p1, "soundToPack"    # Lorg/catrobat/catroid/common/SoundInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 67
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    const-string v4, "BackpackListManager.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedSounds()Ljava/util/List;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    nop

    .line 70
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    .line 71
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    .line 69
    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 73
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v2
.end method

.method public final packForSprite(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 9
    .param p1, "soundToPack"    # Lorg/catrobat/catroid/common/SoundInfo;
    .param p2, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/common/SoundInfo;

    .local v5, "it":Lorg/catrobat/catroid/common/SoundInfo;
    const/4 v6, 0x0

    .line 79
    .local v6, "$i$a$-forEach-SoundController$packForSprite$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v0

    :goto_1
    invoke-direct {p0, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->compareByChecksum(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    return-object v5

    .line 82
    :cond_1
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v6    # "$i$a$-forEach-SoundController$packForSprite$1":I
    goto :goto_0

    .line 131
    :cond_2
    nop

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    goto :goto_2

    :cond_3
    nop

    .line 83
    :goto_2
    nop

    .line 84
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 85
    :goto_3
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    .line 83
    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 87
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/common/SoundInfo;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    move-object v0, v2

    .line 88
    .local v0, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_6
    return-object v0
.end method

.method public final unpack(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 4
    .param p1, "soundToUnpack"    # Lorg/catrobat/catroid/common/SoundInfo;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    nop

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 94
    nop

    .line 96
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    :cond_2
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->getSoundDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 97
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v2
.end method

.method public final unpackForSprite(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 8
    .param p1, "soundToUnpack"    # Lorg/catrobat/catroid/common/SoundInfo;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/common/SoundInfo;

    .local v4, "it":Lorg/catrobat/catroid/common/SoundInfo;
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$a$-forEach-SoundController$unpackForSprite$1":I
    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->compareByChecksum(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    return-object v4

    .line 106
    :cond_1
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v5    # "$i$a$-forEach-SoundController$unpackForSprite$1":I
    goto :goto_0

    .line 133
    :cond_2
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    goto :goto_2

    :cond_3
    nop

    .line 107
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->unpack(Lorg/catrobat/catroid/common/SoundInfo;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/SoundInfo;

    move-result-object v0

    .line 108
    .local v0, "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    return-object v0
.end method
